//
//  View.swift
//
//  Created by Sky Morey on 8/22/20.
//  Copyright © 2020 Sky Morey. All rights reserved.
//

import SwiftUI

extension View {
    public func encode() throws -> Data? {
        print(type(of: self.body).self)
        guard let value = self.body as? Encodable else {
            return nil
        }
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        return try encoder.encode(Root(from: value))
    }
    
    //    public static func factory(json: Data) -> some View {
    //        let decoder = JSONDecoder()
    //        let root = try! decoder.decode(Root.self, from: json)
    //        return root.view as some View
    //    }
    
    public func dump() -> some View {
        guard let data = try! encode() else {
            print("Unable to encode view")
            return self
        }
        print(String(data: data, encoding: .utf8)!)
        return self
    }
}
