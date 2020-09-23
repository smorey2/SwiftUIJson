//
//  AnyView.swift
//
//  Created by Sky Morey on 8/22/20.
//  Copyright © 2020 Sky Morey. All rights reserved.
//

import SwiftUI

extension AnyView: Encodable {
    internal class AnyViewStorageBase {
        let view: Any
        init(_ s: Mirror.Child) {
            view = Mirror.single(reflecting: s.value, named: "view").value
        }
    }
    public func encode(to encoder: Encoder) throws {
        let single = Mirror.single(reflecting: self, named: "storage")
        let storage = AnyViewStorageBase(single)
        try JsonUI.encode(anyView: storage.view, to: encoder)
    }
}
