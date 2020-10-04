//
//  DataType.swift
//  Glyph
//
//  Created by Sky Morey on 8/22/20.
//  Copyright © 2020 Sky Morey. All rights reserved.
//

import Foundation

extension AnyHashable: DynaCodable {
    public init(from decoder: Decoder, for dynaType: DynaType) throws {
        guard let value = try decoder.decodeDynaSuper(for: dynaType, index: 0) as? AnyHashable else { fatalError("AnyHashable") }
        self = value
    }
    public func encode(to encoder: Encoder) throws {
        fatalError("AnyHashable")
    }
}

enum DynaTypeError: Error {
    case moduleNotFound
    case typeNotFound
    case typeParseError
    case typeNameError(actual: String, expected: String)
    case typeNotCodable(named: String)
}

public enum DynaType {
    case type(_ type: Any.Type, _ name: String)
    case tuple(_ type: Any.Type, _ name: String, _ components: [DynaType])
    case generic(_ type: Any.Type, _ name: String, _ components: [DynaType])
    
    public subscript(index: Int) -> DynaType {
        guard index > -1 else { return self }
        switch self {
        case .tuple(_, _, let componets), .generic(_, _, let componets): return componets[index]
        default: return self
        }
    }

    // MARK - Known Type
    
    static var knownTypes = [String:DynaType]()
    static var knownGenerics = [String:Any.Type]()
    
    public static func knownType<T>(_ type: T.Type) {
        let knownName = String(reflecting: type)
        knownTypes[knownName] = .type(type, knownName)
        let parts = knownName.components(separatedBy: "<")
        if parts.count > 1 {
            knownGenerics[parts[0]] = type
            if knownName.contains("(") {
                let commas = knownName.components(separatedBy: ",").count
                knownGenerics["\(parts[0]):\(commas)"] = type
            }
        }
    }
    
    // MARK - Type Parse
    
    public static func typeName(for obj: Any) -> String! {
        String(reflecting: Swift.type(of: obj).self).replacingOccurrences(of: " ", with: "")
    }
    
    public static func typeParse(named name: String) throws -> DynaType {
        if let knownType = knownTypes[name] { return knownType }
        guard name.components(separatedBy: ".").count > 1 else { throw DynaTypeError.moduleNotFound }
        let tokens = typeParse(tokens: name)
        var knownType: DynaType = .type(Never.self, "Never")
        var knownName: String = ""
        var nameArray = [String]()
        var typeArray = [DynaType]()
        var stack = [(op: String, value: Any, knownName: String)]()
        for token in tokens {
            if token.op == ")" || token.op == ">" {
                var last: (op: String, value: Any, knownName: String)
                let lastOp = token.op == ")" ? "(" : token.op == ">" ? "<" : ""
                nameArray.removeAll(); nameArray.append(token.op); typeArray.removeAll()
                repeat {
                    last = stack.removeLast()
                    switch last.op {
                    case ",": nameArray.insert(knownName, at: 0); nameArray.insert(last.op, at: 0); typeArray.insert(knownType, at: 0)
                    case "n": knownName = last.value as! String; knownType = try typeParse(knownName: knownName)
                    case "t": knownName = last.knownName; knownType = last.value as! DynaType
                    case "(":
                        nameArray.insert(knownName, at: 0); nameArray.insert(last.op, at: 0); typeArray.insert(knownType, at: 0)
                        knownName = nameArray.joined()
                        stack.append(("t", try typeParse(knownName: knownName, tuple: typeArray), knownName))
                    case "<":
                        let generic = stack.removeLast(), genericName = generic.value as! String
                        nameArray.insert(knownName, at: 0); nameArray.insert(last.op, at: 0); nameArray.insert(genericName, at: 0); typeArray.insert(knownType, at: 0)
                        knownName = nameArray.joined()
                        stack.append(("t", try typeParse(knownName: knownName, genericName: genericName, generic: typeArray), knownName))
                    default: fatalError()
                    }
                } while last.op != lastOp
            }
            else { stack.append((token.op, token.value, "")) }
        }
        guard stack.count == 1, let first = stack.first, first.op == "t" else {
            throw DynaTypeError.typeParseError
        }
        guard name == knownName else {
            throw DynaTypeError.typeNameError(actual: name, expected: knownName)
        }
        knownType = first.value as! DynaType
        knownTypes[name] = knownType
        return knownType
    }
    
