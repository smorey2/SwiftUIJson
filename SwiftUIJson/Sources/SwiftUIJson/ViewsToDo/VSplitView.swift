//
//  VSplitView.swift
//
//  Created by Sky Morey on 8/22/20.
//  Copyright © 2020 Sky Morey. All rights reserved.
//

import SwiftUI

@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension VSplitView: JsonView {
    public var anyView: AnyView { AnyView(self) }
}

@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension VSplitView: Encodable where Content : View {
    public func encode(to encoder: Encoder) throws {
    }
}
