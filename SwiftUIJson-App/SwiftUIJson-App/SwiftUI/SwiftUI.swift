//
//  SwiftUIExtensions.swift
//  SwiftUI.swift
//
//  Created by Sky Morey on 8/22/20.
//  Copyright © 2020 Sky Morey. All rights reserved.
//

// https://gist.github.com/Cosmo/8349dc9957e8e27ae3d3bd0ffe43a250
// https://www.raywenderlich.com/3418439-encoding-and-decoding-in-swift

import SwiftUI
import Combine

struct Root: Codable {
    let value: Encodable?
    let view: Any?
    
    public init(from encoder: Encodable) {
        value = encoder
        view = nil
    }
    public init(from decoder: Decoder) throws {
        value = nil
        view = Text("Test")
    }
    
    public func encode(to encoder: Encoder) throws {
        try value!.encode(to: encoder)
    }
    
    public static func encodeView(_ view: Any, to encoder: Encoder) throws {
        guard let value = view as? Encodable else {
            return
        }
        try value.encode(to: encoder)
    }
}

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

@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension _PullDownButton: Encodable where Label : View, Content : View {
    public func encode(to encoder: Encoder) throws {
    }
}

@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension _PullDownButtonContainer: Encodable where Label : View {
    public func encode(to encoder: Encoder) throws {
    }
}

extension Toggle: Encodable where Label : View {
    public func encode(to encoder: Encoder) throws {
    }
}

@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension _PullDownButtonValue: Encodable where Style : _PullDownButtonStyle, Label : View {
    public func encode(to encoder: Encoder) throws {
    }
}

extension SubscriptionView: Encodable where PublisherType : Combine.Publisher, Content : View, PublisherType.Failure == Never {
    public func encode(to encoder: Encoder) throws {
    }
}

extension ModifiedContent: Encodable where Content : View, Modifier : ViewModifier {
    public func encode(to encoder: Encoder) throws {
    }
}

@available(iOS 13.0, OSX 10.15, tvOS 13.0, *)
@available(watchOS, unavailable)
extension NavigationView: Encodable where Content : View {
    public func encode(to encoder: Encoder) throws {
    }
}

extension _ScrollableLayoutView: Encodable where Data : RandomAccessCollection, Layout : _ScrollableLayout, Data.Element : View, Data.Index : Hashable {
    public func encode(to encoder: Encoder) throws {
    }
}

@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension MenuButton: Encodable where Label : View, Content : View {
    public func encode(to encoder: Encoder) throws {
    }
}

extension EquatableView: Encodable where Content : Equatable, Content : View {
    public func encode(to encoder: Encoder) throws {
    }
}

@available(iOS 13.0, OSX 10.15, watchOS 6.0, *)
@available(tvOS, unavailable)
extension ContextMenu: Encodable where MenuItems : View {
    public func encode(to encoder: Encoder) throws {
    }
}

