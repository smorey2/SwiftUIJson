//
//  EmptyAnimatableData.swift
//  SwiftUIJson
//
//  Created by Sky Morey on 8/22/20.
//  Copyright © 2020 Sky Morey. All rights reserved.
//

import SwiftUI

extension EmptyAnimatableData: Codable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        switch try container.decode(String.self) {
        case "zero": self = .zero
        default:
            let context = DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Invalid")
            throw DecodingError.dataCorrupted(context)
        }
    }
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .zero: try container.encode("zero")
        default: fatalError()
        }
    }
}
