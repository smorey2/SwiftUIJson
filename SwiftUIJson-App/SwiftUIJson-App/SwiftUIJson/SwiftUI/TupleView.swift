//
//  TupleView.swift
//
//  Created by Sky Morey on 8/22/20.
//  Copyright © 2020 Sky Morey. All rights reserved.
//

import SwiftUI

extension TupleView: Codable {
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        var items = [Any]()
        while !container.isAtEnd {
            let baseDecoder = try container.superDecoder()
            let item = try Text.init(from: baseDecoder)
            items.append(item)
        }
        let t = items.withUnsafeBytes {
             $0.bindMemory(to: T.self)[0]
        }
        self.init(t)
    }
    public func encode(to encoder: Encoder) throws {
        var container = encoder.unkeyedContainer()
        for value in Mirror.values(reflecting: value) {
            guard let value = value as? Encodable else {
                continue
            }
            let baseEncoder = container.superEncoder()
            try value.encode(to: baseEncoder)
        }
    }
}
