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
            view = s.label! == "view" ? s.value : fatalError(s.label!)
        }
    }
    public func encode(to encoder: Encoder) throws {
        let single = Mirror.single(reflecting: self, named: "storage")
        let storage = AnyViewStorageBase(single)
        try Root.encodeView(storage.view, to: encoder)
    }
}
