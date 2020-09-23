//
//  Extensions.swift
//  Glyph
//
//  Created by Sky Morey on 8/22/20.
//  Copyright © 2020 Sky Morey. All rights reserved.
//

import SwiftUI

enum SuperInitCodingKeys: CodingKey {
    case _type
}

extension Bundle {
    static func stringFromType(_ obj: Any) -> String! {
        //let namespace = Bundle.main.infoDictionary!["CFBundleExecutable"] as! String
        String(reflecting: type(of: obj).self)
    }
    
    static func typeFromString(_ typeName: String) -> AnyClass! {
        guard let type = NSClassFromString(typeName) else {
            fatalError("\(typeName) not found")
        }
        return type
    }
}

extension Encoder {
    func superInit(for item: Any) throws {
        var container = self.container(keyedBy: SuperInitCodingKeys.self)
        try container.encode(Bundle.stringFromType(item), forKey: ._type)
    }
}

extension Decoder {
    func superInit() throws -> Any {
        let container = try self.container(keyedBy: SuperInitCodingKeys.self)
        let type = Bundle.typeFromString(try container.decode(String.self, forKey: ._type)) as! Decodable.Type
        return try type.init(from: self)
    }
}

extension KeyedEncodingContainer where K : CodingKey {
    public mutating func encodeKey(forKey key: KeyedEncodingContainer<K>.Key) throws {
        try encode("1", forKey: key)
    }
    public mutating func encodeOptional<T>(_ value: T, forKey key: KeyedEncodingContainer<K>.Key) throws where T : Encodable {
        try encode(value, forKey: key)
    }
}

extension KeyedDecodingContainer where K : CodingKey {
    public func decodeKey<T>(_ type: T.Type, forKey key: KeyedDecodingContainer<K>.Key) throws -> T where T : Decodable {
        try decode(type, forKey: key)
    }

    public func decodeKeyIfPresent<T>(_ type: T.Type, forKey key: KeyedDecodingContainer<K>.Key) throws -> T? where T : Decodable {
        try decodeIfPresent(type, forKey: key)
    }

    public func decodeOptional<T>(_ type: T.Type, forKey key: KeyedDecodingContainer<K>.Key) throws -> T where T : Decodable {
        try decode(type, forKey: key)
    }

    public func decodeOptionalIfPresent<T>(_ type: T.Type, forKey key: KeyedDecodingContainer<K>.Key) throws -> T? where T : Decodable {
        try decodeIfPresent(type, forKey: key)
    }
}

extension Mirror {
    static func values(reflecting: Any) -> [Any] {
        Mirror(reflecting: reflecting).children.map({ $0.value })
    }
    static func children(reflecting: Any) -> [String:Any] {
        Mirror(reflecting: reflecting).children.reduce(into: [String:Any]()) { $0[$1.label!] = $1.value }
    }
    static func single(reflecting: Any, named: String? = nil) -> Mirror.Child {
        let children = Mirror(reflecting: reflecting).children
        guard children.count == 1, let first = children.first, named == nil || first.label == named else {
            fatalError("single")
        }
        return first
    }
}

extension Dictionary where Key == String, Value:Any {
    func child(named: String) -> Mirror.Child {
        Mirror(reflecting: self[named]!).children.first!
    }
    func children(named: String) -> Mirror.Children {
        Mirror(reflecting: self[named]!).children
    }
}