@available(iOS 13.0, *)
@available(OSX, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension EditButton: Encodable {
    public func encode(to encoder: Encoder) throws {
    }
}


@available(iOS 13.0, OSX 10.15, tvOS 13.0, *)
@available(watchOS, unavailable)
extension _DisclosureIndicator: Encodable {
    public func encode(to encoder: Encoder) throws {
    }
}

extension _BackgroundModifier: Encodable where Background : View {
    public func encode(to encoder: Encoder) throws {
    }
}

extension SecureField: Encodable where Label : View {
    public func encode(to encoder: Encoder) throws {
    }
}

extension _VariadicView.Tree: Encodable where Root : _VariadicView_ViewRoot, Content : View {
    public func encode(to encoder: Encoder) throws {
    }
}

@available(iOS 13.0, OSX 10.15, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension Stepper: Encodable where Label : View {
    public func encode(to encoder: Encoder) throws {
    }
}

@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
extension _WKStoryboardContent: Encodable {
    public func encode(to encoder: Encoder) throws {
    }
}

@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension PasteButton: Encodable {
    public func encode(to encoder: Encoder) throws {
    }
}


@available(iOS 13.0, OSX 10.15, watchOS 6.0, *)
@available(tvOS, unavailable)
extension Slider: Encodable where Label : View, ValueLabel : View {
    public func encode(to encoder: Encoder) throws {
    }
}

@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension GroupBox: Encodable where Label : View, Content : View {
    public func encode(to encoder: Encoder) throws {
    }
}

extension TextField: Encodable where Label : View {
    public func encode(to encoder: Encoder) throws {
    }
}

extension _ScrollView: Encodable where Provider : _ScrollableContentProvider {
    public func encode(to encoder: Encoder) throws {
    }
}

extension _AligningContentProvider: Encodable where Content : View {
    public func encode(to encoder: Encoder) throws {
    }
}

extension _PagingView: Encodable where Views : RandomAccessCollection, Views.Element : View, Views.Index : Hashable {
    public func encode(to encoder: Encoder) throws {
    }
}

extension NavigationLink: Encodable where Label : View, Destination : View {
    public func encode(to encoder: Encoder) throws {
    }
}

extension List: Encodable where SelectionValue : Hashable, Content : View {
    public func encode(to encoder: Encoder) throws {
    }
}

extension Section: Encodable where Parent : View, Content : View, Footer : View {
    public func encode(to encoder: Encoder) throws {
    }
}

extension _VariadicView_Children: Encodable {
    public func encode(to encoder: Encoder) throws {
    }
}

@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension HSplitView: Encodable where Content : View {
    public func encode(to encoder: Encoder) throws {
    }
}

@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension VSplitView: Encodable where Content : View {
    public func encode(to encoder: Encoder) throws {
    }
}

extension GeometryReader: Encodable where Content : View {
    public func encode(to encoder: Encoder) throws {
    }
}


@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension TouchBar: Encodable where Content : View {
    public func encode(to encoder: Encoder) throws {
    }
}

@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension _TouchBarModifier: Encodable where Content : View {
    public func encode(to encoder: Encoder) throws {
    }
}

extension __ScaleToFitView: Encodable where V : View {
    public func encode(to encoder: Encoder) throws {
    }
}

extension VStack: Encodable where Content : View {
    public func encode(to encoder: Encoder) throws {
    }
}

extension AnyView: Encodable {
    internal class AnyViewStorageBase {
        let view: Any
        init(_ s: Mirror.Child) {
            view = s.label! == "view" ? s.value : fatalError(s.label!)
        }
    }
    public func encode(to encoder: Encoder) throws {
        let mirror = [String: Any](reflecting: self)
        let storage = AnyViewStorageBase(mirror.childNamed("storage"))
        try Root.encodeView(storage.view, to: encoder)
    }
}

extension Divider: Encodable {
    public func encode(to encoder: Encoder) throws {
    }
}

extension ScrollView: Encodable where Content : View {
    public func encode(to encoder: Encoder) throws {
    }
}


@available(iOS 13.0, OSX 10.15, tvOS 13.0, *)
@available(watchOS, unavailable)
extension TabView: Encodable where SelectionValue : Hashable, Content : View {
    public func encode(to encoder: Encoder) throws {
    }
}

extension ForEach: Encodable where Content : View {
    public func encode(to encoder: Encoder) throws {
    }
}

extension _DelayedPreferenceView: Encodable where Key : PreferenceKey, Content : View {
    public func encode(to encoder: Encoder) throws {
    }
}

extension Text: Codable {
    @frozen internal enum Storage  {
        case verbatim(String)
        case anyTextStorage(AnyTextStorage)
        init(_ s: Mirror.Child) {
            switch s.label! {
            case "verbatim": self = .verbatim(s.value as! String)
            case "anyTextStorage": self = .anyTextStorage(AnyTextStorage(s.value))
            default: fatalError(s.label!)
            }
        }
    }
    @frozen internal enum Modifier: Codable {
        case color(Color?)
        case font(Font?)
        case italic
        case weight(Font.Weight?)
        case kerning(CoreGraphics.CGFloat)
        case tracking(CoreGraphics.CGFloat)
        case baseline(CoreGraphics.CGFloat)
        case rounded
        case anyTextModifier(AnyTextModifier)
        init(_ s: Mirror.Child) {
            let mirror = [String: Any](reflecting: s.value).first!
            switch mirror.key {
            case "color": self = .color(mirror.value as? Color)
            case "font": self = .font(mirror.value as? Font)
            case "italic": self = .italic
            case "weight": self = .weight(mirror.value as? Font.Weight)
            case "kerning": self = .kerning(mirror.value as! CoreGraphics.CGFloat)
            case "tracking": self = .tracking(mirror.value as! CoreGraphics.CGFloat)
            case "baseline": self = .baseline(mirror.value as! CoreGraphics.CGFloat)
            case "rounded": self = .rounded
            case "anyTextModifier": self = .anyTextModifier(AnyTextModifier(mirror.value))
            default: fatalError(mirror.key)
            }
        }
        // MARK - Codable
        enum CodingKeys: CodingKey {
            case color, font, italic, weight, kerning, tracking, baseline, rounded, anyTextModifier
        }
        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            if container.contains(.color) { self = .color(try container.decodeOptional(Color.self, forKey: .color)) }
            else if container.contains(.font) { self = .font(try container.decodeOptional(Font.self, forKey: .font)) }
            else if container.contains(.italic) { self = .italic }
            else if container.contains(.weight) { self = .weight(try container.decodeOptional(Font.Weight.self, forKey: .weight)) }
            else if container.contains(.kerning) { self = .kerning(try container.decode(CoreGraphics.CGFloat.self, forKey: .kerning)) }
            else if container.contains(.tracking) { self = .tracking(try container.decode(CoreGraphics.CGFloat.self, forKey: .tracking)) }
            else if container.contains(.baseline) { self = .baseline(try container.decode(CoreGraphics.CGFloat.self, forKey: .baseline)) }
            else if container.contains(.rounded) { self = .rounded }
            else if container.contains(.anyTextModifier) { self = .anyTextModifier(try container.decode(AnyTextModifier.self, forKey: .anyTextModifier)) }
            else {
                let context = DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Invalid Text!")
                throw DecodingError.dataCorrupted(context)
            }
        }
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            switch self {
            case .color(let value): try container.encodeOptional(value, forKey: .color)
            case .font(let value): try container.encodeOptional(value, forKey: .font)
            case .italic: try container.encodeKey(forKey: .italic)
            case .weight(let value): try container.encodeOptional(value, forKey: .weight)
            case .kerning(let value): try container.encode(value, forKey: .kerning)
            case .tracking(let value): try container.encode(value, forKey: .tracking)
            case .baseline(let value): try container.encode(value, forKey: .baseline)
            case .rounded: try container.encodeKey(forKey: .rounded)
            case .anyTextModifier(let value): try container.encode(value, forKey: .anyTextModifier)
            }
        }
    }
    internal class AnyTextStorage: Codable {
        let key: LocalizedStringKey
        let table: String?
        let bundle: Bundle?
        init(_ s: Any) {
            let mirror = [String: Any](reflecting: s)
            self.key = mirror["key"] as! LocalizedStringKey
            self.table = mirror["table"] as? String
            self.bundle = mirror["bundle"] as? Bundle
        }
        // MARK - Codable
        enum CodingKeys: CodingKey {
            case text, table, bundle
        }
        public required init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            key = LocalizedStringKey(try container.decode(String.self, forKey: .text))
            table = try container.decodeIfPresent(String.self, forKey: .table)
            bundle = container.contains(.bundle) ? Bundle() : nil
            //        bundle = container.contains(.bundle) ? Bundle.encode(<#T##self: Bundle##Bundle#>) : nil
        }
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(key.encodeValue, forKey: .text)
            try container.encodeIfPresent(table, forKey: .table)
            try container.encodeIfPresent(bundle, forKey: .bundle)
            //            let context = EncodingError.Context(codingPath: encoder.codingPath, debugDescription: "Invalid employee!")
            //            throw EncodingError.invalidValue(self, context)
        }
    }
    
    internal class AnyTextModifier: Codable {
        init(_ s: Any) {
            fatalError("AnyTextModifier")
            //let mirror = [String: Any](reflecting: s)
        }
        // MARK - Codable
        enum CodingKeys: CodingKey {
            case text
        }
        public required init(from decoder: Decoder) throws {
        }
        public func encode(to encoder: Encoder) throws {
        }
    }
    
    // MARK - Codable
    enum CodingKeys: CodingKey {
        case verbatim, text, anyText, modifiers
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        if container.contains(.verbatim) { self = Text(verbatim: try container.decode(String.self, forKey: .verbatim)) }
        else if container.contains(.text) { self = Text(try container.decode(String.self, forKey: .text)) }
        else if container.contains(.anyText) {
            let anyText = try container.decode(AnyTextStorage.self, forKey: .anyText)
            self = Text(anyText.key, tableName: anyText.table, bundle: anyText.bundle, comment: nil)
        }
        else {
            let context = DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Invalid Text!")
            throw DecodingError.dataCorrupted(context)
        }
    }
    public func encode(to encoder: Encoder) throws {
        let mirror = [String: Any](reflecting: self)
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        let storage = Storage(mirror.childNamed("storage"))
        switch storage {
        case .verbatim(let text): try container.encode(text, forKey: .verbatim)
        case .anyTextStorage(let anyText):
            if anyText.table == nil && anyText.bundle == nil {
                try container.encode(anyText.key.encodeValue, forKey: .text)
                break
            }
            try container.encode(anyText, forKey: .anyText)
        }
        
        let modifiers = mirror.childrenNamed("modifiers").map { Modifier($0) }
        try container.encode(modifiers, forKey: .modifiers)
    }
}

