//
//  VStack.swift
//
//  Created by Sky Morey on 8/22/20.
//  Copyright © 2020 Sky Morey. All rights reserved.
//

import SwiftUI

extension VStack: Codable where Content : View, Content : Codable {
    enum CodingKeys: CodingKey {
        case root, content
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let root = try container.decode(_VStackLayout.self, forKey: .root)
        let content = try container.decode(Content.self, forKey: .content)
//        let content = TupleView((Text("A"), Text("B"))) as! Content
        self.init(alignment: root.alignment, spacing: root.spacing) { content }
    }
    public func encode(to encoder: Encoder) throws {
        let tree = Mirror.single(reflecting: self, named: "_tree").value as! _VariadicView.Tree<_VStackLayout, Content>
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(tree.root, forKey: .root)
        try container.encode(tree.content, forKey: .content)
    }
}

extension HorizontalAlignment: Codable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        switch try container.decode(String.self) {
        case "leading": self = .leading
        case "center": self = .center
        case "trailing": self = .trailing
        default:
            let context = DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Invalid")
            throw DecodingError.dataCorrupted(context)
        }
    }
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .leading: try container.encode("leading")
        case .center: try container.encode("center")
        case .trailing: try container.encode("trailing")
        default: fatalError()
        }
    }
}

extension _VStackLayout: Codable {
    enum CodingKeys: CodingKey {
        case spacing, alignment
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let spacing = try container.decodeIfPresent(CGFloat.self, forKey: .spacing)
        let alignment = try container.decode(HorizontalAlignment.self, forKey: .alignment)
        self.init(alignment: alignment, spacing: spacing)
    }
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.spacing, forKey: .spacing)
        try container.encode(self.alignment, forKey: .alignment)
    }
}
