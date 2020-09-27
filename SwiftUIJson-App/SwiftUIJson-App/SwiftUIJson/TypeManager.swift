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
    
    enum TypeParseError: Error {
        case moduleNotFound
        case typeNotFound
        case typeParseError
        case typeNameError(actual: String, expected: String)
    }
    
    public static func typeName(forObj obj: Any) -> String! {
        String(reflecting: type(of: obj).self).replacingOccurrences(of: " ", with: "")
    }
    
    public static func typeParse(named name: String) throws -> Any.Type {
        if let knownType = knownTypes[name] { return knownType }
        guard name.components(separatedBy: ".").count > 1 else { throw TypeParseError.moduleNotFound }
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
            throw TypeParseError.typeParseError
        }
        guard name == knownName else {
            throw TypeParseError.typeNameError(actual: name, expected: knownName)
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
        throw TypeParseError.typeNotFound
    }
    
    static func typeParse(knownName: String, tuple: [Any.Type]) throws -> Any.Type {
        if let knownType = knownTypes[knownName] { return knownType }

        var type: Any.Type
        switch tuple.count {
        case 2: type = typeTuple(tuple[0] as! Text.Type, tuple[1] as! Text.Type)
        case 3: type = typeTuple(tuple[0] as! Text.Type, tuple[1] as! Text.Type, tuple[2] as! Text.Type)
        default: fatalError()
        }
        knownTypes[knownName] = type
        
        return knownTypes[knownName]!
    }
    static func typeTuple<T1, T2>(_ t1: T1.Type, _ t2: T2.Type) -> Any.Type { type(of: (defaultValue(t1), defaultValue(t2))).self }
    static func typeTuple<T1, T2, T3>(_ t1: T1.Type, _ t2: T2.Type, _ t3: T3.Type) -> Any.Type { type(of: (defaultValue(t1), defaultValue(t2), defaultValue(t3))).self }

    
    static func typeParse(knownName: String, genericName: String, types: [Any.Type]) throws -> Any.Type {
        if let knownType = knownTypes[knownName] { return knownType }
        knownTypes[knownName] = String.self
        return knownTypes[knownName]!
    }
    
    static func defaultValue<T>(_ t: T.Type) -> T {
        let ptr = UnsafeMutablePointer<T>.allocate(capacity: 1)
        let val = ptr.withMemoryRebound(to: T.self, capacity: 1) { $0[0] }
        defer { ptr.deallocate() }
        return val
    }
    
//    static func defaultValue<T>(_ t: T.Type) -> T {
//        let ptr = UnsafeMutableRawPointer.allocate(
//            byteCount: MemoryLayout<T>.size,
//            alignment: MemoryLayout<T>.alignment)
//        let val = ptr.bindMemory(to: T.self, capacity: 1)[0]
//        defer { ptr.deallocate() }
//        return val
//    }

}