extension _SymmetricallyScaledText: Encodable {
    public func encode(to encoder: Encoder) throws {
    }
}

extension _ShapeView: Encodable where Content : Shape, Style : ShapeStyle {
    public func encode(to encoder: Encoder) throws {
    }
}

extension _PreferenceReadingView: Encodable where Key : PreferenceKey, Content : View {
    public func encode(to encoder: Encoder) throws {
    }
}

extension HStack: Encodable where Content : View {
    public func encode(to encoder: Encoder) throws {
    }
}

extension ZStack: Encodable where Content : View {
    public func encode(to encoder: Encoder) throws {
    }
}

extension _DetachedView: Encodable where Detached : _Detachable, Content : View, Child : View {
    public func encode(to encoder: Encoder) throws {
    }
}

extension _DetachedPlaceholder: Encodable where Detached : _Detachable {
    public func encode(to encoder: Encoder) throws {
    }
}

extension Group: Encodable where Content : View {
    public func encode(to encoder: Encoder) throws {
    }
}

extension _TextFieldStyleLabel: Encodable {
    public func encode(to encoder: Encoder) throws {
    }
}

@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension _ResolvedPopUpButton: Encodable {
    public func encode(to encoder: Encoder) throws {
    }
}

extension _MaskEffect: Encodable where Mask : View {
    public func encode(to encoder: Encoder) throws {
    }
}

