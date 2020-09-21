//
//  Font.swift
//  Glyph
//
//  Created by Sky Morey on 8/22/20.
//  Copyright © 2020 Sky Morey. All rights reserved.
//

import SwiftUI

extension Font: Codable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let value = try container.decode(String.self)
        switch value {
        case "largeTitle": self = .largeTitle
        case "title": self = .title
        case "title2": self = .title2
        case "title3": self = .title3
        case "headline": self = .headline
        case "subheadline": self = .subheadline
        case "body": self = .body
        case "callout": self = .callout
        case "footnote": self = .footnote
        case "caption": self = .caption
        case "caption2": self = .caption2
//        case "system": self = .system
        default:
//            let fontName = try container.decode(String.self, forKey: .fontName) as CFString
//            let pointSize = try container.decode(CGFloat.self, forKey: .pointSize)
//            let font = CTFontCreateWithName(fontName, pointSize, nil)
//            self.init(font)
            fatalError(value)
        }
    }
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .largeTitle: try container.encode("largeTitle")
        case .title: try container.encode("title")
        case .title2: try container.encode("title2")
        case .title3: try container.encode("title3")
        case .headline: try container.encode("headline")
        case .subheadline: try container.encode("subheadline")
        case .body: try container.encode("body")
        case .callout: try container.encode("callout")
        case .footnote: try container.encode("footnote")
        case .caption: try container.encode("caption")
        case .caption2: try container.encode("caption2")
//        case .system: try container.encode("system")
        default:
//            try container.encode("SFProText-Regular", forKey: .fontName)
//            try container.encode(16.0, forKey: .pointSize)
            fatalError()
        }
    }
}

extension Font.Weight: Codable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let value = try container.decode(String.self)
        switch value {
        case "ultraLight": self = .ultraLight
        case "thin": self = .thin
        case "light": self = .light
        case "regular": self = .regular
        case "medium": self = .medium
        case "semibold": self = .semibold
        case "bold": self = .bold
        case "heavy": self = .heavy
        case "black": self = .black
        default: fatalError(value)
        }
    }
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .ultraLight: try container.encode("ultraLight")
        case .thin: try container.encode("thin")
        case .light: try container.encode("light")
        case .regular: try container.encode("regular")
        case .medium: try container.encode("medium")
        case .semibold: try container.encode("semibold")
        case .bold: try container.encode("bold")
        case .heavy: try container.encode("heavy")
        case .black: try container.encode("black")
        default: fatalError()
        }
    }
}
