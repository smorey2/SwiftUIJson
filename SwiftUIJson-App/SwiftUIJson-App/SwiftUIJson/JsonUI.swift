//
//  JsonUI.swift
//
//  Created by Sky Morey on 8/22/20.
//  Copyright © 2020 Sky Morey. All rights reserved.
//

// https://github.com/Cosmo/OpenSwiftUI
import SwiftUI

public struct JsonUI: Codable {
    public let body: Any?
    public var anyView: AnyView? {
        guard let obj = body as? JsonView else { return nil }
        return obj.anyView
    }
    
    public init(from json: Data) throws {
        let _ = JsonUI.registered
        let decoder = JSONDecoder()
        self = try decoder.decode(JsonUI.self, from: json)
    }
    private init(to encoder: Encodable) {
        let _ = JsonUI.registered
        body = encoder
    }

    static func encode(view: Any) throws -> Data? {
        guard let value = view as? Encodable else {
            return nil
        }
        let root = JsonUI(to: value)
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        return try encoder.encode(root)
    }
    
    // Mark - AnyView
    static func decodeAnyView(from decoder: Decoder) throws -> AnyView {
        return AnyView(Text("HERE"))
//        print(decoder.codingPath.debugDescription)
//
//        let typeName = try TypeManager.decodeSuperName(from: decoder)
//        let parts = typeName.components(separatedBy: "<")
//        if parts.count != 1 {
//            fatalError()
//        }
//
//        var body: Any
//        switch parts[0] {
//        case "TupleView": body = try TypeManager.decodeSuper(from: decoder, for: TupleView<AnyObject>.self)
//        default: fatalError()
//        }
//
//        guard let obj = body as? JsonView else { fatalError() }
//        return obj.anyView
    }
    
    static func encodeAnyView(to encoder: Encoder, for view: Any) throws {
        guard let view = view as? Encodable else {
            print("encode:anyView")
            return
        }
        try TypeManager.encodeSuper(to: encoder, for: view)
        try view.encode(to: encoder)
    }
    
    // Mark - Codable
    public init(from decoder: Decoder) throws {
        body = try TypeManager.decodeSuper(from: decoder)
        //body = Text("kjlakdsfjsakljf")
    }
    public func encode(to encoder: Encoder) throws {
        guard let value = body as? Encodable else {
            fatalError()
        }
        try TypeManager.encodeSuper(to: encoder, for: value)
        try value.encode(to: encoder)
    }
    
    // MARK - Register
    public static let registered: Bool = registerDefault()
    
    public static func register<T>(_ type: T.Type) {
        TypeManager.knownType(type)
    }
    
    public static func registerDefault() -> Bool {
        registerDefault_all()
        #if os(macOS)
        registerDefault_OSX()
        registerDefault_OSX_iOS_tvOS()
        #elseif os(iOS)
        registerDefault_iOS()
        registerDefault_OSX_iOS_tvOS()
        #elseif os(tvOS)
        registerDefault_tvOS()
        registerDefault_OSX_iOS_tvOS()
        #elseif os(watchOS)
        registerDefault_watchOS()
        #endif
        return true
    }
    
    static func registerDefault_all() {
        register(Button<AnyView>.self)
        register(Color.self)
        register(ContextMenu<AnyView>.self)
        register(DatePicker<AnyView>.self)
        register(Divider.self)
        register(EditButton.self)
        register(EmptyView.self)
//        register(EquatableView<AnyObject>.self)
//        register(ForEach<AnyRandomAccessCollection, AnyHashable, AnyView>.self)
        register(Form<AnyView>.self)
        register(GeometryReader<AnyView>.self)
        register(Group<AnyView>.self)
        register(GroupBox<AnyView, AnyView>.self)
        register(HStack<AnyView>.self)
        register(Image.self)
        register(List<AnyHashable, AnyView>.self)
        register(ModifiedContent<AnyView, AnyObject>.self)
        register(NavigationLink<AnyView, AnyView>.self)
        register(NavigationView<AnyView>.self)
        register(Never.self)
        register(Picker<AnyView, AnyHashable, AnyView>.self)
        register(ScrollView<AnyView>.self)
        register(Section<AnyView, AnyView, AnyView>.self)
        register(SecureField<AnyView>.self)
        register(Slider<AnyView, AnyView>.self)
        register(Spacer.self)
//        register(SubscriptionView<AnyPublisherType, AnyView>.self)
        register(Text.self)
        register(TextField<AnyView>.self)
        register(Toggle<AnyView>.self)
        register(TupleView<AnyObject>.self)
        register(VStack<AnyView>.self)
        register(ZStack<AnyView>.self)
    }
    
    @available(OSX 10.15, *)
    @available(iOS, unavailable)
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    static func registerDefault_OSX() {
        register(HSplitView<AnyView>.self)
        register(MenuButton<AnyView, AnyView>.self)
        register(PasteButton.self)
        register(TouchBar<AnyView>.self)
        register(VSplitView<AnyView>.self)
    }
    
    @available(iOS 13.0, *)
    @available(OSX, unavailable)
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    static func registerDefault_iOS() {
    }
    
    @available(tvOS 13.0, *)
    @available(OSX, unavailable)
    @available(iOS, unavailable)
    @available(watchOS, unavailable)
    static func registerDefault_tvOS() {
    }
    
    @available(watchOS 6.0, *)
    @available(OSX, unavailable)
    @available(iOS, unavailable)
    @available(tvOS, unavailable)
    static func registerDefault_watchOS() {
    }
    
    @available(iOS 13.0, OSX 10.15, tvOS 13.0, *)
    @available(watchOS, unavailable)
    static func registerDefault_OSX_iOS_tvOS() {
        register(TabView<AnyHashable, AnyView>.self)
    }
}

extension View {
    func dump() -> some View {
        guard let data = try! JsonUI.encode(view: self.body) else {
            print("Unable to encode view")
            return self
        }
        print(String(data: data, encoding: .utf8)!)
        return self
    }
}