extension Never: Encodable {
    public func encode(to encoder: Encoder) throws {
    }
}

extension _UnaryViewAdaptor: Encodable where Content : View {
    public func encode(to encoder: Encoder) throws {
    }
}

extension Form: Encodable where Content : View {
    public func encode(to encoder: Encoder) throws {
    }
}

extension Button: Encodable where Label : View {
    public func encode(to encoder: Encoder) throws {
    }
}

extension Picker: Encodable where Label : View, SelectionValue : Hashable, Content : View {
    public func encode(to encoder: Encoder) throws {
    }
}

extension _ScrollViewRoot: Encodable where P : _ScrollableContentProvider {
    public func encode(to encoder: Encoder) throws {
    }
}

extension _ConditionalContent: Encodable where TrueContent : View, FalseContent : View {
    public func encode(to encoder: Encoder) throws {
    }
}

@available(iOS 13.0, OSX 10.15, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension DatePicker: Encodable where Label : View {
    public func encode(to encoder: Encoder) throws {
    }
}

@available(iOS 13.0, tvOS 13.0, *)
@available(OSX, unavailable)
@available(watchOS, unavailable)
extension _UIHostingView: Encodable where Content : View {
    public func encode(to encoder: Encoder) throws {
        fatalError("_UIHostingView")
    }
}

@available(iOS 13.0, tvOS 13.0, *)
@available(OSX, unavailable)
@available(watchOS, unavailable)
extension UIHostingController: Encodable where Content : View {
    public func encode(to encoder: Encoder) throws {
        fatalError("UIHostingView")
    }
}

extension Color: Codable {
    enum CodingKeys: CodingKey {
        case colorSpace, cgColor
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let colorSpace = try container.decode(String.self, forKey: .colorSpace) as CFString
        let components = try container.decode([CGFloat].self, forKey: .cgColor)
        self.init(CGColor(colorSpace: CGColorSpace(name: colorSpace)!, components: components)!)
    }
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        guard let cgColor = self.cgColor else {
            fatalError("Color")
        }
        try container.encode(cgColor.colorSpace?.name.debugDescription, forKey: .colorSpace)
        try container.encode(cgColor.components, forKey: .cgColor)
    }
}

//extension Image: Encodable {
//    public func encode(to encoder: Encoder) throws {
//    }
//}

extension EmptyView: Encodable {
    public func encode(to encoder: Encoder) throws {
    }
}

@available(iOS 13.0, OSX 10.15, tvOS 13.0, *)
@available(watchOS, unavailable)
extension _NavigationViewStyleConfiguration.Content: Encodable {
    public func encode(to encoder: Encoder) throws {
    }
}

extension TupleView: Encodable {
    public func encode(to encoder: Encoder) throws {
    }
}
  
extension _ViewModifier_Content: Encodable {
    public func encode(to encoder: Encoder) throws {
    }
}

extension Spacer: Encodable {
    public func encode(to encoder: Encoder) throws {
    }
}
  
extension _HSpacer: Encodable {
    public func encode(to encoder: Encoder) throws {
    }
}
  
extension _VSpacer : Encodable {
    public func encode(to encoder: Encoder) throws {
    }
}

//@available(iOS 13.0, tvOS 13.0, *)
//@available(OSX, unavailable)
//@available(watchOS, unavailable)
//extension UIViewRepresentable: Encodable where Self.Body == Never {
//    public func encode(to encoder: Encoder) throws {
//    }
//}

//@available(iOS 13.0, tvOS 13.0, *)
//@available(OSX, unavailable)
//@available(watchOS, unavailable)
//extension UIViewControllerRepresentable: Encodable where Self.Body == Never {
//    public func encode(to encoder: Encoder) throws {
//    }
//}
