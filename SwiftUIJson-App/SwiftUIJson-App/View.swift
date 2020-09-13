//
//  SwiftUIExtensions.swift
//  Glyph
//
//  Created by Sky Morey on 8/22/20.
//  Copyright © 2020 Sky Morey. All rights reserved.
//

import Foundation
import SwiftUI

// https://developer.apple.com/documentation/swiftui/views-and-controls

//class SwiftUISerdes {
//    static func EncodeRecurse() {
//    }
//}

struct Root: Codable {
    let value: Codable
    
    public func encode(to encoder: Encoder) throws {
    }
    public init(value: Codable) throws {
        self.value = value
    }
    public init(from decoder: Decoder) throws {
        value = Text("T")
    }
}

extension View {
    public func Dump() -> some View {
        guard let value = self.body as? Codable else {
            print("Unable to encode view")
            return self
        }
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        let data = try! encoder.encode(Root(value: value))
        print(String(data: data, encoding: .utf8)!)
        return self
    }
}
