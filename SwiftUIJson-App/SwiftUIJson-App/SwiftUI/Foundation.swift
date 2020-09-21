//
//  Foundation.swift
//  Glyph
//
//  Created by Sky Morey on 8/22/20.
//  Copyright © 2020 Sky Morey. All rights reserved.
//

import SwiftUI



extension Font: Codable {
    enum CodingKeys: CodingKey {
        case fontName, pointSize
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let fontName = try container.decode(String.self, forKey: .fontName) as CFString
        let pointSize = try container.decode(CGFloat.self, forKey: .pointSize)
        let font = CTFontCreateWithName(fontName, pointSize, nil)
        self.init(font)
    }
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode("SFProText-Regular", forKey: .fontName)
        try container.encode(16.0, forKey: .pointSize)
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

extension Bundle: Encodable {
    enum CodingKeys: CodingKey {
        case bundlePath
    }
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.bundlePath, forKey: .bundlePath)
    }
    
    public static func decodeValue(_ value: String) -> Bundle? { Bundle.init(path: value) }
}

extension LocalizedStringKey {
    var encodeValue: String {
        let mirror = [String: Any](reflecting: self)
        return mirror["key"] as! String
    }
    public static func decodeValue(_ value: String) -> LocalizedStringKey { LocalizedStringKey(value) }
}
