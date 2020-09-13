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


extension AnyView: Encodable
{
    public func encode(to encoder: Encoder) throws {
        let mirror = Mirror(reflecting: self)
        for child in mirror.children {
            print("name:", child.label ?? "{nil}")
            print("value:", child.value)
        }
    }
}

extension View {
    public func Dump() -> some View {
        guard let value = self.body as? AnyView else {
            print("Unable to encode view")
            return self
        }
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        let data = try! encoder.encode(value)
        print(String(data: data, encoding: .utf8)!)
        return self
    }
}