    static func typeParse(tokens raw: String) -> [(op: String, value: String)] {
        let breaks = ["<", "(", ",", ")", ">"]
        let name = raw.replacingOccurrences(of: " ", with: "")
        var tokens = [(op: String, value: String)]()
        var nameidx = name.startIndex
        while let idx = name[nameidx...].firstIndex(where: { breaks.contains(String($0)) }) {
            if nameidx != idx {
                tokens.append((op: "n", value: String(name[nameidx...name.index(idx, offsetBy: -1)])))
            }
            tokens.append((op: String(name[idx]), value: ""))
            nameidx = name.index(idx, offsetBy: 1)
        }
        if tokens.isEmpty {
            tokens.append((op: "n", value: name))
        }
        return tokens
    }
    
    static func typeParse(knownName: String) throws -> DynaType {
        if let knownType = knownTypes[knownName] { return knownType }
        throw DynaTypeError.typeNotFound
    }
    
    static func typeParse(knownName: String, tuple: [DynaType]) throws -> DynaType {
        if let knownType = knownTypes[knownName] { return knownType }
        var type: Any.Type
        switch tuple.count {
        case 01: type = (JsonView).Type.self
        case 02: type = (JsonView, JsonView).Type.self
        case 03: type = (JsonView, JsonView, JsonView).Type.self
        case 04: type = (JsonView, JsonView, JsonView, JsonView).Type.self
        case 05: type = (JsonView, JsonView, JsonView, JsonView, JsonView).Type.self
        case 06: type = (JsonView, JsonView, JsonView, JsonView, JsonView, JsonView).Type.self
        case 07: type = (JsonView, JsonView, JsonView, JsonView, JsonView, JsonView, JsonView).Type.self
        case 08: type = (JsonView, JsonView, JsonView, JsonView, JsonView, JsonView, JsonView, JsonView).Type.self
        case 09: type = (JsonView, JsonView, JsonView, JsonView, JsonView, JsonView, JsonView, JsonView, JsonView).Type.self
        case 10: type = (JsonView, JsonView, JsonView, JsonView, JsonView, JsonView, JsonView, JsonView, JsonView, JsonView).Type.self
        default: fatalError()
        }
        knownTypes[knownName] = .tuple(type, knownName, tuple)
        return knownTypes[knownName]!
    }
    
