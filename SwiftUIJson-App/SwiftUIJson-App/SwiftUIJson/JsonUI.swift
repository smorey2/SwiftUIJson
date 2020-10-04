//
//  JsonUI.swift
//
//  Created by Sky Morey on 8/22/20.
//  Copyright © 2020 Sky Morey. All rights reserved.
//

// https://github.com/Cosmo/OpenSwiftUI
import SwiftUI

public protocol JsonView {
    var anyView: AnyView { get }
}

public struct JsonAnyView: View {
    public let body: AnyView
    public init(_ view: JsonView) { body = view.anyView }
}

extension View {
    func dump() -> some View {
        let data = try! JsonUI.encode(view: self.body)
        print(String(data: data, encoding: .utf8)!)
        return self
    }
}

extension AnyView: DynaCodable {
    internal class AnyViewStorageBase {
        let view: Any
        init(_ s: Any) {
            view = Mirror(reflecting: s).descendant("view")!
        }
    }
    public init(from decoder: Decoder, for dynaType: DynaType) throws {
        guard let value = try decoder.decodeDynaSuper(for: dynaType, index: 0) as? JsonView else { fatalError("AnyView") }
        self = value.anyView
    }
    public func encode(to encoder: Encoder) throws {
        let single = Mirror(reflecting: self).descendant("storage")!
        let storage = AnyViewStorageBase(single)
        guard let value = storage.view as? Encodable else { fatalError("AnyView") }
        try encoder.encodeDynaSuper(for: value)
        try value.encode(to: encoder)
    }
}

public struct JsonUI: Codable {
    public let body: Any
    public var anyView: AnyView? { body as? AnyView }
    
    public init(from json: Data) throws {
        let _ = JsonUI.registered
        let decoder = JSONDecoder()
        self = try decoder.decode(JsonUI.self, from: json)
    }
    private init(to encoder: Encodable) {
        let _ = JsonUI.registered
        body = encoder
    }

    static func encode(view: Any) throws -> Data {
        guard let value = view as? Encodable else { throw DynaTypeError.typeNotCodable(named: String(reflecting: view)) }
        let root = JsonUI(to: value)
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        return try encoder.encode(root)
    }
    
    // Mark - Codable
    public init(from decoder: Decoder) throws {
        let value = try decoder.decodeDynaSuper()
        print(value)
        guard let anyView = value as? AnyView else {
            guard let view = value as? JsonView else { fatalError("init") }
            body = view.anyView
            return
        }
        body = anyView
    }
    public func encode(to encoder: Encoder) throws {
        guard let value = body as? Encodable else { fatalError("encode") }
        try encoder.encodeDynaSuper(for: value)
        try value.encode(to: encoder)
    }
    
    // MARK - Register
    public static let registered: Bool = registerDefault()
    
    public static func register<T>(_ type: T.Type) {
        DynaType.knownType(type)
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
//        register(EquatableView<Any>.self)
//        register(ForEach<AnyRandomAccessCollection, AnyHashable, AnyView>.self)
        register(Form<AnyView>.self)
        register(GeometryReader<AnyView>.self)
        register(Group<AnyView>.self)
        register(GroupBox<AnyView, AnyView>.self)
        register(HStack<AnyView>.self)
        register(Image.self)
        register(List<AnyHashable, AnyView>.self)
        register(ModifiedContent<AnyView, Any>.self)
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
        register(TupleView<(JsonAnyView)>.self)
        register(TupleView<(JsonAnyView, JsonAnyView)>.self)
        register(TupleView<(JsonAnyView, JsonAnyView, JsonAnyView)>.self)
        register(TupleView<(JsonAnyView, JsonAnyView, JsonAnyView, JsonAnyView)>.self)
        register(TupleView<(JsonAnyView, JsonAnyView, JsonAnyView, JsonAnyView, JsonAnyView)>.self)
        register(TupleView<(JsonAnyView, JsonAnyView, JsonAnyView, JsonAnyView, JsonAnyView, JsonAnyView)>.self)
        register(TupleView<(JsonAnyView, JsonAnyView, JsonAnyView, JsonAnyView, JsonAnyView, JsonAnyView, JsonAnyView)>.self)
        register(TupleView<(JsonAnyView, JsonAnyView, JsonAnyView, JsonAnyView, JsonAnyView, JsonAnyView, JsonAnyView, JsonAnyView)>.self)
        register(TupleView<(JsonAnyView, JsonAnyView, JsonAnyView, JsonAnyView, JsonAnyView, JsonAnyView, JsonAnyView, JsonAnyView, JsonAnyView)>.self)
        register(TupleView<(JsonAnyView, JsonAnyView, JsonAnyView, JsonAnyView, JsonAnyView, JsonAnyView, JsonAnyView, JsonAnyView, JsonAnyView, JsonAnyView)>.self)
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
