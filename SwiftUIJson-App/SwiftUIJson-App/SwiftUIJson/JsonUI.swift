//
//  JsonUI.swift
//
//  Created by Sky Morey on 8/22/20.
//  Copyright © 2020 Sky Morey. All rights reserved.
//

import SwiftUI

public struct JsonUI: Codable {
    private let value: Encodable?
    public let body: Any?
    
    public init(json: Data) {
        let decoder = JSONDecoder()
        self = try! decoder.decode(JsonUI.self, from: json)
    }
    private init(from encoder: Encodable) {
        value = encoder
        body = nil
    }

    static func encode(view: Any) throws -> Data? {
        guard let value = view as? Encodable else {
            return nil
        }
        let root = JsonUI(from: value)
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        return try encoder.encode(root)
    }
    static func encode(anyView: Any, to encoder: Encoder) throws {
        guard let anyView = anyView as? Encodable else {
            print("encode:anyView")
            return
        }
        try encoder.superInit(for: anyView)
        try anyView.encode(to: encoder)
    }
    
    // Mark - Codable
    public init(from decoder: Decoder) throws {
        value = nil
        body = try decoder.superInit()
//        body = Text("Test")
    }
    public func encode(to encoder: Encoder) throws {
        guard let value = value else {
            fatalError()
        }
        try encoder.superInit(for: value)
        try value.encode(to: encoder)
    }
}

extension View {
    func dump() -> some View {
        guard let data = try! JsonUI.encode(view: self.body) else {
            print("Unable to encode view")
            return self
        }
        print(String(data: data, encoding: .utf8)!)
        return self
    }
}