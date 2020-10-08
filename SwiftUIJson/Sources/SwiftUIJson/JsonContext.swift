//
//  JsonContext.swift
//  SwiftUIJson
//
//  Created by Sky Morey on 9/10/20.
//  Copyright © 2020 Sky Morey. All rights reserved.
//

import SwiftUI

public class JsonContext: Codable {
    struct JsonSlot: Codable {
        public let key: String
        public let value: Encodable
        // MARK - Codable
        enum CodingKeys: CodingKey {
            case key, type, value
        }
        public init(key: String, value: Encodable) {
            self.key = key
            self.value = value
        }
        public init(from decoder: Decoder) throws {
            fatalError()
//            let container = try decoder.container(keyedBy: CodingKeys.self)
//            key = try container.decode(String.self, forKey: .key)
//            key = try container.decode(String.self, forKey: .type)
//            value.encode(to: <#T##Encoder#>)
//            value = try container.decode(Codable.self, forKey: .value)
        }
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(key, forKey: .key)
            try value.encode(to: container.superEncoder(forKey: .value))
        }
    }
    static var contexts = [ObjectIdentifier:JsonContext]()
    var slots: [Int:JsonSlot]
    
    public static subscript(index: AnyObject) -> JsonContext {
        let id = ObjectIdentifier(index)
        guard let context = contexts[id] else {
            let newContext = JsonContext()
            contexts[id] = newContext
            return newContext
        }
        return context
    }
    
    // MARK - Codable
    public init() {
        slots = [Int:JsonSlot]()
    }
    public required init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        let slots = try container.decode([Int:JsonSlot].self)
        fatalError()
        //self.init(slots)
//        var slots = [Int:JsonSlot]()
//        while !container.isAtEnd {
//            let baseDecoder = try container.superDecoder()
//            let slot = try baseDecoder.decodeDynaSuper()
//            slots.append(slot)
//        }
        //self.init(slot)
    }
    public func encode(to encoder: Encoder) throws {
        var container = encoder.unkeyedContainer()
        slots[0] = JsonSlot(key: "0", value: "0")
        slots[1] = JsonSlot(key: "1", value: "1")
        slots[2] = JsonSlot(key: "2", value: "2")
        try container.encode(slots)
//        for slot in slots {
//            guard let slot = slot as? Encodable else { continue }
//            let baseEncoder = container.superEncoder()
//            try baseEncoder.encodeSuper(for: slot)
//        }
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
