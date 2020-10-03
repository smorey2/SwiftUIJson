//
//  DataType.swift
//  Glyph
//
//  Created by Sky Morey on 8/22/20.
//  Copyright © 2020 Sky Morey. All rights reserved.
//

import Foundation

// https://www.raywenderlich.com/7181017-unsafe-swift-using-pointers-and-interacting-with-c

extension AnyHashable: DynaCodable {
    public init(from decoder: Decoder, for dynaType: DynaType) throws {
        guard let value = try decoder.decodeDynaSuper(for: dynaType) as? AnyHashable else { fatalError("decodeAnyView") }
        self = value
    }
    public func encode(to encoder: Encoder) throws {
//        let single = Mirror(reflecting: self).descendant("storage")!
//        let storage = AnyViewStorageBase(single)
//        guard let value = storage.view as? Encodable else { fatalError("encodeAnyView") }
//        try encoder.encodeDynaSuper(for: value)
//        try value.encode(to: encoder)
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
    
    // MARK - Known Type
    
    static var knownTypes = [String:DynaType]()
    static var knownGenerics = [String:Any.Type]()
    
    public static func knownType<T>(_ type: T.Type) {
        let name = String(reflecting: type)
        knownTypes[name] = .type(type, name)
        let parts = name.components(separatedBy: "<")
        if parts.count > 1 {
            knownGenerics[parts[0]] = type
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
        case 1: type = (JsonView).Type.self
        case 2: type = (JsonView, JsonView).Type.self
        case 3: type = (JsonView, JsonView, JsonView).Type.self
        case 4: type = (JsonView, JsonView, JsonView, JsonView).Type.self
        case 5: type = (JsonView, JsonView, JsonView, JsonView, JsonView).Type.self
        case 6: type = (JsonView, JsonView, JsonView, JsonView, JsonView, JsonView).Type.self
        case 7: type = (JsonView, JsonView, JsonView, JsonView, JsonView, JsonView, JsonView).Type.self
        case 8: type = (JsonView, JsonView, JsonView, JsonView, JsonView, JsonView, JsonView, JsonView).Type.self
        case 9: type = (JsonView, JsonView, JsonView, JsonView, JsonView, JsonView, JsonView, JsonView, JsonView).Type.self
        case 10: type = (JsonView, JsonView, JsonView, JsonView, JsonView, JsonView, JsonView, JsonView, JsonView, JsonView).Type.self
        default: fatalError()
        }
        knownTypes[knownName] = .tuple(type, knownName, tuple)
        return knownTypes[knownName]!
    }

    static func typeParse(knownName: String, genericName: String, generic: [DynaType]) throws -> DynaType {
        if let knownType = knownTypes[knownName] { return knownType }
        guard let type = knownGenerics[genericName] else { throw DynaTypeError.typeNotFound }
        knownTypes[knownName] = .generic(type, knownName, generic)
        return knownTypes[knownName]!
    }
    
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