    static func typeBuild<Element>(_ dataType: DynaType, for s: [Element]) -> Any {
        switch s.count {
        case 01: return (JsonAnyView(s[0] as! JsonView))
        case 02: return (JsonAnyView(s[0] as! JsonView), JsonAnyView(s[1] as! JsonView))
        case 03: return (JsonAnyView(s[0] as! JsonView), JsonAnyView(s[1] as! JsonView), JsonAnyView(s[2] as! JsonView))
        case 04: return (JsonAnyView(s[0] as! JsonView), JsonAnyView(s[1] as! JsonView), JsonAnyView(s[2] as! JsonView), JsonAnyView(s[3] as! JsonView))
        case 05: return (JsonAnyView(s[0] as! JsonView), JsonAnyView(s[1] as! JsonView), JsonAnyView(s[2] as! JsonView), JsonAnyView(s[3] as! JsonView), JsonAnyView(s[4] as! JsonView))
        case 06: return (JsonAnyView(s[0] as! JsonView), JsonAnyView(s[1] as! JsonView), JsonAnyView(s[2] as! JsonView), JsonAnyView(s[3] as! JsonView), JsonAnyView(s[4] as! JsonView),
                        JsonAnyView(s[5] as! JsonView))
        case 07: return (JsonAnyView(s[0] as! JsonView), JsonAnyView(s[1] as! JsonView), JsonAnyView(s[2] as! JsonView), JsonAnyView(s[3] as! JsonView), JsonAnyView(s[4] as! JsonView),
                        JsonAnyView(s[5] as! JsonView), JsonAnyView(s[6] as! JsonView))
        case 08: return (JsonAnyView(s[0] as! JsonView), JsonAnyView(s[1] as! JsonView), JsonAnyView(s[2] as! JsonView), JsonAnyView(s[3] as! JsonView), JsonAnyView(s[4] as! JsonView),
                        JsonAnyView(s[5] as! JsonView), JsonAnyView(s[6] as! JsonView), JsonAnyView(s[7] as! JsonView))
        case 09: return (JsonAnyView(s[0] as! JsonView), JsonAnyView(s[1] as! JsonView), JsonAnyView(s[2] as! JsonView), JsonAnyView(s[3] as! JsonView), JsonAnyView(s[4] as! JsonView),
                        JsonAnyView(s[5] as! JsonView), JsonAnyView(s[6] as! JsonView), JsonAnyView(s[7] as! JsonView), JsonAnyView(s[8] as! JsonView))
        case 10: return (JsonAnyView(s[0] as! JsonView), JsonAnyView(s[1] as! JsonView), JsonAnyView(s[2] as! JsonView), JsonAnyView(s[3] as! JsonView), JsonAnyView(s[4] as! JsonView),
                         JsonAnyView(s[5] as! JsonView), JsonAnyView(s[6] as! JsonView), JsonAnyView(s[7] as! JsonView), JsonAnyView(s[8] as! JsonView), JsonAnyView(s[9] as! JsonView))
        default: fatalError()
        }
    }
    
    static func typeParse(knownName: String, genericName: String, generic: [DynaType]) throws -> DynaType {
        if let knownType = knownTypes[knownName] { return knownType }
        let commas = knownName.components(separatedBy: ",").count
        guard let type = knownGenerics["\(genericName):\(commas)"] ?? knownGenerics[genericName] else { throw DynaTypeError.typeNotFound }
        knownTypes[knownName] = .generic(type, knownName, generic)
        return knownTypes[knownName]!
    }
    
    //    public func typeBind<T, Element>(to type: T.Type, for source: [Element]) -> T {
    //        let abc = T.self
    //        switch self {
    //        case .type:
    //            return source.withUnsafeBytes { $0.bindMemory(to: T.self)[0] }
    //        case .tuple(let type, _, let componets):
    //            return source.withUnsafeBytes { $0.bindMemory(to: T.self)[0] }
    //        case .generic(let type, _, let componets):
    //            return source.withUnsafeBytes { $0.bindMemory(to: T.self)[0] }
    //        }
    //    }
        
    
    //    static func typeTuple<T1, T2>(_ t1: T1.Type, _ t2: T2.Type) -> Any.Type { type(of: (defaultValue(t1), defaultValue(t2))).self }
    //    static func typeTuple<T1, T2, T3>(_ t1: T1.Type, _ t2: T2.Type, _ t3: T3.Type) -> Any.Type { type(of: (defaultValue(t1), defaultValue(t2), defaultValue(t3))).self }
    //    static func defaultValue<T>(_ t: T.Type) -> T {
    //        let ptr = UnsafeMutablePointer<T>.allocate(capacity: 1)
    //        let val = ptr.withMemoryRebound(to: T.self, capacity: 1) { $0[0] }
    //        defer { ptr.deallocate() }
    //        return val
    //    }
    //
    //    static func defaultValue<T>(_ t: T.Type) -> T {
    //        let ptr = UnsafeMutableRawPointer.allocate(
    //            byteCount: MemoryLayout<T>.size,
    //            alignment: MemoryLayout<T>.alignment)
    //        let val = ptr.bindMemory(to: T.self, capacity: 1)[0]
    //        defer { ptr.deallocate() }
    //        return val
    //    }
}