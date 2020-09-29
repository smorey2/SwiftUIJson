//
//  AnyView.swift
//
//  Created by Sky Morey on 8/22/20.
//  Copyright © 2020 Sky Morey. All rights reserved.
//

import SwiftUI

extension AnyView: Codable {
    internal class AnyViewStorageBase {
        let view: Any
        init(_ s: Mirror.Child) {
            view = Mirror.single(reflecting: s.value, named: "view").value
        }
    }
    public init(from decoder: Decoder) throws {
        self.init()
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        let root = try container.decode(_VStackLayout.self, forKey: .root)
//        let content = try container.decode(Content.self, forKey: .content)
////        let content = TupleView((Text("A"), Text("B"))) as! Content
//        self.init(alignment: root.alignment, spacing: root.spacing) { content }
    }
    public func encode(to encoder: Encoder) throws {
        let single = Mirror.single(reflecting: self, named: "storage")
        let storage = AnyViewStorageBase(single)
        try JsonUI.encode(anyView: storage.view, to: encoder)
    }
}
