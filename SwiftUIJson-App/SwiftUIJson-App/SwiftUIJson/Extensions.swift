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
    static func className(forObj obj: Any) -> String! {
"SwiftUIJson_App.SampleView"
//        String(reflecting: type(of: obj).self)
    }
    
//    static func typeFromString(_ typeName: String) -> AnyClass! {
//        guard let type = main.classNamed(typeName) else { //NSClassFromString(typeName)
//            fatalError("\(typeName) not found")
//        }
//        return type
//    }
    
    enum ClassLoadError: Error {
        case moduleNotFound
        case classNotFound
        case invalidClassType(loaded: String, expected: String)
    }
    
//    func `class`<T>(ofType type: T.Type, named name: String? = nil) throws -> T.Type {
//        let name = name ?? String(reflecting: type.self)
//        guard name.components(separatedBy: ".").count > 1 else { throw ClassLoadError.moduleNotFound }
//        guard let loadedClass = classNamed(name) else { throw ClassLoadError.classNotFound }
////        return loadedClass
//        guard let castedClass = loadedClass as? T.Type else { throw ClassLoadError.invalidClassType(loaded: name, expected: String(describing: type)) }
//        return castedClass
//    }

    func object<T>(ofType type: T.Type, named name: String) throws -> T.Type {
        for i in Bundle.main. {
            print(i)
        }
        
        guard name.components(separatedBy: ".").count > 1 else { throw ClassLoadError.moduleNotFound }
        guard let loadedClass = classNamed(name) else { throw ClassLoadError.classNotFound }
        guard let castedClass = loadedClass as? T.Type else { throw ClassLoadError.invalidClassType(loaded: name, expected: String(describing: type)) }
        return castedClass
    }
}

extension Encoder {
    func superInit(for item: Any) throws {
        var container = self.container(keyedBy: SuperInitCodingKeys.self)
        try container.encode(Bundle.className(forObj: item), forKey: ._type)
    }
}

extension Decoder {
    func superInit() throws -> Any {
        let container = try self.container(keyedBy: SuperInitCodingKeys.self)
        let type = try Bundle.main.object(ofType: Decodable.self, named: try container.decode(String.self, forKey: ._type)) as! Decodable.Type
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
