//
//  JsonUIManager.swift
//  Glyph
//
//  Created by Sky Morey on 8/22/20.
//  Copyright © 2020 Sky Morey. All rights reserved.
//

import SwiftUI

class JsonUIManager {
    static var objectTypes = [String:Any.Type]()
    static var instance = JsonUIManager()
    
    private init() {
        JsonUIManager.registerDefault()
    }

    static func ensure() {
        _ = instance
    }
        
    // MARK - Object
    
    static func objectName(forObj obj: Any) -> String! {
        // "SwiftUIJson_App.SampleView"
        String(reflecting: type(of: obj).self)
    }
    
    enum FindObjectError: Error {
        case moduleNotFound
        case typeNotFound
        case invalidType(loaded: String, expected: String)
    }
    
    static func findObject(named name: String) throws -> Any.Type {
        ensure()
        guard name.components(separatedBy: ".").count > 1 else { throw FindObjectError.moduleNotFound }
        guard let loadedType = find(name) else { throw FindObjectError.typeNotFound }
        return loadedType
    }
    
//    static func findObject<T>(ofType type: T.Type, named name: String) throws -> T.Type {
//        ensure()
//        guard name.components(separatedBy: ".").count > 1 else { throw FindObjectError.moduleNotFound }
//        guard let loadedType = find(name) else { throw FindObjectError.typeNotFound }
//        let abc = loadedType as? T.Type
//        guard let castedType = loadedType as? T.Type else { throw FindObjectError.invalidType(loaded: name, expected: String(describing: type)) }
//        return castedType
//    }
    
    static func find(_ name: String) -> Any.Type? {
        guard let objectType = objectTypes[name] else { return nil }
        return objectType
    }
    
    // MARK - Register
    
    static func register<T>(_ type: T.Type) {
        objectTypes[String(reflecting: type)] = type
    }
    
    static func registerDefault() {
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