//
//  Root.swift
//
//  Created by Sky Morey on 8/22/20.
//  Copyright © 2020 Sky Morey. All rights reserved.
//

import SwiftUI

struct Root: Codable {
    let value: Encodable?
    let view: Any?
    
    public init(from encoder: Encodable) {
        value = encoder
        view = nil
    }
    public init(from decoder: Decoder) throws {
        value = nil
        view = Text("Test")
    }
    
    public func encode(to encoder: Encoder) throws {
        try value!.encode(to: encoder)
    }
    
    public static func encodeView(_ view: Any, to encoder: Encoder) throws {
        guard let value = view as? Encodable else {
            return
        }
        try value.encode(to: encoder)
    }
}
