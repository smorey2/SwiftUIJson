//
//  TypeManager.swift
//  Glyph
//
//  Created by Sky Morey on 8/22/20.
//  Copyright © 2020 Sky Morey. All rights reserved.
//

import SwiftUI

// https://www.raywenderlich.com/7181017-unsafe-swift-using-pointers-and-interacting-with-c

class TypeManager {
    enum CodingKeys: CodingKey {
        case type, inversion1, inversion2
    }
    
    enum TypeManagerError: Error {
        case moduleNotFound
        case typeNotFound
        case typeParseError
        case typeNameError(actual: String, expected: String)
        case typeNotCodable(named: String)
    }
    
    // MARK - Super

    public static func encodeSuper(to encoder: Encoder, for item: Any) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(typeName(forObj: item), forKey: .type)
    }

    public static func decodeSuper(to decoder: Decoder) throws -> Any {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let typeName = try container.decode(String.self, forKey: .type)
        guard let type = try typeParse(named: typeName) as? Decodable.Type else {
            throw TypeManagerError.typeNotCodable(named: typeName)
        }
        return try type.init(from: decoder)
    }

    // MARK - Known Type
    
    static var knownTypes = [String:Any.Type]()
    static var knownGenerics = [String:Any.Type]()
    
    public static func knownType<T>(_ type: T.Type) {
        let name = String(reflecting: type)
        knownTypes[name] = type
        let parts = name.components(separatedBy: "<")
        if parts.count > 1 {
            knownGenerics[parts[0]] = type
        }
    }
    
    // MARK - Type Parse
    
    public static func typeName(forObj obj: Any) -> String! {
        String(reflecting: type(of: obj).self).replacingOccurrences(of: " ", with: "")
    }
    
    public static func typeParse(named name: String) throws -> Any.Type {
        if let knownType = knownTypes[name] { return knownType }
        guard name.components(separatedBy: ".").count > 1 else { throw TypeManagerError.moduleNotFound }
        let tokens = typeParse(tokens: name)
        var knownType: Any.Type = String.self
        var knownName = ""
        var nameArray = [String]()
        var typeArray = [Any.Type]()
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
                    case "t": knownName = last.knownName; knownType = last.value as! Any.Type
                    case "(":
                        nameArray.insert(knownName, at: 0); nameArray.insert(last.op, at: 0); typeArray.insert(knownType, at: 0)
                        knownName = nameArray.joined()
                        stack.append(("t", try typeParse(knownName: knownName, tuple: typeArray), knownName))
                    case "<":
                        let generic = stack.removeLast(), genericName = generic.value as! String
                        nameArray.insert(knownName, at: 0); nameArray.insert(last.op, at: 0); nameArray.insert(genericName, at: 0); typeArray.insert(knownType, at: 0)
                        knownName = nameArray.joined()
                        stack.append(("t", try typeParse(knownName: knownName, genericName: genericName, types: typeArray), knownName))
                    default: fatalError()
                    }
                } while last.op != lastOp
            }
            else { stack.append((token.op, token.value, "")) }
        }
        guard stack.count == 1, let first = stack.first, first.op == "t" else {
            throw TypeManagerError.typeParseError
        }
        guard name == knownName else {
            throw TypeManagerError.typeNameError(actual: name, expected: knownName)
        }
        knownType = first.value as! Any.Type
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
    
    static func typeParse(knownName: String) throws -> Any.Type {
        if let knownType = knownTypes[knownName] { return knownType }
        throw TypeManagerError.typeNotFound
    }
    
    static func typeParse(knownName: String, tuple: [Any.Type]) throws -> Any.Type {
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
        knownTypes[knownName] = type
        return knownTypes[knownName]!
    }

    static func typeParse(knownName: String, genericName: String, types: [Any.Type]) throws -> Any.Type {
        if let knownType = knownTypes[knownName] { return knownType }
        guard let type = knownGenerics[genericName] else { throw TypeManagerError.typeNotFound }
        knownTypes[knownName] = type
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
