//
//  Font.swift
//  Glyph
//
//  Created by Sky Morey on 8/22/20.
//  Copyright © 2020 Sky Morey. All rights reserved.
//

import SwiftUI

extension Font: Codable {
    enum CodingKeys: CodingKey {
        case type
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let value: String
        do { value = try container.decode(String.self) }
        catch { value = "" }
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
        default:
            let anyFontBox = try container.decode(AnyFontBox.self)
            self = anyFontBox.apply()
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
        default:
            let anyFontBox = AnyFontBox(Mirror(reflecting: self).descendant("provider")!)
            try container.encode(anyFontBox)
        }
    }
    internal class AnyFontBox: Codable {
        let font: UIFont?
        let size: CGFloat?
        let fixedSize: CGFloat?
        let name: String?
        let textStyle: TextStyle?
        let design: Design?
        let weight: Weight?
        init(_ s: Any) {
            let mirror = Mirror.children(reflecting: Mirror(reflecting: s).descendant("base")!)
            if mirror["font"] != nil { font = (mirror["font"] as! UIFont); size = font!.pointSize }
            else { font = nil; size = mirror["size"] as? CGFloat }
            fixedSize = mirror["fixedSize"] as? CGFloat
            name = mirror["name"] as? String
            textStyle = mirror["textStyle"] as? TextStyle
            design = mirror["design"] as? Design
            weight = mirror["weight"] as? Weight
        }
        // MARK - Codable
        enum CodingKeys: CodingKey {
            case font, size, fixedSize, name, textStyle, design, weight
        }
        public required init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            if let fontName = try container.decodeIfPresent(String.self, forKey: .font) {
                let pointSize = try container.decode(CGFloat.self, forKey: .size)
                font = CTFontCreateWithName(fontName as CFString, pointSize, nil); size = pointSize
                //font = UIFont(name: fontName, size: pointSize) ?? UIFont.systemFont(ofSize: pointSize); size = pointSize
            }
            else { font = nil; size = try container.decodeIfPresent(CGFloat.self, forKey: .size) }
            fixedSize = try container.decodeIfPresent(CGFloat.self, forKey: .fixedSize)
            name = try container.decodeIfPresent(String.self, forKey: .name)
            textStyle = try container.decodeIfPresent(TextStyle.self, forKey: .textStyle)
            design = try container.decodeIfPresent(Design.self, forKey: .design)
            weight = try container.decodeIfPresent(Weight.self, forKey: .weight)
        }
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if let font = font { try container.encode(font.familyName, forKey: .font); try container.encode(font.pointSize, forKey: .size) }
            else { try container.encodeIfPresent(size, forKey: .size) }
            try container.encodeIfPresent(fixedSize, forKey: .name)
            try container.encodeIfPresent(name, forKey: .name)
            try container.encodeIfPresent(textStyle, forKey: .textStyle)
            try container.encodeIfPresent(design, forKey: .design)
            try container.encodeIfPresent(weight, forKey: .weight)
        }
        func apply() -> Font {
            if font != nil { return Font(font!) }
            else if name != nil {
                if textStyle != nil { return Font.custom(name!, size: size!, relativeTo: textStyle!) }
                else if size != nil { return Font.custom(name!, size: size!) }
                else if fixedSize != nil { return Font.custom(name!, fixedSize: fixedSize!) }
                else { fatalError() }
            }
            else if size != nil { return Font.system(size: size!, weight: weight ?? .regular, design: design ?? .default) }
            else { fatalError() }
        }
    }
}

extension Font.TextStyle: Codable {
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
        default: fatalError(value)
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
        default: fatalError()
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

extension Font.Leading: Codable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let value = try container.decode(String.self)
        switch value {
        case "standard": self = .standard
        case "tight": self = .tight
        case "loose": self = .loose
        default: fatalError(value)
        }
    }
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .standard: try container.encode("standard")
        case .tight: try container.encode("tight")
        case .loose: try container.encode("loose")
        default: fatalError()
        }
    }
}

extension Font.Design: Codable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let value = try container.decode(String.self)
        switch value {
        case "default": self = .default
        case "serif": self = .serif
        case "rounded": self = .rounded
        case "monospaced": self = .monospaced
        default: fatalError(value)
        }
    }
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .default: try container.encode("default")
        case .serif: try container.encode("serif")
        case .rounded: try container.encode("rounded")
        case .monospaced: try container.encode("monospaced")
        default: fatalError()
        }
    }
}

