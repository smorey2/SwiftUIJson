//
//  JsonContext.swift
//  SwiftUIJson
//
//  Created by Sky Morey on 9/10/20.
//  Copyright © 2020 Sky Morey. All rights reserved.
//

import SwiftUI

// https://swiftrocks.com/weak-dictionary-values-in-swift

public class JsonContext: Codable {
    // MARK - Static

    static var cachedContexts = NSMapTable<NSString, JsonContext>.init(
        keyOptions: .copyIn,
        valueOptions: .weakMemory
    )

    public static func remove(_ index: Any) {
        let key = String(reflecting: index) as NSString
        cachedContexts.removeObject(forKey: key)
    }
    
    public static subscript(index: Any) -> JsonContext {
        let key = String(reflecting: index) as NSString
        guard let context = cachedContexts.object(forKey: key) else {
            let newContext = JsonContext() //; print("context: [\(key)]")
            cachedContexts.setObject(newContext, forKey: key)
            return newContext
        }
        return context
    }
    
    // MARK - Instance
    
    struct JsonSlot: Codable {
        public let key: String
        public let value: Any
        // MARK - Codable
        enum CodingKeys: CodingKey {
            case key, type, `default`
        }
        public init(key: String, value: Any) {
            self.key = key
            self.value = value
        }
        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            key = try container.decode(String.self, forKey: .key)
            let dynaType = try DynaType.typeParse(named: try container.decode(String.self, forKey: .type))
            let baseDecoder = try container.superDecoder(forKey: .default)
            self.value = try baseDecoder.decodeDynaSuper(for: dynaType)
        }
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(key, forKey: .key)
            try container.encode(DynaType.typeName(for: value), forKey: .type)
            guard let value = value as? Encodable else { fatalError() }
            let baseEncoder = container.superEncoder(forKey: .default)
            try value.encode(to: baseEncoder)
        }
    }
    
    public var isEmpty: Bool { slots.isEmpty }
    var slots: [Int:JsonSlot]
    
    // MARK - Codable
    public init() {
        slots = [Int:JsonSlot]()
    }
    public required init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        slots = try container.decode([Int:JsonSlot].self)
    }
    public func encode(to encoder: Encoder) throws {
        var container = encoder.unkeyedContainer()
        try container.encode(slots)

    }
    
    // MARK - Variable
    public func `var`(_ value: Bool, forKey key: String? = nil) -> Bool {
        let id = slots.count, keyName = key ?? "@\(id)"
        slots[id] = JsonSlot(key: keyName, value: value)
        return false
    }
    
    public func `var`(_ value: String, forKey key: String? = nil) -> String {
        let id = slots.count, keyName = key ?? "\(-id)"
        slots[id] = JsonSlot(key: keyName, value: value)
        return "#\(keyName)#"
    }
    
    public func `var`(_ value: Double, forKey key: String? = nil) -> Double {
        let id = slots.count, keyName = key ?? "@\(id)"
        slots[id] = JsonSlot(key: keyName, value: value)
        return Double(-id)
    }
    
    public func `var`(_ value: Float, forKey key: String? = nil) -> Float {
        let id = slots.count, keyName = key ?? "@\(id)"
        slots[id] = JsonSlot(key: keyName, value: value)
        return Float(-id)
    }
    
    public func `var`(_ value: Int, forKey key: String? = nil) -> Int {
        let id = slots.count, keyName = key ?? "@\(id)"
        slots[id] = JsonSlot(key: keyName, value: value)
        return Int(-id)
    }
    
    public func `var`(_ value: Int8, forKey key: String? = nil) -> Int8 {
        let id = slots.count, keyName = key ?? "@\(id)"
        slots[id] = JsonSlot(key: keyName, value: value)
        return Int8(-id)
    }
    
    public func `var`(_ value: Int16, forKey key: String? = nil) -> Int16 {
        let id = slots.count, keyName = key ?? "@\(id)"
        slots[id] = JsonSlot(key: keyName, value: value)
        return Int16(-id)
    }
    
    public func `var`(_ value: Int32, forKey key: String? = nil) -> Int32 {
        let id = slots.count, keyName = key ?? "@\(id)"
        slots[id] = JsonSlot(key: keyName, value: value)
        return Int32(-id)
    }
    
    public func `var`(_ value: Int64, forKey key: String? = nil) -> Int64 {
        let id = slots.count, keyName = key ?? "@\(id)"
        slots[id] = JsonSlot(key: keyName, value: value)
        return Int64(-id)
    }
    
    public func `var`(_ value: UInt, forKey key: String? = nil) -> UInt {
        let id = slots.count, keyName = key ?? "@\(id)"
        slots[id] = JsonSlot(key: keyName, value: value)
        return UInt(-id)
    }
    
    public func `var`(_ value: UInt8, forKey key: String? = nil) -> UInt8 {
        let id = slots.count, keyName = key ?? "@\(id)"
        slots[id] = JsonSlot(key: keyName, value: value)
        return UInt8(-id)
    }
    
    public func `var`(_ value: UInt16, forKey key: String? = nil) -> UInt16 {
        let id = slots.count, keyName = key ?? "@\(id)"
        slots[id] = JsonSlot(key: keyName, value: value)
        return UInt16(-id)
    }
    
    public func `var`(_ value: UInt32, forKey key: String? = nil) -> UInt32 {
        let id = slots.count, keyName = key ?? "@\(id)"
        slots[id] = JsonSlot(key: keyName, value: value)
        return UInt32(-id)
    }
    
    public func `var`(_ value: UInt64, forKey key: String? = nil) -> UInt64 {
        let id = slots.count, keyName = key ?? "@\(id)"
        slots[id] = JsonSlot(key: keyName, value: value)
        return UInt64(-id)
    }
}
