//
//  SwiftUIExtensions.swift
//  Glyph
//
//  Created by Sky Morey on 8/22/20.
//  Copyright © 2020 Sky Morey. All rights reserved.
//

import Foundation
import SwiftUI

//extension ZStack: Codable {
//    public func encode(to encoder: Encoder) throws {
//    }
//    public init(from decoder: Decoder) throws {
//        self.init { () -> View in
//            return Text("")
//        }
//    }
//}


//extension GeometryReader: Codable {
//    public func encode(to encoder: Encoder) throws {
//    }
//    public init(from decoder: Decoder) throws {
//        content = { proxy in
//            Content
//        }
//    }
//}

// MARK: Text

extension Text: Codable {
    public func encode(to encoder: Encoder) throws {
    }
    public init(from decoder: Decoder) throws {
        self.init("Test")
//        let container = try decoder.singleValueContainer()
//        let dictionary = try container.decode([String : Double].self)
//
//        values = dictionary.map { key, value in
//            ExchangeRate(currency: Currency(key), rate: value)
//        }
    }
}
	
extension TextField
{
}

extension SecureField
{
}

// [Beta]
//extension TextEditor
//{
//}


// MARK: Images

extension Image: Encodable
{
    public func encode(to encoder: Encoder) throws {
        
    }
}

// MARK: Buttons

extension Button
{
}

// [Deprecated]
//extension MenuButton
//{
//}

extension EditButton
{
}

// [Unavailable]
//extension PasteButton
//{
//}

// [Beta]
//extension SignInWithAppleButton
//{
//}

// [Beta]
//extension Menu
//{
//}


// MARK: Value Selectors

extension Toggle
{
}

extension Picker
{
}

extension DatePicker
{
}

extension Slider
{
}

extension Stepper
{
}

// [Beta]
//extension ColorPicker
//{
//}


// MARK: Value Indicators

// [Beta]
//extension ProgressView
//{
//}

// [Beta]
//extension Gauge
//{
//}

// [Beta]
//extension Label
//{
//}
    
// [Beta]
//extension Link
//{
//}

    
// MARK: Fonts and Localization

extension Font
{
}

// [Beta]
//extension ScaledMetric
//{
//}
    
extension LocalizedStringKey
{
}
