//
//  VStack.swift
//
//  Created by Sky Morey on 8/22/20.
//  Copyright © 2020 Sky Morey. All rights reserved.
//

import SwiftUI

extension VStack: Encodable where Content : View {
    public func encode(to encoder: Encoder) throws {
        let tree = Mirror.single(reflecting: self, named: "_tree").value
        //let mirror = [String: Any](reflecting: self)
    }
}
