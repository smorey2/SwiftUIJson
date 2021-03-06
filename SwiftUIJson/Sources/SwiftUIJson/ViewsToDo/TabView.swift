//
//  TabView.swift
//
//  Created by Sky Morey on 8/22/20.
//  Copyright © 2020 Sky Morey. All rights reserved.
//

import SwiftUI

@available(iOS 13.0, OSX 10.15, tvOS 13.0, *)
@available(watchOS, unavailable)
extension TabView: Encodable where SelectionValue : Hashable, Content : View {
    public func encode(to encoder: Encoder) throws {
    }
}
