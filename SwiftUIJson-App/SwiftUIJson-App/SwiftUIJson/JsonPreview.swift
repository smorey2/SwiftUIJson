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

    /// The json preview's content.
    public let content2: AnyView
    
    /// The json preview's data.
    public var data: Data
    
    public init(@ViewBuilder content: () -> Content) {
        self.content = content()
        do {
            let missing = "\(type(of: self.content).self) Not Codeable".data(using: .utf8)!
            data = try JsonUI.encode(view: self.content.body) ?? missing
        }
        catch {
            data = error.localizedDescription.data(using: .utf8)!
        }
        guard let body = JsonUI(json: data).body else {
            data = "Not Decodeable".data(using: .utf8)!
            content2 = AnyView(self.content)
            return
        }
        content2 = AnyView(Text("Here")) //AnyView(body as View)
    }
            
    public var body: some View {
        GeometryReader { geometry in
            VStack {
                HStack {
                    content
                        .frame(width: geometry.size.width / 2, height: geometry.size.height * 0.7)
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(Color.black, lineWidth: 4)
                        )
                    content2
                        .frame(width: geometry.size.width / 2, height: geometry.size.height * 0.7)
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
                .frame(width: geometry.size.width, height: geometry.size.height * 0.3 - 10)
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