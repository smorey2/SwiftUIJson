//
//  JsonDebugView.swift
//  SwiftUIJson-App
//
//  Created by Sky Morey on 9/10/20.
//  Copyright © 2020 Sky Morey. All rights reserved.
//

import SwiftUI

public struct JsonPreview<Content>: View where Content: View {
    
    /// The json preview's content.
    public let content: Content

    /// The json preview's data.
    public let data: Data
    
    public init(@ViewBuilder content: () -> Content) {
        self.content = content()
        
        do {
            data = try self.content.encode() ?? "None".data(using: .utf8)!
        }
        catch {
            data = error.localizedDescription.data(using: .utf8)!
        }
    }
            
    public var body: some View {
        GeometryReader { geometry in
            VStack {
                HStack {
                    content
                        .frame(width: geometry.size.width / 2, height: geometry.size.height * 0.8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(Color.black, lineWidth: 4)
                        )
                    content
                        .frame(width: geometry.size.width / 2, height: geometry.size.height * 0.8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(Color.black, lineWidth: 4)
                        )
                }
                Spacer()
                ScrollView {
                    HStack {
                        Text(String(data: data, encoding: .utf8)!)
                        Spacer()
                    }
                    .padding()
                }
                .frame(width: geometry.size.width, height: geometry.size.height * 0.2 - 10)
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color.black, lineWidth: 4)
                )
            }
        }
        .padding()
    }
}

struct JsonDebugView_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            SampleView()
        }
    }
}
