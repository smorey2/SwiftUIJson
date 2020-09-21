// swift-interface-format-version: 1.0
// swift-compiler-version: Apple Swift version 5.1.1 (swiftlang-1100.2.274.2 clang-1100.2.32.1)
// swift-module-flags: -target arm64e-apple-ios13.2 -enable-objc-interop -enable-library-evolution -swift-version 5 -enforce-exclusivity=checked -Osize -module-name SwiftUI
import Combine
import CoreData
import CoreFoundation
import CoreGraphics
import CoreText
import Darwin
import Foundation
import Swift
@_exported import SwiftUI
import UIKit
import os.log
import os
import os.signpost
  
public struct _ButtonGesture {
  public var action: () -> Void
  public var pressingAction: ((Bool) -> Void)?
  public init(action: @escaping () -> Void, pressing: ((Bool) -> Void)? = nil)
  public static func _makeGesture(gesture: _GraphValue<_ButtonGesture>, inputs: _GestureInputs) -> _GestureOutputs<Void>
  public typealias Value = ()
  public typealias Body = Never
}
  
extension View {
  public func _onButtonGesture(pressing: ((Bool) -> Void)? = nil, perform action: @escaping () -> Void) -> some View
  
}
@available(iOS 13.0, OSX 10.15, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public protocol DatePickerStyle {
  associatedtype _Body : View
  func _body(configuration: DatePicker<Self._Label>) -> Self._Body
  typealias _Label = _DatePickerStyleLabel
}
@available(iOS 13.0, OSX 10.15, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct _DatePickerStyleLabel : View {
  public typealias Body = Never
}
@available(iOS 13.0, OSX 10.15, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension View {
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public func datePickerStyle<S>(_ style: S) -> some View where S : DatePickerStyle
  
}
  
public enum __App {
}
  
extension __App {
  public static func run<V>(_ rootView: V) -> Never where V : View
}
  
public struct _TestApp {
  public init()
  public func run() -> Never
}
  
extension View {
  public func sheet<Item, Content>(item: Binding<Item?>, onDismiss: (() -> Void)? = nil, @ViewBuilder content: @escaping (Item) -> Content) -> some View where Item : Identifiable, Content : View
  
  public func sheet<Content>(isPresented: Binding<Bool>, onDismiss: (() -> Void)? = nil, @ViewBuilder content: @escaping () -> Content) -> some View where Content : View
  
}
  
extension View {
  @inlinable public func _trait<K>(_ key: K.Type, _ value: K.Value) -> some View where K : _ViewTraitKey {
        return modifier(_TraitWritingModifier<K>(value: value))
    }
  
}
  
public protocol _ViewTraitKey {
  associatedtype Value
  static var defaultValue: Self.Value { get }
}
  
@frozen public struct _TraitWritingModifier<Trait> where Trait : _ViewTraitKey {
  public let value: Trait.Value
  @inlinable public init(value: Trait.Value) {
        self.value = value
    }
  public static func _makeView(modifier: _GraphValue<_TraitWritingModifier<Trait>>, inputs: _ViewInputs, body: @escaping (_Graph, _ViewInputs) -> _ViewOutputs) -> _ViewOutputs
  public static func _makeViewList(modifier: _GraphValue<_TraitWritingModifier<Trait>>, inputs: _ViewListInputs, body: @escaping (_Graph, _ViewListInputs) -> _ViewListOutputs) -> _ViewListOutputs
  public typealias Body = Never
}
@available(iOS 13.0, OSX 10.15, watchOS 6.0, *)
@available(tvOS, unavailable)
public struct LongPressGesture {
  public var minimumDuration: Double
  public var maximumDistance: CoreGraphics.CGFloat
  public init(minimumDuration: Double = 0.5, maximumDistance: CoreGraphics.CGFloat = 10)
  public static func _makeGesture(gesture: _GraphValue<LongPressGesture>, inputs: _GestureInputs) -> _GestureOutputs<Bool>
  public typealias Value = Bool
  public typealias Body = Never
}
@available(iOS 13.0, OSX 10.15, watchOS 6.0, *)
@available(tvOS, unavailable)
extension View {
  public func onLongPressGesture(minimumDuration: Double = 0.5, maximumDistance: CoreGraphics.CGFloat = 10, pressing: ((Bool) -> Void)? = nil, perform action: @escaping () -> Void) -> some View
  
}
  
public protocol _BenchmarkHost {
  func _renderForTest(interval: Double)
  func _performScrollTest(startOffset: CoreGraphics.CGFloat, iterations: Int, delta: CoreGraphics.CGFloat, length: CoreGraphics.CGFloat, completion: (() -> Void)?)
}
  
public protocol _Benchmark : _Test {
  func measure(host: _BenchmarkHost) -> [Double]
}
  
extension _BenchmarkHost {
  public func _performScrollTest(startOffset: CoreGraphics.CGFloat, iterations: Int, delta: CoreGraphics.CGFloat, length: CoreGraphics.CGFloat, completion: (() -> Void)?)
  public func measureAction(action: () -> Void) -> Double
  public func measureRender(interval: Double = 1.0 / 60.0) -> Double
  public func measureRenders(seconds: Double) -> [Double]
  public func measureRenders(duration: Double) -> [Double]
}
  
extension _TestApp {
  public func runBenchmarks(_ benchmarks: [_Benchmark]) -> Never
}
extension View {
  @available(iOS 13.0, OSX 10.15, tvOS 13.0, *)
  @available(watchOS, unavailable)
  public func disableAutocorrection(_ disable: Bool?) -> some View
  
}
extension EnvironmentValues {
  @available(iOS 13.0, OSX 10.15, tvOS 13.0, *)
  @available(watchOS, unavailable)
  public var disableAutocorrection: Bool? {
    get
    set
  }
}
@available(iOS, unavailable)
@available(OSX, deprecated, message: "Use MenuButton instead.")
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public typealias PullDownButton = _PullDownButton
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct _PullDownButton<Label, Content> : View where Label : View, Content : View {
  public init(label: Label, @ViewBuilder content: () -> Content)
  public static func _makeView(view: _GraphValue<_PullDownButton<Label, Content>>, inputs: _ViewInputs) -> _ViewOutputs
  public typealias Body = Never
}
@available(iOS, unavailable)
@available(OSX, deprecated, message: "Use MenuButton instead.")
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension _PullDownButton where Label == Text {
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public init(_ titleKey: LocalizedStringKey, @ViewBuilder content: () -> Content)
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  @_disfavoredOverload public init<S>(_ title: S, @ViewBuilder content: () -> Content) where S : StringProtocol
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct _PullDownButtonContainer<Label> : _VariadicView.UnaryViewRoot where Label : View {
  public func body(children: _VariadicView.Children) -> some View
  
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI24_PullDownButtonContainerV4body8childrenQrAA22_VariadicView_ChildrenV_tF", 0) 🦸<Label>
}
  
@frozen public struct EdgeInsets : Equatable {
  public var top: CoreGraphics.CGFloat
  public var leading: CoreGraphics.CGFloat
  public var bottom: CoreGraphics.CGFloat
  public var trailing: CoreGraphics.CGFloat
  @inlinable public init(top: CoreGraphics.CGFloat, leading: CoreGraphics.CGFloat, bottom: CoreGraphics.CGFloat, trailing: CoreGraphics.CGFloat) {
        self.top = top
        self.leading = leading
        self.bottom = bottom
        self.trailing = trailing
    }
  @inlinable public init() {
        self.init(top: 0, leading: 0, bottom: 0, trailing: 0)
    }
  public static func == (a: EdgeInsets, b: EdgeInsets) -> Bool
}
extension EdgeInsets {
  @usableFromInline
  internal init(_all: CoreGraphics.CGFloat)
}
  
extension EdgeInsets : Animatable, _VectorMath {
  public typealias AnimatableData = AnimatablePair<CoreGraphics.CGFloat, AnimatablePair<CoreGraphics.CGFloat, AnimatablePair<CoreGraphics.CGFloat, CoreGraphics.CGFloat>>>
  public var animatableData: EdgeInsets.AnimatableData {
    @inlinable get {
            return .init(top, .init(leading, .init(bottom, trailing)))
        }
    @inlinable set {
            let top = newValue[].0
            let leading = newValue[].1[].0
            let (bottom, trailing) = newValue[].1[].1[]
            self = .init(
                top: top, leading: leading, bottom: bottom, trailing: trailing)
        }
  }
}
  
public protocol GeometryEffect : Animatable, ViewModifier where Self.Body == Never {
  func effectValue(size: CoreGraphics.CGSize) -> ProjectionTransform
  static var _affectsLayout: Bool { get }
}
  
extension GeometryEffect {
  public static var _affectsLayout: Bool {
    get
  }
}
  
extension GeometryEffect {
  public static func _makeView(modifier: _GraphValue<Self>, inputs: _ViewInputs, body: @escaping (_Graph, _ViewInputs) -> _ViewOutputs) -> _ViewOutputs
  public static func _makeViewList(modifier: _GraphValue<Self>, inputs: _ViewListInputs, body: @escaping (_Graph, _ViewListInputs) -> _ViewListOutputs) -> _ViewListOutputs
}
@usableFromInline
internal struct ItemProviderTraitKey : _ViewTraitKey {
  @usableFromInline
  internal typealias Value = Optional<() -> Foundation.NSItemProvider?>
  @inlinable internal static var defaultValue: ItemProviderTraitKey.Value {
    get { nil }
  }
}
  
extension View {
  @inlinable public func itemProvider(_ action: Optional<() -> Foundation.NSItemProvider?>) -> some View {
        return _trait(ItemProviderTraitKey.self, action)
    }
  
}
  
public struct Toggle<Label> : View where Label : View {
  public init(isOn: Binding<Bool>, @ViewBuilder label: () -> Label)
  public var body: some View {
    get
  }
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI6ToggleV4bodyQrvp", 0) 🦸<Label>
}
  
extension Toggle where Label == ToggleStyleConfiguration.Label {
    
  public init(_ configuration: ToggleStyleConfiguration)
}
  
extension Toggle where Label == Text {
  public init(_ titleKey: LocalizedStringKey, isOn: Binding<Bool>)
  @_disfavoredOverload public init<S>(_ title: S, isOn: Binding<Bool>) where S : StringProtocol
}
  
@frozen public struct _Velocity<Value> : Equatable where Value : Equatable {
  public var valuePerSecond: Value
  @inlinable public init(valuePerSecond: Value) {
        self.valuePerSecond = valuePerSecond
    }
  public static func == (a: _Velocity<Value>, b: _Velocity<Value>) -> Bool
}
  
extension _Velocity : Comparable where Value : Comparable {
  public static func < (lhs: _Velocity<Value>, rhs: _Velocity<Value>) -> Bool
}
  
extension _Velocity : Animatable where Value : Animatable {
  public typealias AnimatableData = Value.AnimatableData
  public var animatableData: _Velocity<Value>.AnimatableData {
    @inlinable get { return valuePerSecond.animatableData }
    @inlinable set { valuePerSecond.animatableData = newValue }
  }
}
  
extension _Velocity : AdditiveArithmetic where Value : AdditiveArithmetic {
  @inlinable public init() {
        self.init(valuePerSecond: .zero)
    }
  @inlinable public static var zero: _Velocity<Value> {
    get {
        return .init(valuePerSecond: .zero)
    }
  }
  @inlinable public static func += (lhs: inout _Velocity<Value>, rhs: _Velocity<Value>) {
        lhs.valuePerSecond += rhs.valuePerSecond
    }
  @inlinable public static func -= (lhs: inout _Velocity<Value>, rhs: _Velocity<Value>) {
        lhs.valuePerSecond -= rhs.valuePerSecond
    }
  @inlinable public static func + (lhs: _Velocity<Value>, rhs: _Velocity<Value>) -> _Velocity<Value> {
        var r = lhs; r += rhs; return r
    }
  @inlinable public static func - (lhs: _Velocity<Value>, rhs: _Velocity<Value>) -> _Velocity<Value> {
        var r = lhs; r -= rhs; return r
    }
}
  
extension _Velocity : VectorArithmetic where Value : VectorArithmetic {
  @inlinable mutating public func scale(by rhs: Double) {
        valuePerSecond.scale(by: rhs)
    }
  @inlinable public var magnitudeSquared: Double {
    get {
        return valuePerSecond.magnitudeSquared
    }
  }
}
@usableFromInline
internal struct OnDeleteTraitKey : _ViewTraitKey {
  @inlinable internal static var defaultValue: Optional<(Foundation.IndexSet) -> Void> {
    get { nil }
  }
  @usableFromInline
  internal typealias Value = Optional<(Foundation.IndexSet) -> Void>
}
  
extension DynamicViewContent {
  @inlinable public func onDelete(perform action: Optional<(Foundation.IndexSet) -> Void>) -> some DynamicViewContent {
        return modifier(_TraitWritingModifier<OnDeleteTraitKey>(value: action))
    }
  
}
@usableFromInline
internal struct IsDeleteDisabledTraitKey : _ViewTraitKey {
  @inlinable internal static var defaultValue: Bool {
    get { false }
  }
  @usableFromInline
  internal typealias Value = Bool
}
  
extension View {
  @inlinable public func deleteDisabled(_ isDisabled: Bool) -> some View {
        return _trait(IsDeleteDisabledTraitKey.self, isDisabled)
    }
  
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
@frozen public struct _HoverRegionModifier : ViewModifier {
  public let callback: (Bool) -> Void
  @inlinable public init(_ callback: @escaping (Bool) -> Void) {
        var currentValue = false
        // Wrap the callback to avoid redundant updates
        self.callback = { newValue in
            guard newValue != currentValue else { return }
            currentValue = newValue
            callback(newValue)
        }
    }
  public static func _makeView(modifier: _GraphValue<_HoverRegionModifier>, inputs: _ViewInputs, body: @escaping (_Graph, _ViewInputs) -> _ViewOutputs) -> _ViewOutputs
  public typealias Body = Never
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension View {
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  @inlinable public func onHover(perform action: @escaping (Bool) -> Void) -> some View {
        return modifier(_HoverRegionModifier(action))
    }
  
}
  
@frozen public struct Color : Hashable, CustomStringConvertible {
  private var provider: AnyColorBox
  public func hash(into hasher: inout Hasher)
  public static func == (lhs: Color, rhs: Color) -> Bool
  public var description: String {
    get
  }
  public var hashValue: Int {
    get
  }
}
  
extension Color {
  public typealias Body = Never
}
@usableFromInline
internal class AnyColorBox {
  @objc @usableFromInline
  deinit
}
  
extension Animation {
  public static func spring(response: Double = 0.55, dampingFraction: Double = 0.825, blendDuration: Double = 0) -> Animation
  public static func interactiveSpring(response: Double = 0.15, dampingFraction: Double = 0.86, blendDuration: Double = 0.25) -> Animation
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public protocol MenuButtonStyle {
  associatedtype _Body : View
  func _body(configuration: Self._Configuration) -> Self._Body
  typealias _Configuration = _MenuButtonStyleConfiguration
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct _MenuButtonStyleConfiguration {
  public struct Label : View {
    public typealias Body = Never
  }
  public struct Content : View {
    public typealias Body = Never
  }
  public var label: _MenuButtonStyleConfiguration.Label
  public var content: _MenuButtonStyleConfiguration.Content
  public init()
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension View {
  public func menuButtonStyle<S>(_ style: S) -> some View where S : MenuButtonStyle
  
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public protocol _PullDownButtonStyle {
  static func _makeView<Label>(value: _GraphValue<_PullDownButtonValue<Self, Label>>, inputs: _ViewInputs) -> _ViewOutputs where Label : View
  static func _makeViewList<Label>(value: _GraphValue<_PullDownButtonValue<Self, Label>>, inputs: _ViewListInputs) -> _ViewListOutputs where Label : View
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct _PullDownButtonValue<Style, Label> where Style : _PullDownButtonStyle, Label : View {
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension View {
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public func _pullDownButtonStyle<S>(_ style: S) -> some View where S : _PullDownButtonStyle
  
}
  
extension Image {
  public static var _mainNamedBundle: Foundation.Bundle?
}
  
extension Image {
  public init(_ name: String, bundle: Foundation.Bundle? = nil)
  public init(_ name: String, bundle: Foundation.Bundle? = nil, label: Text)
  public init(decorative name: String, bundle: Foundation.Bundle? = nil)
  @available(OSX, unavailable)
  public init(systemName: String)
}
  
@frozen public struct Text : Equatable {
  @usableFromInline
  @frozen internal enum Storage : Equatable {
    case verbatim(String)
    case anyTextStorage(AnyTextStorage)
    @usableFromInline
    internal static func == (lhs: Text.Storage, rhs: Text.Storage) -> Bool
  }
  @usableFromInline
  @frozen internal enum Modifier : Equatable {
    case color(Color?)
    case font(Font?)
    case italic
    case weight(Font.Weight?)
    case kerning(CoreGraphics.CGFloat)
    case tracking(CoreGraphics.CGFloat)
    case baseline(CoreGraphics.CGFloat)
    case rounded
    case anyTextModifier(AnyTextModifier)
    @usableFromInline
    internal static func == (lhs: Text.Modifier, rhs: Text.Modifier) -> Bool
  }
  @usableFromInline
  internal var storage: Text.Storage
  @usableFromInline
  internal var modifiers: [Text.Modifier] = [Modifier]()
  @inlinable public init(verbatim content: String) {
        storage = .verbatim(content)
    }
  @_disfavoredOverload public init<S>(_ content: S) where S : StringProtocol
  public init(_ key: LocalizedStringKey, tableName: String? = nil, bundle: Foundation.Bundle? = nil, comment: StaticString? = nil)
  public static func == (a: Text, b: Text) -> Bool
}
@usableFromInline
internal class AnyTextStorage {
  @objc @usableFromInline
  deinit
}
@usableFromInline
internal class AnyTextModifier {
  @objc @usableFromInline
  deinit
}
  
@frozen public struct LocalizedStringKey : Equatable, ExpressibleByStringInterpolation {
  internal var key: String
  private var hasFormatting: Bool = false
  private var arguments: [LocalizedStringKey.FormatArgument]
  public init(_ value: String)
  public init(stringLiteral value: String)
  public init(stringInterpolation: LocalizedStringKey.StringInterpolation)
  @usableFromInline
  internal struct FormatArgument : Equatable {
    @usableFromInline
    internal static func == (lhs: LocalizedStringKey.FormatArgument, rhs: LocalizedStringKey.FormatArgument) -> Bool
  }
  public struct StringInterpolation : StringInterpolationProtocol {
    public init(literalCapacity: Int, interpolationCount: Int)
    mutating public func appendLiteral(_ literal: String)
    mutating public func appendInterpolation(_ string: String)
    mutating public func appendInterpolation<Subject>(_ subject: Subject, formatter: Foundation.Formatter? = nil) where Subject : Foundation.ReferenceConvertible
    mutating public func appendInterpolation<Subject>(_ subject: Subject, formatter: Foundation.Formatter? = nil) where Subject : ObjectiveC.NSObject
    mutating public func appendInterpolation<T>(_ value: T) where T : _FormatSpecifiable
    mutating public func appendInterpolation<T>(_ value: T, specifier: String) where T : _FormatSpecifiable
    public typealias StringLiteralType = String
  }
  public typealias StringLiteralType = String
  public typealias ExtendedGraphemeClusterLiteralType = String
  public typealias UnicodeScalarLiteralType = String
  public static func == (a: LocalizedStringKey, b: LocalizedStringKey) -> Bool
}
  
public protocol _FormatSpecifiable : Equatable {
  associatedtype _Arg : CVarArg
  var _arg: Self._Arg { get }
  var _specifier: String { get }
}
  
extension Int : _FormatSpecifiable {
  public var _arg: Int64 {
    get
  }
  public var _specifier: String {
    get
  }
  public typealias _Arg = Int64
}
  
extension Int8 : _FormatSpecifiable {
  public var _arg: Int32 {
    get
  }
  public var _specifier: String {
    get
  }
  public typealias _Arg = Int32
}
  
extension Int16 : _FormatSpecifiable {
  public var _arg: Int32 {
    get
  }
  public var _specifier: String {
    get
  }
  public typealias _Arg = Int32
}
  
extension Int32 : _FormatSpecifiable {
  public var _arg: Int32 {
    get
  }
  public var _specifier: String {
    get
  }
  public typealias _Arg = Int32
}
  
extension Int64 : _FormatSpecifiable {
  public var _arg: Int64 {
    get
  }
  public var _specifier: String {
    get
  }
  public typealias _Arg = Int64
}
  
extension UInt : _FormatSpecifiable {
  public var _arg: UInt64 {
    get
  }
  public var _specifier: String {
    get
  }
  public typealias _Arg = UInt64
}
  
extension UInt8 : _FormatSpecifiable {
  public var _arg: UInt32 {
    get
  }
  public var _specifier: String {
    get
  }
  public typealias _Arg = UInt32
}
  
extension UInt16 : _FormatSpecifiable {
  public var _arg: UInt32 {
    get
  }
  public var _specifier: String {
    get
  }
  public typealias _Arg = UInt32
}
  
extension UInt32 : _FormatSpecifiable {
  public var _arg: UInt32 {
    get
  }
  public var _specifier: String {
    get
  }
  public typealias _Arg = UInt32
}
  
extension UInt64 : _FormatSpecifiable {
  public var _arg: UInt64 {
    get
  }
  public var _specifier: String {
    get
  }
  public typealias _Arg = UInt64
}
  
extension Float : _FormatSpecifiable {
  public var _arg: Float {
    get
  }
  public var _specifier: String {
    get
  }
  public typealias _Arg = Float
}
  
extension Double : _FormatSpecifiable {
  public var _arg: Double {
    get
  }
  public var _specifier: String {
    get
  }
  public typealias _Arg = Double
}
  
extension CGFloat : _FormatSpecifiable {
  public var _arg: CoreGraphics.CGFloat {
    get
  }
  public var _specifier: String {
    get
  }
  public typealias _Arg = CoreGraphics.CGFloat
}
  
extension Text {
  public static func + (lhs: Text, rhs: Text) -> Text
}
@usableFromInline
internal struct OnMoveTraitKey : _ViewTraitKey {
  @inlinable internal static var defaultValue: Optional<(Foundation.IndexSet, Int) -> Void> {
    get { nil }
  }
  @usableFromInline
  internal typealias Value = Optional<(Foundation.IndexSet, Int) -> Void>
}
  
extension DynamicViewContent {
  @inlinable public func onMove(perform action: Optional<(Foundation.IndexSet, Int) -> Void>) -> some DynamicViewContent {
        modifier(_TraitWritingModifier<OnMoveTraitKey>(value: action))
    }
  
}
@usableFromInline
internal struct IsMoveDisabledTraitKey : _ViewTraitKey {
  @inlinable internal static var defaultValue: Bool {
    get { false }
  }
  @usableFromInline
  internal typealias Value = Bool
}
  
extension View {
  @inlinable public func moveDisabled(_ isDisabled: Bool) -> some View {
        return _trait(IsMoveDisabledTraitKey.self, isDisabled)
    }
  
}
  
@frozen public struct _TrimmedShape<S> : Shape where S : Shape {
  public var shape: S
  public var startFraction: CoreGraphics.CGFloat
  public var endFraction: CoreGraphics.CGFloat
  @inlinable public init(shape: S, startFraction: CoreGraphics.CGFloat = 0, endFraction: CoreGraphics.CGFloat = 1) {
        self.shape = shape
        self.startFraction = startFraction
        self.endFraction = endFraction
    }
  public func path(in rect: CoreGraphics.CGRect) -> Path
  public typealias AnimatableData = AnimatablePair<S.AnimatableData, AnimatablePair<CoreGraphics.CGFloat, CoreGraphics.CGFloat>>
  public var animatableData: _TrimmedShape<S>.AnimatableData {
    get
    set
  }
  public typealias Body = _ShapeView<_TrimmedShape<S>, ForegroundStyle>
}
  
extension Shape {
  @inlinable public func trim(from startFraction: CoreGraphics.CGFloat = 0, to endFraction: CoreGraphics.CGFloat = 1) -> some Shape {
        return _TrimmedShape(shape: self, startFraction: startFraction,
            endFraction: endFraction)
    }
  
}
  
@frozen public struct Font : Hashable {
  private var provider: AnyFontBox
  public func hash(into hasher: inout Hasher)
  public static func == (lhs: Font, rhs: Font) -> Bool
  public var hashValue: Int {
    get
  }
}
@usableFromInline
internal class AnyFontBox {
  @objc @usableFromInline
  deinit
}
  
public enum ContentSizeCategory : Hashable, CaseIterable {
  case extraSmall
  case small
  case medium
  case large
  case extraLarge
  case extraExtraLarge
  case extraExtraExtraLarge
  case accessibilityMedium
  case accessibilityLarge
  case accessibilityExtraLarge
  case accessibilityExtraExtraLarge
  case accessibilityExtraExtraExtraLarge
  public var hashValue: Int {
    get
  }
  public func hash(into hasher: inout Hasher)
  public static func == (a: ContentSizeCategory, b: ContentSizeCategory) -> Bool
  public typealias AllCases = [ContentSizeCategory]
  public static var allCases: [ContentSizeCategory] {
    get
  }
}
  
extension EnvironmentValues {
  public var sizeCategory: ContentSizeCategory {
    get
    set
  }
}
  
extension Never {
  public typealias Body = Never
  public var body: Never {
    get
  }
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension View {
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public func onDrag(_ data: @escaping () -> Foundation.NSItemProvider) -> some View
  
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct _DraggingModifier : ViewModifier {
  public static func _makeView(modifier: _GraphValue<_DraggingModifier>, inputs: _ViewInputs, body: @escaping (_Graph, _ViewInputs) -> _ViewOutputs) -> _ViewOutputs
  public typealias Body = Never
}
  
public struct DefaultTextFieldStyle : TextFieldStyle {
  public init()
  public func _body(configuration: TextField<DefaultTextFieldStyle._Label>) -> DefaultTextFieldStyle._Body
  public struct _Body : View {
    public var body: some View {
      get
    }
    public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI21DefaultTextFieldStyleV5_BodyV4bodyQrvp", 0) 🦸
  }
}
  
public struct AccessibilityActionKind : Equatable {
  public static let `default`: AccessibilityActionKind
  public static let escape: AccessibilityActionKind
  @available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  @available(OSX, unavailable)
  public static let magicTap: AccessibilityActionKind
  @available(OSX 10.15, *)
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public static let delete: AccessibilityActionKind
  @available(OSX 10.15, *)
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public static let showMenu: AccessibilityActionKind
  public init(named name: Text)
  public static func == (a: AccessibilityActionKind, b: AccessibilityActionKind) -> Bool
}
extension View {
  public func accessibilityAction(_ actionKind: AccessibilityActionKind = .default, _ handler: @escaping () -> Void) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
  public func accessibilityAction(named name: Text, _ handler: @escaping () -> Void) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
}
  
extension ModifiedContent where Modifier == AccessibilityAttachmentModifier {
  public func accessibilityAction(_ actionKind: AccessibilityActionKind = .default, _ handler: @escaping () -> Void) -> ModifiedContent<Content, Modifier>
  public func accessibilityAction(named name: Text, _ handler: @escaping () -> Void) -> ModifiedContent<Content, Modifier>
}
  
@frozen public struct ImagePaint : ShapeStyle {
  public var image: Image
  public var sourceRect: CoreGraphics.CGRect
  public var scale: CoreGraphics.CGFloat
  public init(image: Image, sourceRect: CoreGraphics.CGRect = CGRect(x: 0, y: 0, width: 1, height: 1), scale: CoreGraphics.CGFloat = 1)
}
  
public protocol PrimitiveButtonStyle {
  associatedtype Body : View
  func makeBody(configuration: Self.Configuration) -> Self.Body
  typealias Configuration = PrimitiveButtonStyleConfiguration
}
  
public struct PrimitiveButtonStyleConfiguration {
  public struct Label : View {
    public typealias Body = Never
  }
  public let label: PrimitiveButtonStyleConfiguration.Label
  public func trigger()
}
  
extension View {
  public func buttonStyle<S>(_ style: S) -> some View where S : PrimitiveButtonStyle
  
}
  
@frozen public struct EmptyView {
  @inlinable public init() {}
  public static func _makeView(view: _GraphValue<EmptyView>, inputs: _ViewInputs) -> _ViewOutputs
  public static func _makeViewList(view: _GraphValue<EmptyView>, inputs: _ViewListInputs) -> _ViewListOutputs
  public typealias Body = Never
}
  
public struct DefaultListStyle : ListStyle {
  public init()
  public static func _makeView<SelectionValue>(value: _GraphValue<_ListValue<DefaultListStyle, SelectionValue>>, inputs: _ViewInputs) -> _ViewOutputs where SelectionValue : Hashable
  public static func _makeViewList<SelectionValue>(value: _GraphValue<_ListValue<DefaultListStyle, SelectionValue>>, inputs: _ViewListInputs) -> _ViewListOutputs where SelectionValue : Hashable
}
  
extension View {
  public static func _makeView(view: _GraphValue<Self>, inputs: _ViewInputs) -> _ViewOutputs
  public static func _makeViewList(view: _GraphValue<Self>, inputs: _ViewListInputs) -> _ViewListOutputs
}
  
public protocol _AnimatableView : Animatable, View {
}
  
extension _AnimatableView {
  public static func _makeView(view: _GraphValue<Self>, inputs: _ViewInputs) -> _ViewOutputs
  public static func _makeViewList(view: _GraphValue<Self>, inputs: _ViewListInputs) -> _ViewListOutputs
}
  
@frozen public struct SubscriptionView<PublisherType, Content> where PublisherType : Combine.Publisher, Content : View, PublisherType.Failure == Never {
  public var content: Content
  public var publisher: PublisherType
  public var action: (PublisherType.Output) -> Void
  @inlinable public init(content: Content, publisher: PublisherType, action: @escaping (PublisherType.Output) -> Void) {
        self.content = content
        self.publisher = publisher
        self.action = action
    }
  public static func _makeView(view: _GraphValue<SubscriptionView<PublisherType, Content>>, inputs: _ViewInputs) -> _ViewOutputs
  public static func _makeViewList(view: _GraphValue<SubscriptionView<PublisherType, Content>>, inputs: _ViewListInputs) -> _ViewListOutputs
  public typealias Body = Never
}
  
extension View {
  @inlinable public func onReceive<P>(_ publisher: P, perform action: @escaping (P.Output) -> Void) -> some View where P : Combine.Publisher, P.Failure == Never {
        SubscriptionView(content: self, publisher: publisher, action: action)
    }
  
}
  
extension _ViewTest {
  public typealias Touch = (location: CoreGraphics.CGPoint, globalLocation: CoreGraphics.CGPoint?, timestamp: Foundation.Date)
  public func sendTouchSequence(_ touches: [Self.Touch])
  public func measureTouchSequence(host: _BenchmarkHost, _ touches: [Self.Touch]) -> [Double]
}
  
extension Gesture {
  @inlinable public func sequenced<Other>(before other: Other) -> SequenceGesture<Self, Other> where Other : Gesture {
        return SequenceGesture(self, other)
    }
}
  
@frozen public struct SequenceGesture<First, Second> where First : Gesture, Second : Gesture {
  @frozen public enum Value {
    case first(First.Value)
    case second(First.Value, Second.Value?)
  }
  public var first: First
  public var second: Second
  @inlinable public init(_ first: First, _ second: Second) {
        (self.first, self.second) = (first, second)
    }
  public static func _makeGesture(gesture: _GraphValue<SequenceGesture<First, Second>>, inputs: _GestureInputs) -> _GestureOutputs<SequenceGesture<First, Second>.Value>
  public typealias Body = Never
}
  
extension SequenceGesture.Value : Equatable where First.Value : Equatable, Second.Value : Equatable {
  public static func == (a: SequenceGesture<First, Second>.Value, b: SequenceGesture<First, Second>.Value) -> Bool
}
  
@frozen public struct OffsetShape<Content> : Shape where Content : Shape {
  public var shape: Content
  public var offset: CoreGraphics.CGSize
  @inlinable public init(shape: Content, offset: CoreGraphics.CGSize) {
        self.shape = shape
        self.offset = offset
    }
  public func path(in rect: CoreGraphics.CGRect) -> Path
  public typealias AnimatableData = AnimatablePair<Content.AnimatableData, CoreGraphics.CGSize.AnimatableData>
  public var animatableData: OffsetShape<Content>.AnimatableData {
    get
    set
  }
  public typealias Body = _ShapeView<OffsetShape<Content>, ForegroundStyle>
}
  
extension OffsetShape : InsettableShape where Content : InsettableShape {
  @inlinable public func inset(by amount: CoreGraphics.CGFloat) -> OffsetShape<Content.InsetShape> {
        return shape.inset(by: amount).offset(offset)
    }
  public typealias InsetShape = OffsetShape<Content.InsetShape>
}
  
@frozen public struct ScaledShape<Content> : Shape where Content : Shape {
  public var shape: Content
  public var scale: CoreGraphics.CGSize
  public var anchor: UnitPoint
  @inlinable public init(shape: Content, scale: CoreGraphics.CGSize, anchor: UnitPoint = .center) {
        self.shape = shape
        self.scale = scale
        self.anchor = anchor
    }
  public func path(in rect: CoreGraphics.CGRect) -> Path
  public typealias AnimatableData = AnimatablePair<Content.AnimatableData, AnimatablePair<CoreGraphics.CGSize.AnimatableData, UnitPoint.AnimatableData>>
  public var animatableData: ScaledShape<Content>.AnimatableData {
    get
    set
  }
  public typealias Body = _ShapeView<ScaledShape<Content>, ForegroundStyle>
}
  
@frozen public struct RotatedShape<Content> : Shape where Content : Shape {
  public var shape: Content
  public var angle: Angle
  public var anchor: UnitPoint
  @inlinable public init(shape: Content, angle: Angle, anchor: UnitPoint = .center) {
        self.shape = shape
        self.angle = angle
        self.anchor = anchor
    }
  public func path(in rect: CoreGraphics.CGRect) -> Path
  public typealias AnimatableData = AnimatablePair<Content.AnimatableData, AnimatablePair<Angle.AnimatableData, UnitPoint.AnimatableData>>
  public var animatableData: RotatedShape<Content>.AnimatableData {
    get
    set
  }
  public typealias Body = _ShapeView<RotatedShape<Content>, ForegroundStyle>
}
  
extension RotatedShape : InsettableShape where Content : InsettableShape {
  @inlinable public func inset(by amount: CoreGraphics.CGFloat) -> RotatedShape<Content.InsetShape> {
        return shape.inset(by: amount).rotation(angle, anchor: anchor)
    }
  public typealias InsetShape = RotatedShape<Content.InsetShape>
}
  
@frozen public struct TransformedShape<Content> : Shape where Content : Shape {
  public var shape: Content
  public var transform: CoreGraphics.CGAffineTransform
  @inlinable public init(shape: Content, transform: CoreGraphics.CGAffineTransform) {
        self.shape = shape
        self.transform = transform
    }
  public func path(in rect: CoreGraphics.CGRect) -> Path
  public typealias AnimatableData = Content.AnimatableData
  public var animatableData: TransformedShape<Content>.AnimatableData {
    get
    set
  }
  public typealias Body = _ShapeView<TransformedShape<Content>, ForegroundStyle>
}
  
extension Shape {
  @inlinable public func offset(_ offset: CoreGraphics.CGSize) -> OffsetShape<Self> {
        return OffsetShape(shape: self, offset: offset)
    }
  @inlinable public func offset(_ offset: CoreGraphics.CGPoint) -> OffsetShape<Self> {
        return OffsetShape(
            shape: self, offset: CGSize(width: offset.x, height: offset.y))
    }
  @inlinable public func offset(x: CoreGraphics.CGFloat = 0, y: CoreGraphics.CGFloat = 0) -> OffsetShape<Self> {
        return OffsetShape(shape: self, offset: .init(width: x, height: y))
    }
  @inlinable public func scale(x: CoreGraphics.CGFloat = 1, y: CoreGraphics.CGFloat = 1, anchor: UnitPoint = .center) -> ScaledShape<Self> {
        return ScaledShape(shape: self,
            scale: CGSize(width: x, height: y), anchor: anchor)
    }
  @inlinable public func scale(_ scale: CoreGraphics.CGFloat, anchor: UnitPoint = .center) -> ScaledShape<Self> {
        return self.scale(x: scale, y: scale, anchor: anchor)
    }
  @inlinable public func rotation(_ angle: Angle, anchor: UnitPoint = .center) -> RotatedShape<Self> {
        return RotatedShape(shape: self, angle: angle, anchor: anchor)
    }
  @inlinable public func transform(_ transform: CoreGraphics.CGAffineTransform) -> TransformedShape<Self> {
        return TransformedShape(shape: self, transform: transform)
    }
}
  
extension EnvironmentValues {
  public var managedObjectContext: CoreData.NSManagedObjectContext {
    get
    set
  }
}
  
@frozen public struct Rectangle : Shape {
  public func path(in rect: CoreGraphics.CGRect) -> Path
  @inlinable public init() {}
  public typealias AnimatableData = EmptyAnimatableData
  public typealias Body = _ShapeView<Rectangle, ForegroundStyle>
}
  
@frozen public struct RoundedRectangle : Shape {
  public var cornerSize: CoreGraphics.CGSize
  public var style: RoundedCornerStyle
  @inlinable public init(cornerSize: CoreGraphics.CGSize, style: RoundedCornerStyle = .circular) {
        self.cornerSize = cornerSize
        self.style = style
    }
  @inlinable public init(cornerRadius: CoreGraphics.CGFloat, style: RoundedCornerStyle = .circular) {
        let cornerSize = CGSize(width: cornerRadius, height: cornerRadius)
        self.init(cornerSize: cornerSize, style: style)
    }
  public func path(in rect: CoreGraphics.CGRect) -> Path
  public var animatableData: CoreGraphics.CGSize.AnimatableData {
    get
    set
  }
  public typealias AnimatableData = CoreGraphics.CGSize.AnimatableData
  public typealias Body = _ShapeView<RoundedRectangle, ForegroundStyle>
}
  
@frozen public struct Capsule : Shape {
  public var style: RoundedCornerStyle
  @inlinable public init(style: RoundedCornerStyle = .circular) {
        self.style = style
    }
  public func path(in r: CoreGraphics.CGRect) -> Path
  public typealias AnimatableData = EmptyAnimatableData
  public typealias Body = _ShapeView<Capsule, ForegroundStyle>
}
  
@frozen public struct Ellipse : Shape {
  public func path(in rect: CoreGraphics.CGRect) -> Path
  @inlinable public init() {}
  public typealias AnimatableData = EmptyAnimatableData
  public typealias Body = _ShapeView<Ellipse, ForegroundStyle>
}
  
@frozen public struct Circle : Shape {
  public func path(in rect: CoreGraphics.CGRect) -> Path
  @inlinable public init() {}
  public typealias AnimatableData = EmptyAnimatableData
  public typealias Body = _ShapeView<Circle, ForegroundStyle>
}
extension _UIHostingView {
}
  
public protocol ViewModifier {
  static func _makeView(modifier: _GraphValue<Self>, inputs: _ViewInputs, body: @escaping (_Graph, _ViewInputs) -> _ViewOutputs) -> _ViewOutputs
  static func _makeViewList(modifier: _GraphValue<Self>, inputs: _ViewListInputs, body: @escaping (_Graph, _ViewListInputs) -> _ViewListOutputs) -> _ViewListOutputs
  associatedtype Body : View
  func body(content: Self.Content) -> Self.Body
  typealias Content = _ViewModifier_Content<Self>
}
  
extension ViewModifier where Self.Body == Never {
  public func body(content: Self.Content) -> Self.Body
}
  
extension ViewModifier where Self : _GraphInputsModifier, Self.Body == Never {
  public static func _makeView(modifier: _GraphValue<Self>, inputs: _ViewInputs, body: @escaping (_Graph, _ViewInputs) -> _ViewOutputs) -> _ViewOutputs
  public static func _makeViewList(modifier: _GraphValue<Self>, inputs: _ViewListInputs, body: @escaping (_Graph, _ViewListInputs) -> _ViewListOutputs) -> _ViewListOutputs
}
  
@frozen public struct EmptyModifier {
  public static let identity: EmptyModifier
  @inlinable public init() {}
  public static func _makeView(modifier: _GraphValue<EmptyModifier>, inputs: _ViewInputs, body: @escaping (_Graph, _ViewInputs) -> _ViewOutputs) -> _ViewOutputs
  public static func _makeViewList(modifier: _GraphValue<EmptyModifier>, inputs: _ViewListInputs, body: @escaping (_Graph, _ViewListInputs) -> _ViewListOutputs) -> _ViewListOutputs
  public func body(content: EmptyModifier.Content) -> Never
  public typealias Body = Never
}
  
extension View {
  @inlinable public func modifier<T>(_ modifier: T) -> ModifiedContent<Self, T> {
        return .init(content: self, modifier: modifier)
    }
}
  
@frozen public struct ModifiedContent<Content, Modifier> {
  public var content: Content
  public var modifier: Modifier
  @inlinable public init(content: Content, modifier: Modifier) {
        self.content = content
        self.modifier = modifier
    }
}
  
extension ModifiedContent : Equatable where Content : Equatable, Modifier : Equatable {
  public static func == (a: ModifiedContent<Content, Modifier>, b: ModifiedContent<Content, Modifier>) -> Bool
}
  
extension ModifiedContent : View where Content : View, Modifier : ViewModifier {
  public typealias Body = Never
  public static func _makeView(view: _GraphValue<ModifiedContent<Content, Modifier>>, inputs: _ViewInputs) -> _ViewOutputs
  public static func _makeViewList(view: _GraphValue<ModifiedContent<Content, Modifier>>, inputs: _ViewListInputs) -> _ViewListOutputs
  public var body: ModifiedContent<Content, Modifier>.Body {
    get
  }
}
  
extension ModifiedContent : ViewModifier where Content : ViewModifier, Modifier : ViewModifier {
  public static func _makeView(modifier: _GraphValue<ModifiedContent<Content, Modifier>>, inputs: _ViewInputs, body: @escaping (_Graph, _ViewInputs) -> _ViewOutputs) -> _ViewOutputs
  public static func _makeViewList(modifier: _GraphValue<ModifiedContent<Content, Modifier>>, inputs: _ViewListInputs, body: @escaping (_Graph, _ViewListInputs) -> _ViewListOutputs) -> _ViewListOutputs
}
  
extension ViewModifier {
  @inlinable public func concat<T>(_ modifier: T) -> ModifiedContent<Self, T> {
        return .init(content: self, modifier: modifier)
    }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, *)
@available(watchOS, unavailable)
public struct NavigationView<Content> : View where Content : View {
  public init(@ViewBuilder content: () -> Content)
  public typealias Body = Never
}
  
@frozen @propertyWrapper public struct State<Value> : DynamicProperty {
  @usableFromInline
  internal var _value: Value
  @usableFromInline
  internal var _location: AnyLocation<Value>?
  public init(wrappedValue value: Value)
  @_alwaysEmitIntoClient public init(initialValue value: Value) {
        _value = value
    }
  public var wrappedValue: Value {
    get
    nonmutating set
  }
  public var projectedValue: Binding<Value> {
    get
  }
  public static func _makeProperty<V>(in buffer: inout _DynamicPropertyBuffer, container: _GraphValue<V>, fieldOffset: Int, inputs: inout _GraphInputs)
}
  
extension State where Value : ExpressibleByNilLiteral {
  @inlinable public init() {
        self.init(wrappedValue: nil)
    }
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct SidebarListStyle : ListStyle {
  public init()
  public static func _makeView<SelectionValue>(value: _GraphValue<_ListValue<SidebarListStyle, SelectionValue>>, inputs: _ViewInputs) -> _ViewOutputs where SelectionValue : Hashable
  public static func _makeViewList<SelectionValue>(value: _GraphValue<_ListValue<SidebarListStyle, SelectionValue>>, inputs: _ViewListInputs) -> _ViewListOutputs where SelectionValue : Hashable
}
  
public typealias __GridSpacing = __GridLayout.Spacing
  
public struct __GridLayout {
  public struct Spacing {
    public var min: CoreGraphics.CGFloat
    public var max: CoreGraphics.CGFloat?
    public init(min: CoreGraphics.CGFloat = 0, max: CoreGraphics.CGFloat? = nil)
    public init(fixed: CoreGraphics.CGFloat)
  }
  public enum FillDirection {
    case horizontal, vertical
    public static func == (a: __GridLayout.FillDirection, b: __GridLayout.FillDirection) -> Bool
    public var hashValue: Int {
      get
    }
    public func hash(into hasher: inout Hasher)
  }
  public var itemSize: CoreGraphics.CGSize
  public var itemSpacing: __GridLayout.Spacing
  public var lineSpacing: __GridLayout.Spacing
  public var fillDirection: __GridLayout.FillDirection
  public init(itemSize: CoreGraphics.CGSize, itemSpacing: CoreGraphics.CGFloat = 0, lineSpacing: CoreGraphics.CGFloat = 0, fillDirection: __GridLayout.FillDirection = .horizontal)
  public init(itemSize: CoreGraphics.CGSize, itemSpacing: __GridLayout.Spacing, lineSpacing: __GridLayout.Spacing, fillDirection: __GridLayout.FillDirection = .horizontal)
  public typealias AnimatableData = EmptyAnimatableData
  public typealias Body = Never
}
  
public protocol DynamicViewContent : View {
  associatedtype Data : Collection
  var data: Self.Data { get }
}
  
extension ForEach : DynamicViewContent where Content : View {
}
  
extension ModifiedContent : DynamicViewContent where Content : DynamicViewContent, Modifier : ViewModifier {
  public var data: Content.Data {
    get
  }
  public typealias Data = Content.Data
}
  
public struct _OverlayLayout {
  public init(contentIndex: Int? = nil)
  public typealias AnimatableData = EmptyAnimatableData
  public typealias Body = Never
}
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(OSX, unavailable)
public protocol _UIHostingViewable : AnyObject {
  var rootView: AnyView { get set }
  func _render(seconds: Double)
  func _forEachIdentifiedView(body: (_IdentifiedViewProxy) -> Void)
  func sizeThatFits(in size: CoreGraphics.CGSize) -> CoreGraphics.CGSize
  var _disableSafeArea: Bool { get set }
}
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(OSX, unavailable)
extension UIHostingController : _UIHostingViewable where Content == AnyView {
}
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(OSX, unavailable)
public func _makeUIHostingController(_ view: AnyView) -> ObjectiveC.NSObject & _UIHostingViewable
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
public func _makeWatchKitUIHostingController(_ view: AnyView) -> ObjectiveC.NSObject & _UIHostingViewable
  
public struct _ScrollableLayoutView<Data, Layout> : View where Data : RandomAccessCollection, Layout : _ScrollableLayout, Data.Element : View, Data.Index : Hashable {
  public static func _makeView(view: _GraphValue<_ScrollableLayoutView<Data, Layout>>, inputs: _ViewInputs) -> _ViewOutputs
  public typealias Body = Never
}
  
extension _ScrollableLayoutView : _ScrollableContentProvider {
  public var scrollableContent: _ScrollableLayoutView<Data, Layout> {
    get
  }
  public func decelerationTarget(contentOffset: CoreGraphics.CGPoint, originalContentOffset: CoreGraphics.CGPoint, velocity: _Velocity<CoreGraphics.CGSize>, size: CoreGraphics.CGSize) -> CoreGraphics.CGPoint?
  public typealias ScrollableContent = _ScrollableLayoutView<Data, Layout>
  public typealias Root = _ScrollViewRoot<_ScrollableLayoutView<Data, Layout>>
}
@available(iOS 13.0, OSX 10.15, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct RotationGesture : Gesture {
  public var minimumAngleDelta: Angle
  public init(minimumAngleDelta: Angle = .degrees(1))
  public static func _makeGesture(gesture: _GraphValue<RotationGesture>, inputs: _GestureInputs) -> _GestureOutputs<Angle>
  public typealias Value = Angle
  public typealias Body = Never
}
  
extension EnvironmentValues {
  public var undoManager: Foundation.UndoManager? {
    get
  }
}
  
@frozen public struct _AllowsHitTestingModifier : ViewModifier, Equatable {
  public var allowsHitTesting: Bool
  @inlinable public init(allowsHitTesting: Bool) {
        self.allowsHitTesting = allowsHitTesting
    }
  public static func _makeView(modifier: _GraphValue<_AllowsHitTestingModifier>, inputs: _ViewInputs, body: @escaping (_Graph, _ViewInputs) -> _ViewOutputs) -> _ViewOutputs
  public typealias Body = Never
  public static func == (a: _AllowsHitTestingModifier, b: _AllowsHitTestingModifier) -> Bool
}
  
extension View {
  @inlinable public func allowsHitTesting(_ enabled: Bool) -> some View {
        return modifier(_AllowsHitTestingModifier(allowsHitTesting: enabled))
    }
  
}
  
@frozen public struct _AppearanceActionModifier : ViewModifier {
  public var appear: (() -> Void)?
  public var disappear: (() -> Void)?
  @inlinable public init(appear: (() -> Void)? = nil, disappear: (() -> Void)? = nil) {
        self.appear = appear
        self.disappear = disappear
    }
  public static func _makeView(modifier: _GraphValue<_AppearanceActionModifier>, inputs: _ViewInputs, body: @escaping (_Graph, _ViewInputs) -> _ViewOutputs) -> _ViewOutputs
  public typealias Body = Never
}
  
extension View {
  @inlinable public func onAppear(perform action: (() -> Void)? = nil) -> some View {
        return modifier(
            _AppearanceActionModifier(appear: action, disappear: nil))
    }
  
  @inlinable public func onDisappear(perform action: (() -> Void)? = nil) -> some View {
        return modifier(
            _AppearanceActionModifier(appear: nil, disappear: action))
    }
  
}
@available(iOS 13.0, OSX 10.15, watchOS 6.0, *)
@available(tvOS, unavailable)
public struct SwitchToggleStyle : ToggleStyle {
  public init()
  public func makeBody(configuration: SwitchToggleStyle.Configuration) -> some View
  
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI17SwitchToggleStyleV8makeBody13configurationQrAA0dE13ConfigurationV_tF", 0) 🦸
}
  
@frozen public struct ProjectionTransform {
  public var m11: CoreGraphics.CGFloat = 1.0, m12: CoreGraphics.CGFloat = 0.0, m13: CoreGraphics.CGFloat = 0.0
  public var m21: CoreGraphics.CGFloat = 0.0, m22: CoreGraphics.CGFloat = 1.0, m23: CoreGraphics.CGFloat = 0.0
  public var m31: CoreGraphics.CGFloat = 0.0, m32: CoreGraphics.CGFloat = 0.0, m33: CoreGraphics.CGFloat = 1.0
  @inlinable public init() {}
  @inlinable public init(_ m: CoreGraphics.CGAffineTransform) {
        m11 = m.a
        m12 = m.b
        m21 = m.c
        m22 = m.d
        m31 = m.tx
        m32 = m.ty
    }
  @inlinable public init(_ m: QuartzCore.CATransform3D) {
        m11 = m.m11
        m12 = m.m12
        m13 = m.m14
        m21 = m.m21
        m22 = m.m22
        m23 = m.m24
        m31 = m.m41
        m32 = m.m42
        m33 = m.m44
    }
  @inlinable public var isIdentity: Bool {
    get {
        return self == ProjectionTransform()
    }
  }
  @inlinable public var isAffine: Bool {
    get {
        return m13 == 0 && m23 == 0 && m33 == 1
    }
  }
  mutating public func invert() -> Bool
  public func inverted() -> ProjectionTransform
}
  
extension ProjectionTransform : Equatable {
  public static func == (a: ProjectionTransform, b: ProjectionTransform) -> Bool
}
  
extension ProjectionTransform {
  @inlinable public func concatenating(_ rhs: ProjectionTransform) -> ProjectionTransform {
        var m = ProjectionTransform()
        m.m11 = m11 * rhs.m11 + m12 * rhs.m21 + m13 * rhs.m31
        m.m12 = m11 * rhs.m12 + m12 * rhs.m22 + m13 * rhs.m32
        m.m13 = m11 * rhs.m13 + m12 * rhs.m23 + m13 * rhs.m33
        m.m21 = m21 * rhs.m11 + m22 * rhs.m21 + m23 * rhs.m31
        m.m22 = m21 * rhs.m12 + m22 * rhs.m22 + m23 * rhs.m32
        m.m23 = m21 * rhs.m13 + m22 * rhs.m23 + m23 * rhs.m33
        m.m31 = m31 * rhs.m11 + m32 * rhs.m21 + m33 * rhs.m31
        m.m32 = m31 * rhs.m12 + m32 * rhs.m22 + m33 * rhs.m32
        m.m33 = m31 * rhs.m13 + m32 * rhs.m23 + m33 * rhs.m33
        return m
    }
}
  
extension CGPoint {
  public func applying(_ m: ProjectionTransform) -> CoreGraphics.CGPoint
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct MenuButton<Label, Content> : View where Label : View, Content : View {
  public init(label: Label, @ViewBuilder content: () -> Content)
  public var body: some View {
    get
  }
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI10MenuButtonV4bodyQrvp", 0) 🦸<Label, Content>
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension MenuButton where Label == Text {
  public init(_ titleKey: LocalizedStringKey, @ViewBuilder content: () -> Content)
  public init<S>(_ title: S, @ViewBuilder content: () -> Content) where S : StringProtocol
}
  
extension Gesture {
  @inlinable public func simultaneously<Other>(with other: Other) -> SimultaneousGesture<Self, Other> where Other : Gesture {
        return SimultaneousGesture(self, other)
    }
}
  
@frozen public struct SimultaneousGesture<First, Second> where First : Gesture, Second : Gesture {
  @frozen public struct Value {
    public var first: First.Value?
    public var second: Second.Value?
  }
  public var first: First
  public var second: Second
  @inlinable public init(_ first: First, _ second: Second) {
        (self.first, self.second) = (first, second)
    }
  public static func _makeGesture(gesture: _GraphValue<SimultaneousGesture<First, Second>>, inputs: _GestureInputs) -> _GestureOutputs<SimultaneousGesture<First, Second>.Value>
  public typealias Body = Never
}
  
extension SimultaneousGesture.Value : Equatable where First.Value : Equatable, Second.Value : Equatable {
  public static func == (a: SimultaneousGesture<First, Second>.Value, b: SimultaneousGesture<First, Second>.Value) -> Bool
}
  
extension SimultaneousGesture.Value : Hashable where First.Value : Hashable, Second.Value : Hashable {
  public var hashValue: Int {
    get
  }
  public func hash(into hasher: inout Hasher)
}
  
extension Color {
  public enum RGBColorSpace {
    case sRGB
    case sRGBLinear
    case displayP3
    public static func == (a: Color.RGBColorSpace, b: Color.RGBColorSpace) -> Bool
    public var hashValue: Int {
      get
    }
    public func hash(into hasher: inout Hasher)
  }
  public init(_ colorSpace: Color.RGBColorSpace = .sRGB, red: Double, green: Double, blue: Double, opacity: Double = 1)
  public init(_ colorSpace: Color.RGBColorSpace = .sRGB, white: Double, opacity: Double = 1)
  public init(hue: Double, saturation: Double, brightness: Double, opacity: Double = 1)
}
  
@frozen public struct EquatableView<Content> : View where Content : Equatable, Content : View {
  public var content: Content
  @inlinable public init(content: Content) {
        self.content = content
    }
  public static func _makeView(view: _GraphValue<EquatableView<Content>>, inputs: _ViewInputs) -> _ViewOutputs
  public typealias Body = Never
}
  
extension View where Self : Equatable {
  @inlinable public func equatable() -> EquatableView<Self> {
        return EquatableView(content: self)
    }
}
  
public struct __BedtimeTickLabelsLayout {
  public init(center: CoreGraphics.CGPoint, radius: CoreGraphics.CGFloat)
  public typealias AnimatableData = EmptyAnimatableData
  public typealias Body = Never
}
  
extension Color {
  public static var _background: Color {
    get
  }
}
  
extension View {
  public func _addingBackgroundGroup() -> some View
  
  public func _addingBackgroundLayer() -> some View
  
}
@available(iOS 13.0, OSX 10.15, watchOS 6.0, *)
@available(tvOS, unavailable)
extension View {
  @available(tvOS, unavailable)
  public func contextMenu<MenuItems>(@ViewBuilder menuItems: () -> MenuItems) -> some View where MenuItems : View
  
  @available(tvOS, unavailable)
  public func contextMenu<MenuItems>(_ contextMenu: ContextMenu<MenuItems>?) -> some View where MenuItems : View
  
}
@available(iOS 13.0, OSX 10.15, watchOS 6.0, *)
@available(tvOS, unavailable)
public struct ContextMenu<MenuItems> where MenuItems : View {
  public init(@ViewBuilder menuItems: () -> MenuItems)
}
@available(iOS 13.0, OSX 10.15, watchOS 6.0, *)
@available(tvOS, unavailable)
public struct _ContextMenuContainer : _VariadicView.Root {
  public struct Container<Content> : _VariadicView.UnaryViewRoot where Content : View {
    public func body(children: _VariadicView.Children) -> some View
    
    public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI21_ContextMenuContainerV0E0V4body8childrenQrAA22_VariadicView_ChildrenV_tF", 0) 🦸<Content>
  }
  public typealias Tree<MenuItems> = _VariadicView.Tree<_ContextMenuContainer, MenuItems> where MenuItems : View
}
  
public struct __ViewRemovalLayout {
  public init(showsBothRows: Bool)
  public typealias AnimatableData = EmptyAnimatableData
  public typealias Body = Never
}
@available(iOS 13.0, *)
@available(OSX, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct EditButton : View {
  public init()
  public var body: some View {
    get
  }
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI10EditButtonV4bodyQrvp", 0) 🦸
}
  
@frozen public struct _SizedShape<S> : Shape where S : Shape {
  public var shape: S
  public var size: CoreGraphics.CGSize
  @inlinable public init(shape: S, size: CoreGraphics.CGSize) {
        self.shape = shape
        self.size = size
    }
  public func path(in rect: CoreGraphics.CGRect) -> Path
  public typealias AnimatableData = AnimatablePair<S.AnimatableData, CoreGraphics.CGSize.AnimatableData>
  public var animatableData: _SizedShape<S>.AnimatableData {
    get
    set
  }
  public typealias Body = _ShapeView<_SizedShape<S>, ForegroundStyle>
}
  
extension Shape {
  @inlinable public func size(_ size: CoreGraphics.CGSize) -> some Shape {
        return _SizedShape(shape: self, size: size)
    }
  
  @inlinable public func size(width: CoreGraphics.CGFloat, height: CoreGraphics.CGFloat) -> some Shape {
        return size(.init(width: width, height: height))
    }
  
}
  
public protocol _DataProviderView : View where Self.Body == Never {
  associatedtype Provider : _DataProvider
  func initDataProvider() -> Self.Provider
  associatedtype DataBody : View
  func body(data: Self.Provider.Data) -> Self.DataBody
  func updateDataProvider(_ dataProvider: inout Self.Provider)
  func needsUpdateForDataChange(oldData: Self.Provider.Data, newData: Self.Provider.Data) -> Bool
  func transactionForDataChange(oldData: Self.Provider.Data, newData: Self.Provider.Data) -> Transaction
}
  
extension _DataProviderView where Self.Provider.Data : Equatable {
  public func needsUpdateForDataChange(oldData: Self.Provider.Data, newData: Self.Provider.Data) -> Bool
}
  
extension _DataProviderView {
  public func updateDataProvider(_ dataProvider: inout Self.Provider)
  public func needsUpdateForDataChange(oldData: Self.Provider.Data, newData: Self.Provider.Data) -> Bool
  public func transactionForDataChange(oldData: Self.Provider.Data, newData: Self.Provider.Data) -> Transaction
  public static func _makeView(view: _GraphValue<Self>, inputs: _ViewInputs) -> _ViewOutputs
  public static func _makeViewList(view: _GraphValue<Self>, inputs: _ViewListInputs) -> _ViewListOutputs
  public var body: Never {
    get
  }
}
  
public protocol AnimatableModifier : Animatable, ViewModifier {
}
  
extension AnimatableModifier {
  public static func _makeView(modifier: _GraphValue<Self>, inputs: _ViewInputs, body: @escaping (_Graph, _ViewInputs) -> _ViewOutputs) -> _ViewOutputs
  public static func _makeViewList(modifier: _GraphValue<Self>, inputs: _ViewListInputs, body: @escaping (_Graph, _ViewListInputs) -> _ViewListOutputs) -> _ViewListOutputs
}
  
extension View {
  public func gesture<T>(_ gesture: T, including mask: GestureMask = .all) -> some View where T : Gesture
  
  public func highPriorityGesture<T>(_ gesture: T, including mask: GestureMask = .all) -> some View where T : Gesture
  
  public func simultaneousGesture<T>(_ gesture: T, including mask: GestureMask = .all) -> some View where T : Gesture
  
}
  
@frozen public struct GestureMask : OptionSet {
  public let rawValue: UInt32
  public init(rawValue: UInt32)
  public static let none: GestureMask
  public static let gesture: GestureMask
  public static let subviews: GestureMask
  public static let all: GestureMask
  public typealias Element = GestureMask
  public typealias ArrayLiteralElement = GestureMask
  public typealias RawValue = UInt32
}
@available(OSX 10.15, tvOS 13.0, *)
@available(iOS, unavailable)
@available(watchOS, unavailable)
public enum MoveCommandDirection {
  case up
  case down
  case left
  case right
  public static func == (a: MoveCommandDirection, b: MoveCommandDirection) -> Bool
  public var hashValue: Int {
    get
  }
  public func hash(into hasher: inout Hasher)
}
@available(OSX 10.15, tvOS 13.0, *)
@available(iOS, unavailable)
@available(watchOS, unavailable)
extension View {
  @available(iOS, unavailable)
  @available(watchOS, unavailable)
  public func onMoveCommand(perform action: ((MoveCommandDirection) -> Void)?) -> some View
  
  @available(iOS, unavailable)
  @available(watchOS, unavailable)
  public func onExitCommand(perform action: (() -> Void)?) -> some View
  
  @available(iOS, unavailable)
  @available(OSX, unavailable)
  @available(watchOS, unavailable)
  public func onPlayPauseCommand(perform action: (() -> Void)?) -> some View
  
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public func onDeleteCommand(perform action: (() -> Void)?) -> some View
  
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension Gesture {
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public func modifiers(_ modifiers: EventModifiers) -> _ModifiersGesture<Self>
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct _ModifiersGesture<Content> : Gesture where Content : Gesture {
  public static func _makeGesture(gesture: _GraphValue<_ModifiersGesture<Content>>, inputs: _GestureInputs) -> _GestureOutputs<Content.Value>
  public typealias Value = Content.Value
  public typealias Body = Never
}
  
public struct _LayoutTraits : Equatable {
  public static func == (a: _LayoutTraits, b: _LayoutTraits) -> Bool
}
  
extension _LayoutTraits : CustomStringConvertible {
  public var description: String {
    get
  }
}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
@usableFromInline
internal struct IsLinkedGroupTraitKey : _ViewTraitKey {
  @inlinable internal static var defaultValue: Bool {
    get { false }
  }
  @usableFromInline
  internal typealias Value = Bool
}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
extension View {
  @available(iOS, unavailable)
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  @inlinable public func _listLinkedGroup(_ isLinked: Bool) -> some View {
        return _trait(IsLinkedGroupTraitKey.self, isLinked)
    }
  
}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
public struct _IsLinkedGroupTraitKey {
  public static let _linkedGroup: _IsLinkedGroupTraitKey
}
  
extension DynamicViewContent {
  public func onInsert(of acceptedTypeIdentifiers: [String], perform action: @escaping (Int, [Foundation.NSItemProvider]) -> Void) -> some DynamicViewContent
  
}
  
public enum LayoutDirection : Hashable, CaseIterable {
  case leftToRight
  case rightToLeft
  public static func == (a: LayoutDirection, b: LayoutDirection) -> Bool
  public var hashValue: Int {
    get
  }
  public func hash(into hasher: inout Hasher)
  public typealias AllCases = [LayoutDirection]
  public static var allCases: [LayoutDirection] {
    get
  }
}
  
extension EnvironmentValues {
  public var layoutDirection: LayoutDirection {
    get
    set
  }
}
  
extension Transaction {
  public init(animation: Animation?)
  public var animation: Animation? {
    get
    set
  }
  public var disablesAnimations: Bool {
    get
    set
  }
}
  
public protocol ButtonStyle {
  associatedtype Body : View
  func makeBody(configuration: Self.Configuration) -> Self.Body
  typealias Configuration = ButtonStyleConfiguration
}
  
public struct ButtonStyleConfiguration {
  public struct Label : View {
    public typealias Body = Never
  }
  public let label: ButtonStyleConfiguration.Label
  public let isPressed: Bool
}
  
extension View {
  public func buttonStyle<S>(_ style: S) -> some View where S : ButtonStyle
  
}
  
extension View {
  @inlinable public func transformAnchorPreference<A, K>(key _: K.Type = K.self, value: Anchor<A>.Source, transform: @escaping (inout K.Value, Anchor<A>) -> Void) -> some View where K : PreferenceKey {
        return modifier(_AnchorTransformModifier<A, K>(
            anchor: value, transform: transform))
    }
  
}
  
@frozen public struct _AnchorTransformModifier<AnchorValue, Key> : ViewModifier where Key : PreferenceKey {
  public var anchor: Anchor<AnchorValue>.Source
  public var transform: (inout Key.Value, Anchor<AnchorValue>) -> Void
  @inlinable public init(anchor: Anchor<AnchorValue>.Source, transform: @escaping (inout Key.Value, Anchor<AnchorValue>) -> Void) {
        self.anchor = anchor
        self.transform = transform
    }
  public static func _makeView(modifier: _GraphValue<_AnchorTransformModifier<AnchorValue, Key>>, inputs: _ViewInputs, body: @escaping (_Graph, _ViewInputs) -> _ViewOutputs) -> _ViewOutputs
  public typealias Body = Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, *)
@available(watchOS, unavailable)
public struct _DisclosureIndicator : View {
  public init()
  public var body: some View {
    get
  }
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI20_DisclosureIndicatorV4bodyQrvp", 0) 🦸
}
  
@frozen public struct _BackgroundModifier<Background> : ViewModifier where Background : View {
  public var background: Background
  public var alignment: Alignment
  @inlinable public init(background: Background, alignment: Alignment = .center) {
        self.background = background
        self.alignment = alignment
    }
  public static func _makeView(modifier: _GraphValue<_BackgroundModifier<Background>>, inputs: _ViewInputs, body: @escaping (_Graph, _ViewInputs) -> _ViewOutputs) -> _ViewOutputs
  public typealias Body = Never
}
  
extension _BackgroundModifier : Equatable where Background : Equatable {
  public static func == (a: _BackgroundModifier<Background>, b: _BackgroundModifier<Background>) -> Bool
}
  
extension View {
  @inlinable public func background<Background>(_ background: Background, alignment: Alignment = .center) -> some View where Background : View {
        return modifier(
            _BackgroundModifier(background: background, alignment: alignment))
    }
  
}
  
@frozen public struct _OverlayModifier<Overlay> : ViewModifier where Overlay : View {
  public var overlay: Overlay
  public var alignment: Alignment
  @inlinable public init(overlay: Overlay, alignment: Alignment = .center) {
        self.overlay = overlay
        self.alignment = alignment
    }
  public static func _makeView(modifier: _GraphValue<_OverlayModifier<Overlay>>, inputs: _ViewInputs, body: @escaping (_Graph, _ViewInputs) -> _ViewOutputs) -> _ViewOutputs
  public typealias Body = Never
}
  
extension _OverlayModifier : Equatable where Overlay : Equatable {
  public static func == (a: _OverlayModifier<Overlay>, b: _OverlayModifier<Overlay>) -> Bool
}
  
extension View {
  @inlinable public func overlay<Overlay>(_ overlay: Overlay, alignment: Alignment = .center) -> some View where Overlay : View {
        return modifier(_OverlayModifier(
            overlay: overlay, alignment: alignment))
    }
  
  @inlinable public func border<S>(_ content: S, width: CoreGraphics.CGFloat = 1) -> some View where S : ShapeStyle {
        return overlay(Rectangle().strokeBorder(content, lineWidth: width))
    }
  
}
  
public struct SecureField<Label> : View where Label : View {
  public var body: some View {
    get
  }
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI11SecureFieldV4bodyQrvp", 0) 🦸<Label>
}
  
extension SecureField where Label == Text {
  public init(_ titleKey: LocalizedStringKey, text: Binding<String>, onCommit: @escaping () -> Void = {})
  @_disfavoredOverload public init<S>(_ title: S, text: Binding<String>, onCommit: @escaping () -> Void = {}) where S : StringProtocol
}
  
public struct _ProposedSize {
}
  
extension _ProposedSize : Hashable {
  public static func == (a: _ProposedSize, b: _ProposedSize) -> Bool
  public var hashValue: Int {
    get
  }
  public func hash(into hasher: inout Hasher)
}
  
@frozen public enum ContentMode : Hashable, CaseIterable {
  case fit
  case fill
  public static func == (a: ContentMode, b: ContentMode) -> Bool
  public var hashValue: Int {
    get
  }
  public func hash(into hasher: inout Hasher)
  public typealias AllCases = [ContentMode]
  public static var allCases: [ContentMode] {
    get
  }
}
  
@frozen public struct _AspectRatioLayout {
  public var aspectRatio: CoreGraphics.CGFloat?
  public var contentMode: ContentMode
  @inlinable public init(aspectRatio: CoreGraphics.CGFloat? = nil, contentMode: ContentMode) {
        self.aspectRatio = aspectRatio
        self.contentMode = contentMode
    }
  public typealias Body = Never
  public typealias AnimatableData = EmptyAnimatableData
}
  
extension View {
  @inlinable public func aspectRatio(_ aspectRatio: CoreGraphics.CGFloat? = nil, contentMode: ContentMode) -> some View {
        return modifier(_AspectRatioLayout(
            aspectRatio: aspectRatio, contentMode: contentMode))
    }
  
  @inlinable public func aspectRatio(_ aspectRatio: CoreGraphics.CGSize, contentMode: ContentMode) -> some View {
        return self.aspectRatio(
            aspectRatio.width / aspectRatio.height, contentMode: contentMode)
    }
  
  @inlinable public func scaledToFit() -> some View {
        return aspectRatio(contentMode: .fit)
    }
  
  @inlinable public func scaledToFill() -> some View {
        return aspectRatio(contentMode: .fill)
    }
  
}
  
public protocol _ScrollableLayout : Animatable {
  associatedtype StateType = Void
  static func initialState() -> Self.StateType
  func update(state: inout Self.StateType, proxy: inout _ScrollableLayoutProxy)
  associatedtype ItemModifier : ViewModifier = EmptyModifier
  func modifier(for item: _ScrollableLayoutItem, layout: _ScrollLayout, state: Self.StateType) -> Self.ItemModifier
  func decelerationTarget(contentOffset: CoreGraphics.CGPoint, originalContentOffset: CoreGraphics.CGPoint, velocity: _Velocity<CoreGraphics.CGSize>, size: CoreGraphics.CGSize) -> CoreGraphics.CGPoint?
}
  
extension _ScrollableLayout where Self.StateType == Void {
  public static func initialState() -> Self.StateType
}
  
extension _ScrollableLayout where Self.ItemModifier == EmptyModifier {
  public func modifier(for item: _ScrollableLayoutItem, layout: _ScrollLayout, state: Self.StateType) -> Self.ItemModifier
}
  
extension _ScrollableLayout {
  public func decelerationTarget(contentOffset: CoreGraphics.CGPoint, originalContentOffset: CoreGraphics.CGPoint, velocity: _Velocity<CoreGraphics.CGSize>, size: CoreGraphics.CGSize) -> CoreGraphics.CGPoint?
  public subscript<T>(data: T) -> _ScrollView<_ScrollableLayoutView<T, Self>> where T : RandomAccessCollection, T.Element : View, T.Index : Hashable {
    get
  }
}
  
extension _ScrollableLayout where Self : RandomAccessCollection, Self.Element : View, Self.Index : Hashable {
  public subscript() -> _ScrollView<_ScrollableLayoutView<Self, Self>> {
    get
  }
}
  
public struct _ScrollableLayoutProxy : RandomAccessCollection {
  public let size: CoreGraphics.CGSize
  public let visibleRect: CoreGraphics.CGRect
  public let count: Int
  public var visibleItems: [_ScrollableLayoutItem]
  public var contentSize: CoreGraphics.CGSize
  public var validRect: CoreGraphics.CGRect
  public var startIndex: Int {
    get
  }
  public var endIndex: Int {
    get
  }
  public subscript(index: Int) -> AnyHashable {
    get
  }
  mutating public func size(of identifier: AnyHashable, in size: CoreGraphics.CGSize, validatingContent: Bool = true) -> CoreGraphics.CGSize
  mutating public func size(at index: Int, in size: CoreGraphics.CGSize, validatingContent: Bool = true) -> CoreGraphics.CGSize
  mutating public func removeSize(of identifier: AnyHashable)
  mutating public func removeAllSizes()
  public typealias Element = AnyHashable
  public typealias Index = Int
  public typealias SubSequence = Slice<_ScrollableLayoutProxy>
  public typealias Indices = Range<Int>
  public typealias Iterator = IndexingIterator<_ScrollableLayoutProxy>
}
  
public struct _ScrollableLayoutItem : Equatable {
  public var id: AnyHashable
  public var proposedSize: CoreGraphics.CGSize {
    get
  }
  public var anchor: UnitPoint {
    get
  }
  public var anchorPosition: CoreGraphics.CGPoint {
    get
  }
  public init(id: AnyHashable, proposedSize: CoreGraphics.CGSize, anchoring anchor: UnitPoint = .topLeading, at position: CoreGraphics.CGPoint)
  public static func == (a: _ScrollableLayoutItem, b: _ScrollableLayoutItem) -> Bool
}
  
@frozen public struct _FixedSizeLayout {
  @inlinable public init(horizontal: Bool = true, vertical: Bool = true) {
        self.horizontal = horizontal
        self.vertical = vertical
    }
  @usableFromInline
  internal var horizontal: Bool
  @usableFromInline
  internal var vertical: Bool
}
extension _FixedSizeLayout {
  public typealias Body = Never
  public typealias AnimatableData = EmptyAnimatableData
}
  
extension View {
  @inlinable public func fixedSize(horizontal: Bool, vertical: Bool) -> some View {
        return modifier(
            _FixedSizeLayout(horizontal: horizontal, vertical: vertical))
    }
  
  @inlinable public func fixedSize() -> some View {
        return fixedSize(horizontal: true, vertical: true)
    }
  
}
  
@frozen public struct ForegroundStyle {
  @inlinable public init() {}
}
  
extension View {
  @inlinable public func foregroundColor(_ color: Color?) -> some View {
        return environment(\.foregroundColor, color)
    }
  
}
  
extension EnvironmentValues {
  @usableFromInline
  internal var foregroundColor: Color? {
    get
    set
  }
}
  
public struct __FourUpLayout {
  public init()
  public typealias AnimatableData = EmptyAnimatableData
  public typealias Body = Never
}
  
public enum _VariadicView {
  public typealias Root = _VariadicView_Root
  public typealias ViewRoot = _VariadicView_ViewRoot
  public typealias Children = _VariadicView_Children
  public typealias UnaryViewRoot = _VariadicView_UnaryViewRoot
  public typealias MultiViewRoot = _VariadicView_MultiViewRoot
  @frozen public struct Tree<Root, Content> where Root : _VariadicView_Root {
    public var root: Root
    public var content: Content
    @inlinable internal init(root: Root, content: Content) {
            self.root = root
            self.content = content
        }
    @inlinable public init(_ root: Root, @ViewBuilder content: () -> Content) {
            self.root = root
            self.content = content()
        }
  }
}
  
public protocol _VariadicView_Root {
  static var _viewListOptions: Int { get }
}
  
extension _VariadicView_Root {
  public static var _viewListOptions: Int {
    get
  }
}
  
public protocol _VariadicView_ViewRoot : _VariadicView_Root {
  static func _makeView(root: _GraphValue<Self>, inputs: _ViewInputs, body: (_Graph, _ViewInputs) -> _ViewListOutputs) -> _ViewOutputs
  static func _makeViewList(root: _GraphValue<Self>, inputs: _ViewListInputs, body: @escaping (_Graph, _ViewListInputs) -> _ViewListOutputs) -> _ViewListOutputs
  associatedtype Body : View
  func body(children: _VariadicView.Children) -> Self.Body
}
  
extension _VariadicView_ViewRoot where Self.Body == Never {
  public func body(children: _VariadicView.Children) -> Never
}
  
public protocol _VariadicView_UnaryViewRoot : _VariadicView_ViewRoot {
}
  
extension _VariadicView_UnaryViewRoot {
  public static func _makeViewList(root: _GraphValue<Self>, inputs: _ViewListInputs, body: @escaping (_Graph, _ViewListInputs) -> _ViewListOutputs) -> _ViewListOutputs
}
  
public protocol _VariadicView_MultiViewRoot : _VariadicView_ViewRoot {
}
  
extension _VariadicView_MultiViewRoot {
  public static func _makeView(root: _GraphValue<Self>, inputs: _ViewInputs, body: (_Graph, _ViewInputs) -> _ViewListOutputs) -> _ViewOutputs
}
  
public struct _VariadicView_Children {
}
  
extension _VariadicView_ViewRoot {
  public static func _makeView(root: _GraphValue<Self>, inputs: _ViewInputs, body: (_Graph, _ViewInputs) -> _ViewListOutputs) -> _ViewOutputs
  public static func _makeViewList(root: _GraphValue<Self>, inputs: _ViewListInputs, body: @escaping (_Graph, _ViewListInputs) -> _ViewListOutputs) -> _ViewListOutputs
}
  
extension _VariadicView.Tree : View where Root : _VariadicView_ViewRoot, Content : View {
  public typealias Body = Never
  public static func _makeView(view: _GraphValue<_VariadicView.Tree<Root, Content>>, inputs: _ViewInputs) -> _ViewOutputs
  public static func _makeViewList(view: _GraphValue<_VariadicView.Tree<Root, Content>>, inputs: _ViewListInputs) -> _ViewListOutputs
}
@available(iOS 13.0, OSX 10.15, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct Stepper<Label> : View where Label : View {
  public init(onIncrement: (() -> Void)?, onDecrement: (() -> Void)?, onEditingChanged: @escaping (Bool) -> Void = { _ in }, @ViewBuilder label: () -> Label)
  public var body: some View {
    get
  }
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI7StepperV4bodyQrvp", 0) 🦸<Label>
}
@available(iOS 13.0, OSX 10.15, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension Stepper {
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public init<V>(value: Binding<V>, step: V.Stride = 1, onEditingChanged: @escaping (Bool) -> Void = { _ in }, @ViewBuilder label: () -> Label) where V : Strideable
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public init<V>(value: Binding<V>, in bounds: ClosedRange<V>, step: V.Stride = 1, onEditingChanged: @escaping (Bool) -> Void = { _ in }, @ViewBuilder label: () -> Label) where V : Strideable
}
@available(iOS 13.0, OSX 10.15, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension Stepper where Label == Text {
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public init(_ titleKey: LocalizedStringKey, onIncrement: (() -> Void)?, onDecrement: (() -> Void)?, onEditingChanged: @escaping (Bool) -> Void = { _ in })
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  @_disfavoredOverload public init<S>(_ title: S, onIncrement: (() -> Void)?, onDecrement: (() -> Void)?, onEditingChanged: @escaping (Bool) -> Void = { _ in }) where S : StringProtocol
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public init<V>(_ titleKey: LocalizedStringKey, value: Binding<V>, step: V.Stride = 1, onEditingChanged: @escaping (Bool) -> Void = { _ in }) where V : Strideable
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  @_disfavoredOverload public init<S, V>(_ title: S, value: Binding<V>, step: V.Stride = 1, onEditingChanged: @escaping (Bool) -> Void = { _ in }) where S : StringProtocol, V : Strideable
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public init<V>(_ titleKey: LocalizedStringKey, value: Binding<V>, in bounds: ClosedRange<V>, step: V.Stride = 1, onEditingChanged: @escaping (Bool) -> Void = { _ in }) where V : Strideable
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  @_disfavoredOverload public init<S, V>(_ title: S, value: Binding<V>, in bounds: ClosedRange<V>, step: V.Stride = 1, onEditingChanged: @escaping (Bool) -> Void = { _ in }) where S : StringProtocol, V : Strideable
}
  
extension EnvironmentValues {
  public var defaultMinListRowHeight: CoreGraphics.CGFloat {
    get
    set
  }
  public var defaultMinListHeaderHeight: CoreGraphics.CGFloat? {
    get
    set
  }
}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
extension EnvironmentValues {
  @available(iOS, unavailable)
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  public var _plainListSectionSpacing: CoreGraphics.CGFloat? {
    get
    set
  }
}
  
@frozen public struct UnitPoint : Hashable {
  public var x: CoreGraphics.CGFloat
  public var y: CoreGraphics.CGFloat
  @inlinable public init() {
        self.init(x: 0, y: 0)
    }
  @inlinable public init(x: CoreGraphics.CGFloat, y: CoreGraphics.CGFloat) {
        self.x = x
        self.y = y
    }
  public static let zero: UnitPoint
  public static let center: UnitPoint
  public static let leading: UnitPoint
  public static let trailing: UnitPoint
  public static let top: UnitPoint
  public static let bottom: UnitPoint
  public static let topLeading: UnitPoint
  public static let topTrailing: UnitPoint
  public static let bottomLeading: UnitPoint
  public static let bottomTrailing: UnitPoint
  public static func == (a: UnitPoint, b: UnitPoint) -> Bool
  public var hashValue: Int {
    get
  }
  public func hash(into hasher: inout Hasher)
}
  
extension UnitPoint : Animatable {
  public typealias AnimatableData = AnimatablePair<CoreGraphics.CGFloat, CoreGraphics.CGFloat>
  public var animatableData: UnitPoint.AnimatableData {
    get
    set
  }
}
  
public protocol _ViewTest : _Test {
  associatedtype RootView : View
  func initRootView() -> Self.RootView
  func initSize() -> CoreGraphics.CGSize
}
  
extension _ViewTest {
  public func setUpTest()
  public func tearDownTest()
  public var rootView: Self.RootView {
    get
  }
  public func viewForIdentifier<V>(_ identifier: AnyHashable, _ type: V.Type = V.self) -> V? where V : View
  public func stateForIdentifier<I, S, V>(_ id: I, type _: S.Type = S.self, in _: V.Type = V.self) -> Binding<S>? where I : Hashable, V : View
  public func render(seconds: Double = 1.0 / 60.0)
  public func initSize() -> CoreGraphics.CGSize
  public func setSize(_ size: CoreGraphics.CGSize)
  public func setEnvironment(_ environment: EnvironmentValues)
  public func resetEvents()
  public func loop()
  public func turnRunloop(times: Int = 1)
}
  
extension _ViewTest {
  public func rootState<S>(type _: S.Type = S.self) -> Binding<S>
  public func rootState<S, V>(type _: S.Type = S.self, in _: V.Type) -> Binding<S> where V : View
}
  
public protocol PickerStyle {
  static func _makeView<SelectionValue>(value: _GraphValue<_PickerValue<Self, SelectionValue>>, inputs: _ViewInputs) -> _ViewOutputs where SelectionValue : Hashable
  static func _makeViewList<SelectionValue>(value: _GraphValue<_PickerValue<Self, SelectionValue>>, inputs: _ViewListInputs) -> _ViewListOutputs where SelectionValue : Hashable
}
  
public struct _PickerValue<Style, SelectionValue> where Style : PickerStyle, SelectionValue : Hashable {
}
  
extension View {
  public func pickerStyle<S>(_ style: S) -> some View where S : PickerStyle
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, *)
@available(watchOS, unavailable)
public struct SegmentedPickerStyle : PickerStyle {
  public init()
  public static func _makeView<SelectionValue>(value: _GraphValue<_PickerValue<SegmentedPickerStyle, SelectionValue>>, inputs: _ViewInputs) -> _ViewOutputs where SelectionValue : Hashable
  public static func _makeViewList<SelectionValue>(value: _GraphValue<_PickerValue<SegmentedPickerStyle, SelectionValue>>, inputs: _ViewListInputs) -> _ViewListOutputs where SelectionValue : Hashable
}
  
@frozen public struct _PaddingLayout {
  public var edges: Edge.Set
  public var insets: EdgeInsets?
  @inlinable public init(edges: Edge.Set = .all, insets: EdgeInsets?) {
        self.edges = edges
        self.insets = insets
    }
  public typealias Body = Never
  public typealias AnimatableData = EmptyAnimatableData
}
  
extension View {
  @inlinable public func padding(_ insets: EdgeInsets) -> some View {
        return modifier(_PaddingLayout(insets: insets))
    }
  
  @inlinable public func padding(_ edges: Edge.Set = .all, _ length: CoreGraphics.CGFloat? = nil) -> some View {
        let insets = length.map { EdgeInsets(_all: $0) }
        return modifier(_PaddingLayout(edges: edges, insets: insets))
    }
  
  @inlinable public func padding(_ length: CoreGraphics.CGFloat) -> some View {
        return padding(.all, length)
    }
  
}
  
@frozen public struct _AnchoredShapeStyle<S> : ShapeStyle where S : ShapeStyle {
  public var style: S
  public var bounds: CoreGraphics.CGRect
  @inlinable internal init(style: S, bounds: CoreGraphics.CGRect) {
        self.style = style
        self.bounds = bounds
    }
  public static func _makeView<T>(view: _GraphValue<_ShapeView<T, _AnchoredShapeStyle<S>>>, inputs: _ViewInputs) -> _ViewOutputs where T : Shape
}
  
extension ShapeStyle {
  @inlinable public func `in`(_ rect: CoreGraphics.CGRect) -> some ShapeStyle {
        return _AnchoredShapeStyle(style: self, bounds: rect)
    }
  
}
  
@frozen public enum TextAlignment : Hashable, CaseIterable {
  case leading
  case center
  case trailing
  public static func == (a: TextAlignment, b: TextAlignment) -> Bool
  public var hashValue: Int {
    get
  }
  public func hash(into hasher: inout Hasher)
  public typealias AllCases = [TextAlignment]
  public static var allCases: [TextAlignment] {
    get
  }
}
  
@frozen public enum _VAlignment {
  case top
  case center
  case bottom
  public static func == (a: _VAlignment, b: _VAlignment) -> Bool
  public var hashValue: Int {
    get
  }
  public func hash(into hasher: inout Hasher)
}
  
@frozen public struct _AlignmentLayout {
  public var horizontal: TextAlignment?
  public var vertical: _VAlignment?
  @inlinable public init(horizontal: TextAlignment? = nil, vertical: _VAlignment? = nil) {
        self.horizontal = horizontal
        self.vertical = vertical
    }
  public typealias Body = Never
  public typealias AnimatableData = EmptyAnimatableData
}
  
@frozen public struct _OffsetEffect : GeometryEffect, Equatable {
  public var offset: CoreGraphics.CGSize
  @inlinable public init(offset: CoreGraphics.CGSize) {
        self.offset = offset
    }
  public func effectValue(size: CoreGraphics.CGSize) -> ProjectionTransform
  public var animatableData: CoreGraphics.CGSize.AnimatableData {
    get
    set
  }
  public static func _makeView(modifier: _GraphValue<_OffsetEffect>, inputs: _ViewInputs, body: @escaping (_Graph, _ViewInputs) -> _ViewOutputs) -> _ViewOutputs
  public typealias Body = Never
  public static func == (a: _OffsetEffect, b: _OffsetEffect) -> Bool
  public typealias AnimatableData = CoreGraphics.CGSize.AnimatableData
}
  
extension View {
  @inlinable public func offset(_ offset: CoreGraphics.CGSize) -> some View {
        return modifier(_OffsetEffect(offset: offset))
    }
  
  @inlinable public func offset(x: CoreGraphics.CGFloat = 0, y: CoreGraphics.CGFloat = 0) -> some View {
        return offset(CGSize(width: x, height: y))
    }
  
}
  
extension AnyTransition {
  public static func offset(_ offset: CoreGraphics.CGSize) -> AnyTransition
  public static func offset(x: CoreGraphics.CGFloat = 0, y: CoreGraphics.CGFloat = 0) -> AnyTransition
}
  
@frozen public struct _AlignmentWritingModifier : ViewModifier {
  @usableFromInline
  internal let key: AlignmentKey
  @usableFromInline
  internal let computeValue: (ViewDimensions) -> CoreGraphics.CGFloat
  @inlinable internal init(key: AlignmentKey, computeValue: @escaping (ViewDimensions) -> CoreGraphics.CGFloat) {
        self.key = key
        self.computeValue = computeValue
    }
  public static func _makeView(modifier: _GraphValue<_AlignmentWritingModifier>, inputs: _ViewInputs, body: @escaping (_Graph, _ViewInputs) -> _ViewOutputs) -> _ViewOutputs
  public typealias Body = Never
}
  
extension View {
  @inlinable public func alignmentGuide(_ g: HorizontalAlignment, computeValue: @escaping (ViewDimensions) -> CoreGraphics.CGFloat) -> some View {
        return modifier(
            _AlignmentWritingModifier(key: g.key, computeValue: computeValue))
    }
  
  @inlinable public func alignmentGuide(_ g: VerticalAlignment, computeValue: @escaping (ViewDimensions) -> CoreGraphics.CGFloat) -> some View {
        return modifier(
            _AlignmentWritingModifier(key: g.key, computeValue: computeValue))
    }
  
}
  
@frozen public struct EventModifiers : OptionSet {
  public let rawValue: Int
  public init(rawValue: Int)
  public static let capsLock: EventModifiers
  public static let shift: EventModifiers
  public static let control: EventModifiers
  public static let option: EventModifiers
  public static let command: EventModifiers
  public static let numericPad: EventModifiers
  public static let function: EventModifiers
  public static let all: EventModifiers
  public typealias RawValue = Int
  public typealias Element = EventModifiers
  public typealias ArrayLiteralElement = EventModifiers
}
  
public struct _ViewOutputs {
}
  
@frozen public struct _PositionLayout {
  public var position: CoreGraphics.CGPoint
  @inlinable public init(position: CoreGraphics.CGPoint) {
        self.position = position
    }
  public typealias Body = Never
  public typealias AnimatableData = EmptyAnimatableData
}
  
extension View {
  @inlinable public func position(_ position: CoreGraphics.CGPoint) -> some View {
        return modifier(_PositionLayout(position: position))
    }
  
  @inlinable public func position(x: CoreGraphics.CGFloat = 0, y: CoreGraphics.CGFloat = 0) -> some View {
        return position(CGPoint(x: x, y: y))
    }
  
}
@usableFromInline
internal struct ListRowPlatterColorTraitKey : _ViewTraitKey {
  @inlinable internal static var defaultValue: Color? {
    get { nil }
  }
  @usableFromInline
  internal typealias Value = Color?
}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
extension View {
  @available(iOS, unavailable)
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  @inlinable public func listRowPlatterColor(_ color: Color?) -> some View {
        return _trait(ListRowPlatterColorTraitKey.self, color)
    }
  
}
public func __previewThunksHaveFinishedLoading()
  
@frozen public struct _SafeAreaIgnoringLayout {
  public var edges: Edge.Set
  @inlinable public init(edges: Edge.Set = .all) {
        self.edges = edges
    }
  public typealias Body = Never
  public typealias AnimatableData = EmptyAnimatableData
}
  
extension View {
  @inlinable public func edgesIgnoringSafeArea(_ edges: Edge.Set) -> some View {
        return modifier(_SafeAreaIgnoringLayout(edges: edges))
    }
  
}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
public struct _DigitalCrownModifier : ViewModifier {
  public static func _makeView(modifier: _GraphValue<_DigitalCrownModifier>, inputs: _ViewInputs, body: @escaping (_Graph, _ViewInputs) -> _ViewOutputs) -> _ViewOutputs
  public typealias Body = Never
}
@available(iOS 13.0, OSX 10.15, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct RoundedBorderTextFieldStyle : TextFieldStyle {
  public init()
  public func _body(configuration: TextField<RoundedBorderTextFieldStyle._Label>) -> some View
  
  public typealias _Body = @_opaqueReturnTypeOf("$s7SwiftUI27RoundedBorderTextFieldStyleV5_body13configurationQrAA0eF0VyAA01_efG5LabelVG_tF", 0) 🦸
}
  
public struct __IconLayout {
  public init(columnCount: Int = 4, rowCount: Int? = nil, openFolderIndex: Int? = nil, openFolderScale: CoreGraphics.CGFloat = 1.0, iconScale: CoreGraphics.CGFloat = 1.0)
  public typealias AnimatableData = EmptyAnimatableData
  public typealias Body = Never
}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
public struct _WKStoryboardContent : View {
  public var body: some View {
    get
  }
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI20_WKStoryboardContentV4bodyQrvp", 0) 🦸
}
  
@frozen public struct _EnvironmentKeyWritingModifier<Value> : ViewModifier, _GraphInputsModifier {
  public var keyPath: WritableKeyPath<EnvironmentValues, Value>
  public var value: Value
  @inlinable public init(keyPath: WritableKeyPath<EnvironmentValues, Value>, value: Value) {
        self.keyPath = keyPath
        self.value = value
    }
  public static func _makeInputs(modifier: _GraphValue<_EnvironmentKeyWritingModifier<Value>>, inputs: inout _GraphInputs)
  public typealias Body = Never
}
  
extension View {
  @inlinable public func environment<V>(_ keyPath: WritableKeyPath<EnvironmentValues, V>, _ value: V) -> some View {
        return modifier(_EnvironmentKeyWritingModifier(
            keyPath: keyPath, value: value))
    }
  
}
  
public struct AccessibilityChildBehavior : Hashable {
  public func hash(into hasher: inout Hasher)
  public static func == (lhs: AccessibilityChildBehavior, rhs: AccessibilityChildBehavior) -> Bool
  public var hashValue: Int {
    get
  }
}
  
extension AccessibilityChildBehavior {
  public static let ignore: AccessibilityChildBehavior
  public static let contain: AccessibilityChildBehavior
  public static let combine: AccessibilityChildBehavior
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct PasteButton : View {
  public init(supportedTypes: [String], payloadAction: @escaping ([Foundation.NSItemProvider]) -> Void)
  public init<Payload>(supportedTypes: [String], validator: @escaping ([Foundation.NSItemProvider]) -> Payload?, payloadAction: @escaping (Payload) -> Void)
  public var body: some View {
    get
  }
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI11PasteButtonV4bodyQrvp", 0) 🦸
}
  
@frozen public struct Image : Equatable {
  internal var provider: AnyImageProviderBox
  public static func == (lhs: Image, rhs: Image) -> Bool
}
  
extension Image {
  public typealias Body = Never
}
@usableFromInline
internal class AnyImageProviderBox {
  @objc @usableFromInline
  deinit
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct DefaultMenuButtonStyle : MenuButtonStyle {
  public init()
  public func _body(configuration: DefaultMenuButtonStyle._Configuration) -> some View
  
  public typealias _Body = @_opaqueReturnTypeOf("$s7SwiftUI22DefaultMenuButtonStyleV5_body13configurationQrAA01_deF13ConfigurationV_tF", 0) 🦸
}
  
extension View {
  @inlinable public func zIndex(_ value: Double) -> some View {
        return _trait(ZIndexTraitKey.self, value)
    }
  
}
@usableFromInline
internal struct ZIndexTraitKey : _ViewTraitKey {
  @inlinable internal static var defaultValue: Double {
    get { 0.0 }
  }
  @usableFromInline
  internal typealias Value = Double
}
@available(iOS 13.0, OSX 10.15, watchOS 6.0, *)
@available(tvOS, unavailable)
public struct DragGesture {
  public struct Value : Equatable {
    public var time: Foundation.Date
    public var location: CoreGraphics.CGPoint
    public var startLocation: CoreGraphics.CGPoint
    public var translation: CoreGraphics.CGSize {
      get
    }
    public var predictedEndLocation: CoreGraphics.CGPoint {
      get
    }
    public var predictedEndTranslation: CoreGraphics.CGSize {
      get
    }
    public static func == (a: DragGesture.Value, b: DragGesture.Value) -> Bool
  }
  public var minimumDistance: CoreGraphics.CGFloat
  public var coordinateSpace: CoordinateSpace
  public init(minimumDistance: CoreGraphics.CGFloat = 10, coordinateSpace: CoordinateSpace = .local)
  public static func _makeGesture(gesture: _GraphValue<DragGesture>, inputs: _GestureInputs) -> _GestureOutputs<DragGesture.Value>
  public typealias Body = Never
}
  
public struct DefaultToggleStyle : ToggleStyle {
  public init()
  public func makeBody(configuration: DefaultToggleStyle.Configuration) -> some View
  
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI18DefaultToggleStyleV8makeBody13configurationQrAA0dE13ConfigurationV_tF", 0) 🦸
}
@available(iOS 13.0, OSX 10.15, watchOS 6.0, *)
@available(tvOS, unavailable)
public struct Slider<Label, ValueLabel> : View where Label : View, ValueLabel : View {
  public var body: some View {
    get
  }
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI6SliderV4bodyQrvp", 0) 🦸<Label, ValueLabel>
}
@available(iOS 13.0, OSX 10.15, watchOS 6.0, *)
@available(tvOS, unavailable)
extension Slider {
  @available(tvOS, unavailable)
  public init<V>(value: Binding<V>, in bounds: ClosedRange<V> = 0...1, onEditingChanged: @escaping (Bool) -> Void = { _ in }, minimumValueLabel: ValueLabel, maximumValueLabel: ValueLabel, @ViewBuilder label: () -> Label) where V : BinaryFloatingPoint, V.Stride : BinaryFloatingPoint
  public init<V>(value: Binding<V>, in bounds: ClosedRange<V>, step: V.Stride = 1, onEditingChanged: @escaping (Bool) -> Void = { _ in }, minimumValueLabel: ValueLabel, maximumValueLabel: ValueLabel, @ViewBuilder label: () -> Label) where V : BinaryFloatingPoint, V.Stride : BinaryFloatingPoint
}
@available(iOS 13.0, OSX 10.15, watchOS 6.0, *)
@available(tvOS, unavailable)
extension Slider where ValueLabel == EmptyView {
  @available(tvOS, unavailable)
  public init<V>(value: Binding<V>, in bounds: ClosedRange<V> = 0...1, onEditingChanged: @escaping (Bool) -> Void = { _ in }, @ViewBuilder label: () -> Label) where V : BinaryFloatingPoint, V.Stride : BinaryFloatingPoint
  @available(tvOS, unavailable)
  public init<V>(value: Binding<V>, in bounds: ClosedRange<V>, step: V.Stride = 1, onEditingChanged: @escaping (Bool) -> Void = { _ in }, @ViewBuilder label: () -> Label) where V : BinaryFloatingPoint, V.Stride : BinaryFloatingPoint
}
@available(iOS 13.0, OSX 10.15, watchOS 6.0, *)
@available(tvOS, unavailable)
extension Slider where Label == EmptyView, ValueLabel == EmptyView {
  @available(tvOS, unavailable)
  public init<V>(value: Binding<V>, in bounds: ClosedRange<V> = 0...1, onEditingChanged: @escaping (Bool) -> Void = { _ in }) where V : BinaryFloatingPoint, V.Stride : BinaryFloatingPoint
  @available(tvOS, unavailable)
  public init<V>(value: Binding<V>, in bounds: ClosedRange<V>, step: V.Stride = 1, onEditingChanged: @escaping (Bool) -> Void = { _ in }) where V : BinaryFloatingPoint, V.Stride : BinaryFloatingPoint
}
  
@frozen public struct _TransformEffect : GeometryEffect, Equatable {
  public var transform: CoreGraphics.CGAffineTransform
  @inlinable public init(transform: CoreGraphics.CGAffineTransform) {
        self.transform = transform
    }
  public func effectValue(size: CoreGraphics.CGSize) -> ProjectionTransform
  public typealias Body = Never
  public static func == (a: _TransformEffect, b: _TransformEffect) -> Bool
  public typealias AnimatableData = EmptyAnimatableData
}
  
extension View {
  @inlinable public func transformEffect(_ transform: CoreGraphics.CGAffineTransform) -> some View {
        return modifier(_TransformEffect(transform: transform))
    }
  
}
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(OSX, unavailable)
public struct ActionSheet {
  public init(title: Text, message: Text? = nil, buttons: [ActionSheet.Button] = [.cancel()])
  public typealias Button = Alert.Button
}
extension View {
  @available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  @available(OSX, unavailable)
  public func actionSheet<T>(item: Binding<T?>, content: (T) -> ActionSheet) -> some View where T : Identifiable
  
  @available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  @available(OSX, unavailable)
  public func actionSheet(isPresented: Binding<Bool>, content: () -> ActionSheet) -> some View
  
}
  
extension Color {
  public static var accentColor: Color {
    get
  }
}
  
extension View {
  @available(OSX, unavailable)
  @inlinable public func accentColor(_ accentColor: Color?) -> some View {
        return environment(\.accentColor, accentColor)
    }
  
}
  
extension EnvironmentValues {
  @usableFromInline
  internal var accentColor: Color? {
    get
    set
  }
}
  
extension EnvironmentValues {
  public var isEnabled: Bool {
    get
    set
  }
}
  
extension View {
  @inlinable public func disabled(_ disabled: Bool) -> some View {
        return modifier(_EnvironmentKeyTransformModifier(
            keyPath: \.isEnabled, transform: { $0 = $0 && !disabled }))
    }
  
}
@available(iOS 13.0, tvOS 13.0, *)
@available(OSX, unavailable)
@available(watchOS, unavailable)
public struct GroupedListStyle : ListStyle {
  public init()
  public static func _sectionInset(_ sectionInset: EdgeInsets) -> GroupedListStyle
  public static func _makeView<SelectionValue>(value: _GraphValue<_ListValue<GroupedListStyle, SelectionValue>>, inputs: _ViewInputs) -> _ViewOutputs where SelectionValue : Hashable
  public static func _makeViewList<SelectionValue>(value: _GraphValue<_ListValue<GroupedListStyle, SelectionValue>>, inputs: _ViewListInputs) -> _ViewListOutputs where SelectionValue : Hashable
}
  
extension Image {
  public func renderingMode(_ renderingMode: Image.TemplateRenderingMode?) -> Image
}
  
extension Color {
  public static let clear: Color
  public static let black: Color
  public static let white: Color
  public static let gray: Color
  public static let red: Color
  public static let green: Color
  public static let blue: Color
  public static let orange: Color
  public static let yellow: Color
  public static let pink: Color
  public static let purple: Color
  public static let primary: Color
  public static let secondary: Color
}
  
@frozen public struct _RotationEffect : GeometryEffect, Equatable {
  public var angle: Angle
  public var anchor: UnitPoint
  @inlinable public init(angle: Angle, anchor: UnitPoint = .center) {
        self.angle = angle
        self.anchor = anchor
    }
  public func effectValue(size: CoreGraphics.CGSize) -> ProjectionTransform
  public typealias AnimatableData = AnimatablePair<Angle.AnimatableData, UnitPoint.AnimatableData>
  public var animatableData: _RotationEffect.AnimatableData {
    get
    set
  }
  public typealias Body = Never
  public static func == (a: _RotationEffect, b: _RotationEffect) -> Bool
}
  
extension View {
  @inlinable public func rotationEffect(_ angle: Angle, anchor: UnitPoint = .center) -> some View {
        return modifier(_RotationEffect(angle: angle, anchor: anchor))
    }
  
}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
extension EnvironmentValues {
  @available(iOS, unavailable)
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  public var defaultWheelPickerItemHeight: CoreGraphics.CGFloat {
    get
    set
  }
}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
extension View {
  @available(iOS, unavailable)
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  @inlinable public func defaultWheelPickerItemHeight(_ height: CoreGraphics.CGFloat) -> some View {
        return environment(\.defaultWheelPickerItemHeight, height)
    }
  
}
@available(OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@available(iOS, unavailable)
extension View {
  @available(iOS, unavailable)
  public func focusable(_ isFocusable: Bool = true, onFocusChange: @escaping (Bool) -> Void = { _ in }) -> some View
  
}
@available(OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@available(iOS, unavailable)
public struct _FocusableModifier : ViewModifier {
  public static func _makeView(modifier: _GraphValue<_FocusableModifier>, inputs: _ViewInputs, body: @escaping (_Graph, _ViewInputs) -> _ViewOutputs) -> _ViewOutputs
  public typealias Body = Never
}
  
@frozen public struct _ScaleEffect : GeometryEffect, Equatable {
  public var scale: CoreGraphics.CGSize
  public var anchor: UnitPoint
  @inlinable public init(scale: CoreGraphics.CGSize, anchor: UnitPoint = .center) {
        self.scale = scale
        self.anchor = anchor
    }
  public func effectValue(size: CoreGraphics.CGSize) -> ProjectionTransform
  public typealias AnimatableData = AnimatablePair<CoreGraphics.CGSize.AnimatableData, UnitPoint.AnimatableData>
  public var animatableData: _ScaleEffect.AnimatableData {
    get
    set
  }
  public typealias Body = Never
  public static func == (a: _ScaleEffect, b: _ScaleEffect) -> Bool
}
  
extension View {
  @inlinable public func scaleEffect(_ scale: CoreGraphics.CGSize, anchor: UnitPoint = .center) -> some View {
        return modifier(_ScaleEffect(scale: scale, anchor: anchor))
    }
  
  @inlinable public func scaleEffect(_ s: CoreGraphics.CGFloat, anchor: UnitPoint = .center) -> some View {
        return scaleEffect(CGSize(width: s, height: s), anchor: anchor)
    }
  
  @inlinable public func scaleEffect(x: CoreGraphics.CGFloat = 0.0, y: CoreGraphics.CGFloat = 0.0, anchor: UnitPoint = .center) -> some View {
        return scaleEffect(CGSize(width: x, height: y), anchor: anchor)
    }
  
}
  
extension AnyTransition {
  public static var scale: AnyTransition {
    get
  }
  public static func scale(scale: CoreGraphics.CGFloat, anchor: UnitPoint = .center) -> AnyTransition
}
  
@frozen public struct _BlurEffect : Equatable {
  public var radius: CoreGraphics.CGFloat
  public var isOpaque: Bool
  @inlinable public init(radius: CoreGraphics.CGFloat, opaque: Bool) {
        self.radius = radius
        self.isOpaque = opaque
    }
  public var animatableData: CoreGraphics.CGFloat {
    get
    set
  }
  public static func == (a: _BlurEffect, b: _BlurEffect) -> Bool
  public typealias Body = Never
  public typealias AnimatableData = CoreGraphics.CGFloat
}
  
extension View {
  @inlinable public func blur(radius: CoreGraphics.CGFloat, opaque: Bool = false) -> some View {
        return modifier(_BlurEffect(radius: radius, opaque: opaque))
    }
  
}
  
@frozen public struct _BrightnessEffect : Equatable {
  public var amount: Double
  @inlinable public init(amount: Double) {
        self.amount = amount
    }
  public var animatableData: Double {
    get
    set
  }
  public static func == (a: _BrightnessEffect, b: _BrightnessEffect) -> Bool
  public typealias Body = Never
  public typealias AnimatableData = Double
}
  
extension View {
  @inlinable public func brightness(_ amount: Double) -> some View {
        return modifier(_BrightnessEffect(amount: amount))
    }
  
}
  
@frozen public struct _ColorInvertEffect : Equatable {
  @inlinable public init() {}
  public static func == (a: _ColorInvertEffect, b: _ColorInvertEffect) -> Bool
  public typealias Body = Never
  public typealias AnimatableData = EmptyAnimatableData
}
  
extension View {
  @inlinable public func colorInvert() -> some View {
        return modifier(_ColorInvertEffect())
    }
  
}
  
public protocol AlignmentID {
  static func defaultValue(in context: ViewDimensions) -> CoreGraphics.CGFloat
  static func _combineExplicit(childValue: CoreGraphics.CGFloat, _ n: Int, into parentValue: inout CoreGraphics.CGFloat?)
}
  
extension AlignmentID {
  public static func _combineExplicit(childValue: CoreGraphics.CGFloat, _ n: Int, into parentValue: inout CoreGraphics.CGFloat?)
}
  
@frozen public struct HorizontalAlignment {
  public init(_ id: AlignmentID.Type)
  @usableFromInline
  internal let key: AlignmentKey
  public static func == (a: HorizontalAlignment, b: HorizontalAlignment) -> Bool
}
  
@frozen public struct VerticalAlignment {
  public init(_ id: AlignmentID.Type)
  @usableFromInline
  internal let key: AlignmentKey
  public static func == (a: VerticalAlignment, b: VerticalAlignment) -> Bool
}
  
extension HorizontalAlignment {
  public static let leading: HorizontalAlignment
  public static let center: HorizontalAlignment
  public static let trailing: HorizontalAlignment
}
  
extension VerticalAlignment {
  public static let top: VerticalAlignment
  public static let center: VerticalAlignment
  public static let bottom: VerticalAlignment
  public static let firstTextBaseline: VerticalAlignment
  public static let lastTextBaseline: VerticalAlignment
}
@usableFromInline
@frozen internal struct AlignmentKey : Hashable, Comparable {
  private let bits: UInt
  @usableFromInline
  internal static func < (lhs: AlignmentKey, rhs: AlignmentKey) -> Bool
  @usableFromInline
  internal static func == (a: AlignmentKey, b: AlignmentKey) -> Bool
  @usableFromInline
  internal var hashValue: Int {
    @usableFromInline
    get
  }
  @usableFromInline
  internal func hash(into hasher: inout Hasher)
}
  
extension Image {
  @frozen public enum Orientation : UInt8, CaseIterable, Hashable {
    case up
    case upMirrored
    case down
    case downMirrored
    case left
    case leftMirrored
    case right
    case rightMirrored
    public typealias RawValue = UInt8
    public init?(rawValue: UInt8)
    public var rawValue: UInt8 {
      get
    }
    public typealias AllCases = [Image.Orientation]
    public static var allCases: [Image.Orientation] {
      get
    }
  }
}
  
@frozen public struct _ColorMultiplyEffect : EnvironmentalModifier, Equatable {
  public var color: Color
  @inlinable public init(color: Color) {
        self.color = color
    }
  public func resolve(in environment: EnvironmentValues) -> _ColorMultiplyEffect._Resolved
  public struct _Resolved {
    public typealias AnimatableData = AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>
    public var animatableData: _ColorMultiplyEffect._Resolved.AnimatableData {
      get
      set
    }
    public typealias Body = Never
  }
  public typealias ResolvedModifier = _ColorMultiplyEffect._Resolved
  public typealias Body = Never
  public static func == (a: _ColorMultiplyEffect, b: _ColorMultiplyEffect) -> Bool
}
  
extension View {
  @inlinable public func colorMultiply(_ color: Color) -> some View {
        return modifier(_ColorMultiplyEffect(color: color))
    }
  
}
  
@frozen public struct _ContrastEffect : Equatable {
  public var amount: Double
  @inlinable public init(amount: Double) {
        self.amount = amount
    }
  public var animatableData: Double {
    get
    set
  }
  public static func == (a: _ContrastEffect, b: _ContrastEffect) -> Bool
  public typealias Body = Never
  public typealias AnimatableData = Double
}
  
extension View {
  @inlinable public func contrast(_ amount: Double) -> some View {
        return modifier(_ContrastEffect(amount: amount))
    }
  
}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
public enum DigitalCrownRotationalSensitivity {
  case low
  case medium
  case high
  public static func == (a: DigitalCrownRotationalSensitivity, b: DigitalCrownRotationalSensitivity) -> Bool
  public var hashValue: Int {
    get
  }
  public func hash(into hasher: inout Hasher)
}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
extension View {
  @available(iOS, unavailable)
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  public func digitalCrownRotation<V>(_ binding: Binding<V>, from minValue: V, through maxValue: V, by stride: V.Stride? = nil, sensitivity: DigitalCrownRotationalSensitivity = .high, isContinuous: Bool = false, isHapticFeedbackEnabled: Bool = true) -> some View where V : BinaryFloatingPoint, V.Stride : BinaryFloatingPoint
  
  @available(iOS, unavailable)
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  public func digitalCrownRotation<V>(_ binding: Binding<V>) -> some View where V : BinaryFloatingPoint
  
  @available(iOS, unavailable)
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  public func _digitalCrownRotation<V>(_ binding: Binding<V>, configuration: _DigitalCrownConfiguration) -> some View where V : BinaryFloatingPoint
  
}
  
@frozen public struct _GrayscaleEffect : Equatable {
  public var amount: Double
  @inlinable public init(amount: Double) {
        self.amount = amount
    }
  public var animatableData: Double {
    get
    set
  }
  public static func == (a: _GrayscaleEffect, b: _GrayscaleEffect) -> Bool
  public typealias Body = Never
  public typealias AnimatableData = Double
}
  
extension View {
  @inlinable public func grayscale(_ amount: Double) -> some View {
        return modifier(_GrayscaleEffect(amount: amount))
    }
  
}
  
@frozen public struct _HueRotationEffect : Equatable {
  public var angle: Angle
  @inlinable public init(angle: Angle) {
        self.angle = angle
    }
  public var animatableData: Angle.AnimatableData {
    get
    set
  }
  public static func == (a: _HueRotationEffect, b: _HueRotationEffect) -> Bool
  public typealias Body = Never
  public typealias AnimatableData = Angle.AnimatableData
}
  
extension View {
  @inlinable public func hueRotation(_ angle: Angle) -> some View {
        return modifier(_HueRotationEffect(angle: angle))
    }
  
}
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(OSX, unavailable)
public struct PreferredColorSchemeKey : PreferenceKey {
  public typealias Value = ColorScheme?
  public static func reduce(value: inout PreferredColorSchemeKey.Value, nextValue: () -> PreferredColorSchemeKey.Value)
}
  
extension View {
  @available(OSX, unavailable)
  @inlinable public func preferredColorScheme(_ colorScheme: ColorScheme?) -> some View {
        return preference(key: PreferredColorSchemeKey.self,
            value: colorScheme)
    }
  
}
  
@frozen public struct _LuminanceToAlphaEffect : Equatable {
  @inlinable public init() {}
  public static func == (a: _LuminanceToAlphaEffect, b: _LuminanceToAlphaEffect) -> Bool
  public typealias Body = Never
  public typealias AnimatableData = EmptyAnimatableData
}
  
extension View {
  @inlinable public func luminanceToAlpha() -> some View {
        return modifier(_LuminanceToAlphaEffect())
    }
  
}
  
@frozen public struct _SaturationEffect : Equatable {
  public var amount: Double
  @inlinable public init(amount: Double) {
        self.amount = amount
    }
  public var animatableData: Double {
    get
    set
  }
  public static func == (a: _SaturationEffect, b: _SaturationEffect) -> Bool
  public typealias Body = Never
  public typealias AnimatableData = Double
}
  
extension View {
  @inlinable public func saturation(_ amount: Double) -> some View {
        return modifier(_SaturationEffect(amount: amount))
    }
  
}
  
extension View {
  @inlinable public func transition(_ t: AnyTransition) -> some View {
        return _trait(TransitionTraitKey.self, t)
    }
  
}
@usableFromInline
internal struct TransitionTraitKey : _ViewTraitKey {
  @inlinable internal static var defaultValue: AnyTransition {
    get { .opacity }
  }
  @usableFromInline
  internal typealias Value = AnyTransition
}
@usableFromInline
internal struct CanTransitionTraitKey : _ViewTraitKey {
  @inlinable internal static var defaultValue: Bool {
    get { false }
  }
  @usableFromInline
  internal typealias Value = Bool
}
  
@frozen public struct _OpacityEffect : Equatable {
  public var opacity: Double
  @inlinable public init(opacity: Double) {
        self.opacity = opacity
    }
  public var animatableData: Double {
    get
    set
  }
  public static func _makeView(modifier: _GraphValue<_OpacityEffect>, inputs: _ViewInputs, body: @escaping (_Graph, _ViewInputs) -> _ViewOutputs) -> _ViewOutputs
  public typealias Body = Never
  public typealias AnimatableData = Double
  public static func == (a: _OpacityEffect, b: _OpacityEffect) -> Bool
}
  
extension View {
  @inlinable public func opacity(_ opacity: Double) -> some View {
        return modifier(_OpacityEffect(opacity: opacity))
    }
  
}
  
extension AnyTransition {
  public static let opacity: AnyTransition
}
@available(iOS 13.0, watchOS 6.0, *)
@available(OSX, unavailable)
@available(tvOS, unavailable)
public struct WheelPickerStyle : PickerStyle {
  public init()
  public static func _makeView<SelectionValue>(value: _GraphValue<_PickerValue<WheelPickerStyle, SelectionValue>>, inputs: _ViewInputs) -> _ViewOutputs where SelectionValue : Hashable
  public static func _makeViewList<SelectionValue>(value: _GraphValue<_PickerValue<WheelPickerStyle, SelectionValue>>, inputs: _ViewListInputs) -> _ViewListOutputs where SelectionValue : Hashable
}
  
@frozen public struct _AnimationModifier<Value> : ViewModifier where Value : Equatable {
  public var animation: Animation?
  public var value: Value
  @inlinable public init(animation: Animation?, value: Value) {
        self.animation = animation
        self.value = value
    }
  public static func _makeView(modifier: _GraphValue<_AnimationModifier<Value>>, inputs: _ViewInputs, body: @escaping (_Graph, _ViewInputs) -> _ViewOutputs) -> _ViewOutputs
  public static func _makeViewList(modifier: _GraphValue<_AnimationModifier<Value>>, inputs: _ViewListInputs, body: @escaping (_Graph, _ViewListInputs) -> _ViewListOutputs) -> _ViewListOutputs
  public typealias Body = Never
}
  
extension _AnimationModifier : Equatable {
  public static func == (a: _AnimationModifier<Value>, b: _AnimationModifier<Value>) -> Bool
}
  
extension View {
  @inlinable public func animation<V>(_ animation: Animation?, value: V) -> some View where V : Equatable {
        return modifier(_AnimationModifier(animation: animation, value: value))
    }
  
}
  
public struct __Random : Equatable {
  public var seed: UInt32
  public init(seed: UInt32 = 0)
  mutating public func next() -> Double
  mutating public func next(_ mean: Double, range: Double) -> Double
  mutating public func normal() -> Double
  mutating public func normal(_ mean: Double, range: Double) -> Double
  mutating public func nextColor(mean: Double = 0.75, range: Double = 0.5) -> Color
  public static func == (a: __Random, b: __Random) -> Bool
}
  
extension View {
  @inlinable public func tag<V>(_ tag: V) -> some View where V : Hashable {
        return _trait(TagValueTraitKey<V>.self, .tagged(tag))
    }
  
  @inlinable public func _untagged() -> some View {
        return _trait(IsAuxiliaryContentTraitKey.self, true)
    }
  
}
@usableFromInline
internal struct TagValueTraitKey<V> : _ViewTraitKey where V : Hashable {
  @usableFromInline
  @frozen internal enum Value {
    case untagged
    case tagged(V)
  }
  @inlinable internal static var defaultValue: TagValueTraitKey<V>.Value {
    get { .untagged }
  }
}
@usableFromInline
internal struct IsAuxiliaryContentTraitKey : _ViewTraitKey {
  @inlinable internal static var defaultValue: Bool {
    get { false }
  }
  @usableFromInline
  internal typealias Value = Bool
}
  
public struct __ResizableImagesExampleLayout {
  public init()
  public typealias AnimatableData = EmptyAnimatableData
  public typealias Body = Never
}
  
@frozen public struct _BlendModeEffect : Equatable {
  public var blendMode: BlendMode
  @inlinable public init(blendMode: BlendMode) {
        self.blendMode = blendMode
    }
  public static func == (a: _BlendModeEffect, b: _BlendModeEffect) -> Bool
  public typealias Body = Never
  public typealias AnimatableData = EmptyAnimatableData
}
  
extension View {
  @inlinable public func blendMode(_ blendMode: BlendMode) -> some View {
        return modifier(_BlendModeEffect(blendMode: blendMode))
    }
  
}
@usableFromInline
internal struct ListRowBackgroundTraitKey : _ViewTraitKey {
  @inlinable internal static var defaultValue: AnyView? {
    get { nil }
  }
  @usableFromInline
  internal typealias Value = AnyView?
}
  
extension View {
  @inlinable public func listRowBackground<V>(_ view: V?) -> some View where V : View {
        return _trait(ListRowBackgroundTraitKey.self, view.map { AnyView($0) })
    }
  
}
  
public enum ColorRenderingMode {
  case nonLinear
  case linear
  case extendedLinear
  public static func == (a: ColorRenderingMode, b: ColorRenderingMode) -> Bool
  public var hashValue: Int {
    get
  }
  public func hash(into hasher: inout Hasher)
}
  
public struct _DrawingGroupEffect : ViewModifier, Equatable {
  public var isOpaque: Bool {
    get
    set
  }
  public var colorMode: ColorRenderingMode {
    get
    set
  }
  public init(opaque: Bool = false, colorMode: ColorRenderingMode = .nonLinear)
  public static func _makeView(modifier: _GraphValue<_DrawingGroupEffect>, inputs: _ViewInputs, body: @escaping (_Graph, _ViewInputs) -> _ViewOutputs) -> _ViewOutputs
  public typealias Body = Never
  public static func == (a: _DrawingGroupEffect, b: _DrawingGroupEffect) -> Bool
}
  
extension View {
  public func drawingGroup(opaque: Bool = false, colorMode: ColorRenderingMode = .nonLinear) -> some View
  
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct GroupBox<Label, Content> : View where Label : View, Content : View {
  public init(label: Label, @ViewBuilder content: () -> Content)
  public var body: some View {
    get
  }
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI8GroupBoxV4bodyQrvp", 0) 🦸<Label, Content>
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension GroupBox where Label == EmptyView {
  public init(@ViewBuilder content: () -> Content)
}
  
public struct TextField<Label> : View where Label : View {
  public var body: some View {
    get
  }
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI9TextFieldV4bodyQrvp", 0) 🦸<Label>
}
  
extension TextField where Label == Text {
  public init(_ titleKey: LocalizedStringKey, text: Binding<String>, onEditingChanged: @escaping (Bool) -> Void = { _ in }, onCommit: @escaping () -> Void = {})
  @_disfavoredOverload public init<S>(_ title: S, text: Binding<String>, onEditingChanged: @escaping (Bool) -> Void = { _ in }, onCommit: @escaping () -> Void = {}) where S : StringProtocol
  public init<T>(_ titleKey: LocalizedStringKey, value: Binding<T>, formatter: Foundation.Formatter, onEditingChanged: @escaping (Bool) -> Void = { _ in }, onCommit: @escaping () -> Void = {})
  @_disfavoredOverload public init<S, T>(_ title: S, value: Binding<T>, formatter: Foundation.Formatter, onEditingChanged: @escaping (Bool) -> Void = { _ in }, onCommit: @escaping () -> Void = {}) where S : StringProtocol
}
  
@frozen public struct AnyGesture<Value> {
  fileprivate var storage: AnyGestureStorageBase<Value>
  public init<T>(_ gesture: T) where Value == T.Value, T : Gesture
  public static func _makeGesture(gesture: _GraphValue<AnyGesture<Value>>, inputs: _GestureInputs) -> _GestureOutputs<Value>
  public typealias Body = Never
}
@usableFromInline
internal class AnyGestureStorageBase<Value> {
  @objc @usableFromInline
  deinit
}
  
@frozen public struct _CompositingGroupEffect : Equatable {
  @inlinable public init() {}
  public static func == (a: _CompositingGroupEffect, b: _CompositingGroupEffect) -> Bool
  public typealias Body = Never
  public typealias AnimatableData = EmptyAnimatableData
}
  
extension View {
  @inlinable public func compositingGroup() -> some View {
        return modifier(_CompositingGroupEffect())
    }
  
}
public func __designTimeSelection<T>(_ instance: T, _ identifier: String) -> T
  
public func __designTimeSelection<T>(_ instance: T, _ identifier: String) -> some View where T : View

  
public protocol _DataProvider {
  associatedtype Data
  var data: Self.Data { get }
  associatedtype Token
  mutating func addObserver(_ observer: _DataProviderObserver) -> Self.Token
  mutating func removeObserver(token: Self.Token)
}
  
public protocol _DataProviderObserver {
  func dataWillChange()
  func dataDidChange()
}
  
public protocol _PreviewProviderLocator {
  static var previewProviders: [_PreviewProvider.Type] { get }
}
  
public protocol _PreviewProvider {
  static var _previews: Any { get }
  static var _platform: PreviewPlatform? { get }
}
  
public protocol PreviewProvider : _PreviewProvider {
  associatedtype Previews : View
  static var previews: Self.Previews { get }
  static var platform: PreviewPlatform? { get }
}
  
extension PreviewProvider {
  public static var platform: PreviewPlatform? {
    get
  }
  public static var _previews: Any {
    get
  }
  public static var _platform: PreviewPlatform? {
    get
  }
}
  
public enum PreviewPlatform {
  case iOS
  case macOS
  case tvOS
  case watchOS
  public static func == (a: PreviewPlatform, b: PreviewPlatform) -> Bool
  public var hashValue: Int {
    get
  }
  public func hash(into hasher: inout Hasher)
}
  
public enum PreviewLayout {
  case device
  case sizeThatFits
  case fixed(width: CoreGraphics.CGFloat, height: CoreGraphics.CGFloat)
}
  
public struct PreviewDevice : RawRepresentable, ExpressibleByStringLiteral {
  public let rawValue: String
  public init(rawValue: String)
  public init(stringLiteral: String)
  public typealias RawValue = String
  public typealias StringLiteralType = String
  public typealias ExtendedGraphemeClusterLiteralType = String
  public typealias UnicodeScalarLiteralType = String
}
  
extension View {
  @inlinable public func previewDevice(_ value: PreviewDevice?) -> some View {
        return _trait(PreviewDeviceTraitKey.self, value)
    }
  
  @inlinable public func previewLayout(_ value: PreviewLayout) -> some View {
        return _trait(PreviewLayoutTraitKey.self, value)
    }
  
  @inlinable public func previewDisplayName(_ value: String?) -> some View {
        return _trait(PreviewDisplayNameTraitKey.self, value)
    }
  
}
@usableFromInline
internal struct PreviewDeviceTraitKey : _ViewTraitKey {
  @inlinable internal static var defaultValue: PreviewDevice? {
    get { nil }
  }
  @usableFromInline
  internal typealias Value = PreviewDevice?
}
@usableFromInline
internal struct PreviewLayoutTraitKey : _ViewTraitKey {
  @inlinable internal static var defaultValue: PreviewLayout {
    get { .device }
  }
  @usableFromInline
  internal typealias Value = PreviewLayout
}
@usableFromInline
internal struct PreviewDisplayNameTraitKey : _ViewTraitKey {
  @inlinable internal static var defaultValue: String? {
    get { nil }
  }
  @usableFromInline
  internal typealias Value = String?
}
  
extension _PreviewProvider {
  public static var _allPreviews: [_Preview] {
    get
  }
}
  
public struct _Preview {
  public let id: Int
  public let contentType: String
  public var content: AnyView {
    get
  }
  public var displayName: String? {
    get
  }
  public var device: PreviewDevice? {
    get
  }
  public var layout: PreviewLayout {
    get
  }
}
  
extension View {
  @inlinable public func anchorPreference<A, K>(key _: K.Type = K.self, value: Anchor<A>.Source, transform: @escaping (Anchor<A>) -> K.Value) -> some View where K : PreferenceKey {
        return modifier(_AnchorWritingModifier<A, K>(
            anchor: value, transform: transform))
    }
  
}
  
@frozen public struct _AnchorWritingModifier<AnchorValue, Key> : ViewModifier where Key : PreferenceKey {
  public var anchor: Anchor<AnchorValue>.Source
  public var transform: (Anchor<AnchorValue>) -> Key.Value
  @inlinable public init(anchor: Anchor<AnchorValue>.Source, transform: @escaping (Anchor<AnchorValue>) -> Key.Value) {
        self.anchor = anchor
        self.transform = transform
    }
  public static func _makeView(modifier: _GraphValue<_AnchorWritingModifier<AnchorValue, Key>>, inputs: _ViewInputs, body: @escaping (_Graph, _ViewInputs) -> _ViewOutputs) -> _ViewOutputs
  public typealias Body = Never
}
  
@frozen public struct _ClipEffect<ClipShape> where ClipShape : Shape {
  public var shape: ClipShape
  public var style: FillStyle
  @inlinable public init(shape: ClipShape, style: FillStyle = FillStyle()) {
        self.shape = shape
        self.style = style
    }
  public var animatableData: ClipShape.AnimatableData {
    get
    set
  }
  public typealias Body = Never
  public typealias AnimatableData = ClipShape.AnimatableData
}
  
extension View {
  @inlinable public func clipShape<S>(_ shape: S, style: FillStyle = FillStyle()) -> some View where S : Shape {
        return modifier(_ClipEffect(shape: shape, style: style))
    }
  
  @inlinable public func clipped(antialiased: Bool = false) -> some View {
        return clipShape(Rectangle(),
            style: FillStyle(antialiased: antialiased))
    }
  
  @inlinable public func cornerRadius(_ radius: CoreGraphics.CGFloat, antialiased: Bool = true) -> some View {
        return clipShape(RoundedRectangle(cornerRadius: radius),
            style: FillStyle(antialiased: antialiased))
    }
  
}
  
@frozen public struct _ShadowEffect : EnvironmentalModifier, Equatable {
  public var color: Color
  public var radius: CoreGraphics.CGFloat
  public var offset: CoreGraphics.CGSize
  @inlinable public init(color: Color, radius: CoreGraphics.CGFloat, offset: CoreGraphics.CGSize) {
        self.color = color
        self.radius = radius
        self.offset = offset
    }
  public func resolve(in environment: EnvironmentValues) -> _ShadowEffect._Resolved
  public struct _Resolved {
    public typealias AnimatableData = AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CoreGraphics.CGFloat, CoreGraphics.CGSize.AnimatableData>>
    public var animatableData: _ShadowEffect._Resolved.AnimatableData {
      get
      set
    }
    public typealias Body = Never
  }
  public typealias ResolvedModifier = _ShadowEffect._Resolved
  public typealias Body = Never
  public static func == (a: _ShadowEffect, b: _ShadowEffect) -> Bool
}
  
extension View {
  @inlinable public func shadow(color: Color = Color(.sRGBLinear, white: 0, opacity: 0.33), radius: CoreGraphics.CGFloat, x: CoreGraphics.CGFloat = 0, y: CoreGraphics.CGFloat = 0) -> some View {
        return modifier(
            _ShadowEffect(
                color: color,
                radius: radius,
                offset: CGSize(width: x, height: y)
        ))
    }
  
}
  
public protocol _Test {
  func setUpTest()
  func tearDownTest()
}
  
extension _Test {
  public func setUpTest()
  public func tearDownTest()
}
  
extension Animation {
  public static let `default`: Animation
}
  
public protocol _ScrollableContentProvider {
  associatedtype ScrollableContent : View
  var scrollableContent: Self.ScrollableContent { get }
  associatedtype Root : View
  func root(scrollView: _ScrollView<Self>.Main) -> Self.Root
  func decelerationTarget(contentOffset: CoreGraphics.CGPoint, originalContentOffset: CoreGraphics.CGPoint, velocity: _Velocity<CoreGraphics.CGSize>, size: CoreGraphics.CGSize) -> CoreGraphics.CGPoint?
}
  
extension _ScrollableContentProvider {
  public func decelerationTarget(contentOffset: CoreGraphics.CGPoint, originalContentOffset: CoreGraphics.CGPoint, velocity: _Velocity<CoreGraphics.CGSize>, size: CoreGraphics.CGSize) -> CoreGraphics.CGPoint?
}
  
public protocol _ScrollViewGestureProvider {
  func scrollableDirections(proxy: _ScrollViewProxy) -> _EventDirections
  func gestureMask(proxy: _ScrollViewProxy) -> GestureMask
}
  
extension _ScrollViewGestureProvider {
  public func defaultScrollableDirections(proxy: _ScrollViewProxy) -> _EventDirections
  public func defaultGestureMask(proxy: _ScrollViewProxy) -> GestureMask
  public func scrollableDirections(proxy: _ScrollViewProxy) -> _EventDirections
  public func gestureMask(proxy: _ScrollViewProxy) -> GestureMask
}
  
public struct _ScrollLayout : Equatable {
  public var contentOffset: CoreGraphics.CGPoint
  public var size: CoreGraphics.CGSize
  public var visibleRect: CoreGraphics.CGRect
  public init(contentOffset: CoreGraphics.CGPoint, size: CoreGraphics.CGSize, visibleRect: CoreGraphics.CGRect)
  public static func == (a: _ScrollLayout, b: _ScrollLayout) -> Bool
}
  
public struct _ScrollViewConfig {
  public static let decelerationRateNormal: Double
  public static let decelerationRateFast: Double
  public enum ContentOffset {
    case initially(CoreGraphics.CGPoint)
    case binding(Binding<CoreGraphics.CGPoint>)
  }
  public var contentOffset: _ScrollViewConfig.ContentOffset
  public var contentInsets: EdgeInsets
  public var decelerationRate: Double
  public var alwaysBounceVertical: Bool
  public var alwaysBounceHorizontal: Bool
  public var gestureProvider: _ScrollViewGestureProvider
  public var stopDraggingImmediately: Bool
  public var isScrollEnabled: Bool
  public var showsHorizontalIndicator: Bool
  public var showsVerticalIndicator: Bool
  public var indicatorInsets: EdgeInsets
  public init()
}
  
public struct _ScrollView<Provider> : View where Provider : _ScrollableContentProvider {
  public var contentProvider: Provider
  public var config: _ScrollViewConfig
  public init(contentProvider: Provider, config: _ScrollViewConfig = _ScrollViewConfig())
  public var body: some View {
    get
  }
  public struct Main : View {
    public typealias Body = Never
  }
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI11_ScrollViewV4bodyQrvp", 0) 🦸<Provider>
}
  
extension View {
  public func _scrollable(stretchChildrenToMaxHeight: Bool = false, horizontal: TextAlignment? = .center, vertical: _VAlignment? = .center) -> _ScrollView<_AligningContentProvider<Self>>
}
  
public struct _AligningContentProvider<Content> : _ScrollableContentProvider where Content : View {
  public var content: Content
  public var horizontal: TextAlignment?
  public var vertical: _VAlignment?
  public init(content: Content, horizontal: TextAlignment? = nil, vertical: _VAlignment? = nil)
  public var scrollableContent: ModifiedContent<Content, _AligningContentProvider<Content>.AligningContentProviderLayout> {
    get
  }
  public struct AligningContentProviderLayout {
    public typealias Body = Never
    public typealias AnimatableData = EmptyAnimatableData
  }
  public typealias ScrollableContent = ModifiedContent<Content, _AligningContentProvider<Content>.AligningContentProviderLayout>
  public typealias Root = _ScrollViewRoot<_AligningContentProvider<Content>>
}
  
public struct PlainListStyle : ListStyle {
  public init()
  public static func _makeView<SelectionValue>(value: _GraphValue<_ListValue<PlainListStyle, SelectionValue>>, inputs: _ViewInputs) -> _ViewOutputs where SelectionValue : Hashable
  public static func _makeViewList<SelectionValue>(value: _GraphValue<_ListValue<PlainListStyle, SelectionValue>>, inputs: _ViewListInputs) -> _ViewListOutputs where SelectionValue : Hashable
}
  
public protocol ToggleStyle {
  associatedtype Body : View
  func makeBody(configuration: Self.Configuration) -> Self.Body
  typealias Configuration = ToggleStyleConfiguration
}
  
public struct ToggleStyleConfiguration {
  public struct Label : View {
    public typealias Body = Never
  }
  public let label: ToggleStyleConfiguration.Label
  @Binding @_projectedValueProperty($isOn) public var isOn: Bool {
    get
    nonmutating set
  }
  public var $isOn: Binding<Bool> {
    get
  }
}
  
extension View {
  public func toggleStyle<S>(_ style: S) -> some View where S : ToggleStyle
  
}
  
public struct _PagingViewConfig : Equatable {
  public enum Direction {
    case vertical
    case horizontal
    public static func == (a: _PagingViewConfig.Direction, b: _PagingViewConfig.Direction) -> Bool
    public var hashValue: Int {
      get
    }
    public func hash(into hasher: inout Hasher)
  }
  public var direction: _PagingViewConfig.Direction
  public var size: CoreGraphics.CGFloat?
  public var margin: CoreGraphics.CGFloat
  public var spacing: CoreGraphics.CGFloat
  public var constrainedDeceleration: Bool
  public init(direction: _PagingViewConfig.Direction = .horizontal, size: CoreGraphics.CGFloat? = nil, margin: CoreGraphics.CGFloat = 0, spacing: CoreGraphics.CGFloat = 0, constrainedDeceleration: Bool = true)
  public static func == (a: _PagingViewConfig, b: _PagingViewConfig) -> Bool
}
  
public struct _PagingView<Views> : View where Views : RandomAccessCollection, Views.Element : View, Views.Index : Hashable {
  public var views: Views
  public var page: Binding<Views.Index>?
  public var config: _PagingViewConfig
  public var scrollViewConfig: _ScrollViewConfig
  public init(config: _PagingViewConfig = _PagingViewConfig(), page: Binding<Views.Index>? = nil, views: Views)
  public init(direction: _PagingViewConfig.Direction, page: Binding<Views.Index>? = nil, views: Views)
  public var body: some View {
    get
  }
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI11_PagingViewV4bodyQrvp", 0) 🦸<Views>
}
  
extension Image {
  public enum TemplateRenderingMode {
    case template
    case original
    public static func == (a: Image.TemplateRenderingMode, b: Image.TemplateRenderingMode) -> Bool
    public var hashValue: Int {
      get
    }
    public func hash(into hasher: inout Hasher)
  }
  @available(OSX, unavailable)
  public enum Scale {
    case small
    case medium
    case large
    public static func == (a: Image.Scale, b: Image.Scale) -> Bool
    public var hashValue: Int {
      get
    }
    public func hash(into hasher: inout Hasher)
  }
}
@available(iOS 13.0, *)
@available(OSX, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public enum UserInterfaceSizeClass {
  case compact
  case regular
  public static func == (a: UserInterfaceSizeClass, b: UserInterfaceSizeClass) -> Bool
  public var hashValue: Int {
    get
  }
  public func hash(into hasher: inout Hasher)
}
  
public enum ColorScheme : CaseIterable {
  case light
  case dark
  public var hashValue: Int {
    get
  }
  public func hash(into hasher: inout Hasher)
  public static func == (a: ColorScheme, b: ColorScheme) -> Bool
  public typealias AllCases = [ColorScheme]
  public static var allCases: [ColorScheme] {
    get
  }
}
  
public enum ColorSchemeContrast : CaseIterable {
  case standard
  case increased
  public var hashValue: Int {
    get
  }
  public func hash(into hasher: inout Hasher)
  public static func == (a: ColorSchemeContrast, b: ColorSchemeContrast) -> Bool
  public typealias AllCases = [ColorSchemeContrast]
  public static var allCases: [ColorSchemeContrast] {
    get
  }
}
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public enum ControlActiveState : Equatable, CaseIterable {
  case key
  case active
  case inactive
  public var hashValue: Int {
    get
  }
  public func hash(into hasher: inout Hasher)
  public static func == (a: ControlActiveState, b: ControlActiveState) -> Bool
  public typealias AllCases = [ControlActiveState]
  public static var allCases: [ControlActiveState] {
    get
  }
}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
public enum _DeviceVariant : Equatable {
  case compact
  case regular
  case h394
  case h448
  public var hashValue: Int {
    get
  }
  public func hash(into hasher: inout Hasher)
  public static func == (a: _DeviceVariant, b: _DeviceVariant) -> Bool
}
  
public enum LegibilityWeight : Hashable {
  case regular
  case bold
  public var hashValue: Int {
    get
  }
  public func hash(into hasher: inout Hasher)
  public static func == (a: LegibilityWeight, b: LegibilityWeight) -> Bool
}
  
extension View {
  @inlinable public func colorScheme(_ colorScheme: ColorScheme) -> some View {
        return environment(\.colorScheme, colorScheme)
    }
  
  @available(OSX, unavailable)
  @inlinable public func imageScale(_ scale: Image.Scale) -> some View {
        return environment(\.imageScale, scale)
    }
  
  @inlinable public func font(_ font: Font?) -> some View {
        return environment(\.font, font)
    }
  
}
  
extension EnvironmentValues {
  public var font: Font? {
    get
    set
  }
  public var displayScale: CoreGraphics.CGFloat {
    get
    set
  }
  @available(OSX, unavailable)
  public var imageScale: Image.Scale {
    get
    set
  }
  public var pixelLength: CoreGraphics.CGFloat {
    get
  }
  public var legibilityWeight: LegibilityWeight? {
    get
    set
  }
  public var locale: Foundation.Locale {
    get
    set
  }
  public var calendar: Foundation.Calendar {
    get
    set
  }
  public var timeZone: Foundation.TimeZone {
    get
    set
  }
  public var colorScheme: ColorScheme {
    get
    set
  }
  public var colorSchemeContrast: ColorSchemeContrast {
    get
  }
}
@available(iOS 13.0, *)
@available(OSX, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension EnvironmentValues {
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public var horizontalSizeClass: UserInterfaceSizeClass? {
    get
    set
  }
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public var verticalSizeClass: UserInterfaceSizeClass? {
    get
    set
  }
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension EnvironmentValues {
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public var controlActiveState: ControlActiveState {
    get
    set
  }
}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
extension EnvironmentValues {
  @available(iOS, unavailable)
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  public var _deviceVariant: _DeviceVariant {
    get
    set
  }
}
  
public struct DefaultPickerStyle : PickerStyle {
  public init()
  public static func _makeView<SelectionValue>(value: _GraphValue<_PickerValue<DefaultPickerStyle, SelectionValue>>, inputs: _ViewInputs) -> _ViewOutputs where SelectionValue : Hashable
  public static func _makeViewList<SelectionValue>(value: _GraphValue<_PickerValue<DefaultPickerStyle, SelectionValue>>, inputs: _ViewListInputs) -> _ViewListOutputs where SelectionValue : Hashable
}
  
@frozen public struct _FrameLayout {
  internal let width: CoreGraphics.CGFloat?
  internal let height: CoreGraphics.CGFloat?
  internal let alignment: Alignment
  @usableFromInline
  internal init(width: CoreGraphics.CGFloat?, height: CoreGraphics.CGFloat?, alignment: Alignment)
  public typealias Body = Never
  public typealias AnimatableData = EmptyAnimatableData
}
  
extension View {
  @inlinable public func frame(width: CoreGraphics.CGFloat? = nil, height: CoreGraphics.CGFloat? = nil, alignment: Alignment = .center) -> some View {
        return modifier(
            _FrameLayout(width: width, height: height, alignment: alignment))
    }
  
  @available(*, deprecated, message: "Please pass one or more parameters.")
  @inlinable public func frame() -> some View {
        return frame(width: nil, height: nil, alignment: .center)
    }
  
}
  
@frozen public struct _FlexFrameLayout {
  internal let minWidth: CoreGraphics.CGFloat?
  internal let idealWidth: CoreGraphics.CGFloat?
  internal let maxWidth: CoreGraphics.CGFloat?
  internal let minHeight: CoreGraphics.CGFloat?
  internal let idealHeight: CoreGraphics.CGFloat?
  internal let maxHeight: CoreGraphics.CGFloat?
  internal let alignment: Alignment
  @usableFromInline
  internal init(minWidth: CoreGraphics.CGFloat? = nil, idealWidth: CoreGraphics.CGFloat? = nil, maxWidth: CoreGraphics.CGFloat? = nil, minHeight: CoreGraphics.CGFloat? = nil, idealHeight: CoreGraphics.CGFloat? = nil, maxHeight: CoreGraphics.CGFloat? = nil, alignment: Alignment)
  public typealias Body = Never
  public typealias AnimatableData = EmptyAnimatableData
}
  
extension View {
  @inlinable public func frame(minWidth: CoreGraphics.CGFloat? = nil, idealWidth: CoreGraphics.CGFloat? = nil, maxWidth: CoreGraphics.CGFloat? = nil, minHeight: CoreGraphics.CGFloat? = nil, idealHeight: CoreGraphics.CGFloat? = nil, maxHeight: CoreGraphics.CGFloat? = nil, alignment: Alignment = .center) -> some View {
        func areInNondecreasingOrder(
            _ min: CGFloat?, _ ideal: CGFloat?, _ max: CGFloat?
        ) -> Bool {
            let min = min ?? -.infinity
            let ideal = ideal ?? min
            let max = max ?? ideal
            return min <= ideal && ideal <= max
        }

        if !areInNondecreasingOrder(minWidth, idealWidth, maxWidth)
            || !areInNondecreasingOrder(minHeight, idealHeight, maxHeight)
        {
            os_log(
                .fault, log: Log.runtimeIssuesLog,
                "Contradictory frame constraints specified.")
        }

        return modifier(
            _FlexFrameLayout(
                minWidth: minWidth,
                idealWidth: idealWidth, maxWidth: maxWidth,
                minHeight: minHeight,
                idealHeight: idealHeight, maxHeight: maxHeight,
                alignment: alignment))
    }
  
}
  
public struct AccessibilityAttachmentModifier {
  public typealias Body = Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, *)
@available(watchOS, unavailable)
public struct DefaultNavigationViewStyle : NavigationViewStyle {
  public init()
  public func _body(configuration: _NavigationViewStyleConfiguration) -> some View
  
  public typealias _Body = @_opaqueReturnTypeOf("$s7SwiftUI26DefaultNavigationViewStyleV5_body13configurationQrAA01_deF13ConfigurationV_tF", 0) 🦸
}
  
@frozen public enum Edge : Int8, CaseIterable {
  case top, leading, bottom, trailing
  @frozen public struct Set : OptionSet {
    public typealias Element = Edge.Set
    public let rawValue: Int8
    public init(rawValue: Int8)
    public static let top: Edge.Set
    public static let leading: Edge.Set
    public static let bottom: Edge.Set
    public static let trailing: Edge.Set
    public static let all: Edge.Set
    public static let horizontal: Edge.Set
    public static let vertical: Edge.Set
    public init(_ e: Edge)
    public typealias ArrayLiteralElement = Edge.Set.Element
    public typealias RawValue = Int8
  }
  public typealias RawValue = Int8
  public init?(rawValue: Int8)
  public var rawValue: Int8 {
    get
  }
  public typealias AllCases = [Edge]
  public static var allCases: [Edge] {
    get
  }
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct PopUpButtonPickerStyle : PickerStyle {
  public init()
  public static func _makeView<SelectionValue>(value: _GraphValue<_PickerValue<PopUpButtonPickerStyle, SelectionValue>>, inputs: _ViewInputs) -> _ViewOutputs where SelectionValue : Hashable
  public static func _makeViewList<SelectionValue>(value: _GraphValue<_PickerValue<PopUpButtonPickerStyle, SelectionValue>>, inputs: _ViewListInputs) -> _ViewListOutputs where SelectionValue : Hashable
}
  
public enum PopoverAttachmentAnchor {
  case rect(Anchor<CoreGraphics.CGRect>.Source)
  case point(UnitPoint)
}
@available(iOS 13.0, OSX 10.15, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension View {
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public func popover<Item, Content>(item: Binding<Item?>, attachmentAnchor: PopoverAttachmentAnchor = .rect(.bounds), arrowEdge: Edge = .top, @ViewBuilder content: @escaping (Item) -> Content) -> some View where Item : Identifiable, Content : View
  
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public func popover<Content>(isPresented: Binding<Bool>, attachmentAnchor: PopoverAttachmentAnchor = .rect(.bounds), arrowEdge: Edge = .top, @ViewBuilder content: @escaping () -> Content) -> some View where Content : View
  
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct CheckboxToggleStyle : ToggleStyle {
  public init()
  public func makeBody(configuration: CheckboxToggleStyle.Configuration) -> some View
  
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI19CheckboxToggleStyleV8makeBody13configurationQrAA0dE13ConfigurationV_tF", 0) 🦸
}
  
@frozen public struct _IgnoredByLayoutEffect<Base> : GeometryEffect where Base : GeometryEffect {
  public var base: Base
  public static var _affectsLayout: Bool {
    get
  }
  @inlinable public init(_ base: Base) {
        self.base = base
    }
  public func effectValue(size: CoreGraphics.CGSize) -> ProjectionTransform
  public var animatableData: Base.AnimatableData {
    get
    set
  }
  public typealias Body = Never
  public typealias AnimatableData = Base.AnimatableData
}
  
extension _IgnoredByLayoutEffect : Equatable where Base : Equatable {
  public static func == (a: _IgnoredByLayoutEffect<Base>, b: _IgnoredByLayoutEffect<Base>) -> Bool
}
  
extension GeometryEffect {
  @inlinable public func ignoredByLayout() -> _IgnoredByLayoutEffect<Self> {
        return _IgnoredByLayoutEffect(self)
    }
}
  
extension EnvironmentValues {
  public var accessibilityEnabled: Bool {
    get
    set
  }
}
  
@frozen public struct Path : Equatable, LosslessStringConvertible {
  @usableFromInline
  final internal class PathBox : Equatable {
    @usableFromInline
    internal static func == (lhs: Path.PathBox, rhs: Path.PathBox) -> Bool
    @objc @usableFromInline
    deinit
  }
  @usableFromInline
  @frozen internal enum Storage : Equatable {
    case empty
    case rect(CoreGraphics.CGRect)
    case ellipse(CoreGraphics.CGRect)
    indirect case roundedRect(FixedRoundedRect)
    indirect case stroked(StrokedPath)
    indirect case trimmed(TrimmedPath)
    case path(Path.PathBox)
    @usableFromInline
    internal static func == (a: Path.Storage, b: Path.Storage) -> Bool
  }
  internal var storage: Path.Storage
  public init()
  public init(_ path: CoreGraphics.CGPath)
  public init(_ path: CoreGraphics.CGMutablePath)
  public init(_ rect: CoreGraphics.CGRect)
  public init(roundedRect rect: CoreGraphics.CGRect, cornerSize: CoreGraphics.CGSize, style: RoundedCornerStyle = .circular)
  public init(roundedRect rect: CoreGraphics.CGRect, cornerRadius: CoreGraphics.CGFloat, style: RoundedCornerStyle = .circular)
  public init(ellipseIn rect: CoreGraphics.CGRect)
  public init(_ callback: (inout Path) -> ())
  public init?(_ string: String)
  public var description: String {
    get
  }
  public var cgPath: CoreGraphics.CGPath {
    get
  }
  public var isEmpty: Bool {
    get
  }
  public var boundingRect: CoreGraphics.CGRect {
    get
  }
  public func contains(_ p: CoreGraphics.CGPoint, eoFill: Bool = false) -> Bool
  @frozen public enum Element : Equatable {
    case move(to: CoreGraphics.CGPoint)
    case line(to: CoreGraphics.CGPoint)
    case quadCurve(to: CoreGraphics.CGPoint, control: CoreGraphics.CGPoint)
    case curve(to: CoreGraphics.CGPoint, control1: CoreGraphics.CGPoint, control2: CoreGraphics.CGPoint)
    case closeSubpath
    public static func == (a: Path.Element, b: Path.Element) -> Bool
  }
  public func forEach(_ body: (Path.Element) -> Void)
  public func strokedPath(_ style: StrokeStyle) -> Path
  public func trimmedPath(from: CoreGraphics.CGFloat, to: CoreGraphics.CGFloat) -> Path
  public static func == (a: Path, b: Path) -> Bool
}
  
extension Path : Shape {
  public func path(in _: CoreGraphics.CGRect) -> Path
  public typealias AnimatableData = EmptyAnimatableData
  public typealias Body = _ShapeView<Path, ForegroundStyle>
}
@usableFromInline
internal struct StrokedPath : Equatable {
  public init(path: Path, style: StrokeStyle)
  @usableFromInline
  internal static func == (lhs: StrokedPath, rhs: StrokedPath) -> Bool
}
@usableFromInline
internal struct TrimmedPath : Equatable {
  @usableFromInline
  internal static func == (lhs: TrimmedPath, rhs: TrimmedPath) -> Bool
}
  
extension Path {
  mutating public func move(to p: CoreGraphics.CGPoint)
  mutating public func addLine(to p: CoreGraphics.CGPoint)
  mutating public func addQuadCurve(to p: CoreGraphics.CGPoint, control cp: CoreGraphics.CGPoint)
  mutating public func addCurve(to p: CoreGraphics.CGPoint, control1 cp1: CoreGraphics.CGPoint, control2 cp2: CoreGraphics.CGPoint)
  mutating public func closeSubpath()
  mutating public func addRect(_ rect: CoreGraphics.CGRect, transform: CoreGraphics.CGAffineTransform = .identity)
  mutating public func addRoundedRect(in rect: CoreGraphics.CGRect, cornerSize: CoreGraphics.CGSize, style: RoundedCornerStyle = .circular, transform: CoreGraphics.CGAffineTransform = .identity)
  mutating public func addEllipse(in rect: CoreGraphics.CGRect, transform: CoreGraphics.CGAffineTransform = .identity)
  mutating public func addRects(_ rects: [CoreGraphics.CGRect], transform: CoreGraphics.CGAffineTransform = .identity)
  mutating public func addLines(_ lines: [CoreGraphics.CGPoint])
  mutating public func addRelativeArc(center: CoreGraphics.CGPoint, radius: CoreGraphics.CGFloat, startAngle: Angle, delta: Angle, transform: CoreGraphics.CGAffineTransform = .identity)
  mutating public func addArc(center: CoreGraphics.CGPoint, radius: CoreGraphics.CGFloat, startAngle: Angle, endAngle: Angle, clockwise: Bool, transform: CoreGraphics.CGAffineTransform = .identity)
  mutating public func addArc(tangent1End p1: CoreGraphics.CGPoint, tangent2End p2: CoreGraphics.CGPoint, radius: CoreGraphics.CGFloat, transform: CoreGraphics.CGAffineTransform = .identity)
  mutating public func addPath(_ path: Path, transform: CoreGraphics.CGAffineTransform = .identity)
  public var currentPoint: CoreGraphics.CGPoint? {
    get
  }
  public func applying(_ transform: CoreGraphics.CGAffineTransform) -> Path
  public func offsetBy(dx: CoreGraphics.CGFloat, dy: CoreGraphics.CGFloat) -> Path
}
  
public enum RoundedCornerStyle {
  case circular
  case continuous
  public static func == (a: RoundedCornerStyle, b: RoundedCornerStyle) -> Bool
  public var hashValue: Int {
    get
  }
  public func hash(into hasher: inout Hasher)
}
@usableFromInline
internal struct FixedRoundedRect : Equatable {
  @usableFromInline
  internal static func == (a: FixedRoundedRect, b: FixedRoundedRect) -> Bool
}
  
public struct NavigationLink<Label, Destination> : View where Label : View, Destination : View {
  public init(destination: Destination, @ViewBuilder label: () -> Label)
  public init(destination: Destination, isActive: Binding<Bool>, @ViewBuilder label: () -> Label)
  public init<V>(destination: Destination, tag: V, selection: Binding<V?>, @ViewBuilder label: () -> Label) where V : Hashable
  public var body: some View {
    get
  }
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI14NavigationLinkV4bodyQrvp", 0) 🦸<Label, Destination>
}
  
extension NavigationLink where Label == Text {
  public init(_ titleKey: LocalizedStringKey, destination: Destination)
  @_disfavoredOverload public init<S>(_ title: S, destination: Destination) where S : StringProtocol
  public init(_ titleKey: LocalizedStringKey, destination: Destination, isActive: Binding<Bool>)
  @_disfavoredOverload public init<S>(_ title: S, destination: Destination, isActive: Binding<Bool>) where S : StringProtocol
  public init<V>(_ titleKey: LocalizedStringKey, destination: Destination, tag: V, selection: Binding<V?>) where V : Hashable
  @_disfavoredOverload public init<S, V>(_ title: S, destination: Destination, tag: V, selection: Binding<V?>) where S : StringProtocol, V : Hashable
}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
extension NavigationLink where Destination == _WKStoryboardContent {
  @available(iOS, unavailable)
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  public init(destinationName: String, @ViewBuilder label: () -> Label)
  @available(iOS, unavailable)
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  public init(destinationName: String, isActive: Binding<Bool>, @ViewBuilder label: () -> Label)
  @available(iOS, unavailable)
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  public init<V>(destinationName: String, tag: V, selection: Binding<V?>, @ViewBuilder label: () -> Label) where V : Hashable
}
@available(iOS 13.0, *)
@available(OSX, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension NavigationLink {
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public func isDetailLink(_ isDetailLink: Bool) -> some View
  
}
  
@frozen public struct Gradient : Equatable {
  @frozen public struct Stop : Equatable {
    public var color: Color
    public var location: CoreGraphics.CGFloat
    public init(color: Color, location: CoreGraphics.CGFloat)
    public static func == (a: Gradient.Stop, b: Gradient.Stop) -> Bool
  }
  public var stops: [Gradient.Stop]
  public init(stops: [Gradient.Stop])
  public init(colors: [Color])
  public static func == (a: Gradient, b: Gradient) -> Bool
}
  
public struct _ViewInputs {
}
  
public enum BlendMode {
  case normal
  case multiply
  case screen
  case overlay
  case darken
  case lighten
  case colorDodge
  case colorBurn
  case softLight
  case hardLight
  case difference
  case exclusion
  case hue
  case saturation
  case color
  case luminosity
  case sourceAtop
  case destinationOver
  case destinationOut
  case plusDarker
  case plusLighter
  public static func == (a: BlendMode, b: BlendMode) -> Bool
  public var hashValue: Int {
    get
  }
  public func hash(into hasher: inout Hasher)
}
  
extension EnvironmentValues {
  public var accessibilityDifferentiateWithoutColor: Bool {
    get
  }
  public var accessibilityReduceTransparency: Bool {
    get
  }
  public var accessibilityReduceMotion: Bool {
    get
  }
  public var accessibilityInvertColors: Bool {
    get
  }
}
  
extension Image {
  public enum Interpolation {
    case none
    case low
    case medium
    case high
    public static func == (a: Image.Interpolation, b: Image.Interpolation) -> Bool
    public var hashValue: Int {
      get
    }
    public func hash(into hasher: inout Hasher)
  }
}
  
extension Image {
  public func interpolation(_ interpolation: Image.Interpolation) -> Image
  public func antialiased(_ isAntialiased: Bool) -> Image
}
  
@frozen public struct _HiddenModifier : ViewModifier {
  @inlinable public init() {}
  public static func _makeView(modifier: _GraphValue<_HiddenModifier>, inputs: _ViewInputs, body: @escaping (_Graph, _ViewInputs) -> _ViewOutputs) -> _ViewOutputs
  public typealias Body = Never
}
  
extension View {
  @inlinable public func hidden() -> some View {
        return modifier(_HiddenModifier())
    }
  
}
  
@frozen public struct FillStyle : Equatable {
  public var isEOFilled: Bool
  public var isAntialiased: Bool
  public init(eoFill: Bool = false, antialiased: Bool = true)
  public static func == (a: FillStyle, b: FillStyle) -> Bool
}
  
@frozen public struct StrokeStyle : Equatable {
  public var lineWidth: CoreGraphics.CGFloat
  public var lineCap: CoreGraphics.CGLineCap
  public var lineJoin: CoreGraphics.CGLineJoin
  public var miterLimit: CoreGraphics.CGFloat
  public var dash: [CoreGraphics.CGFloat]
  public var dashPhase: CoreGraphics.CGFloat
  public init(lineWidth: CoreGraphics.CGFloat = 1, lineCap: CoreGraphics.CGLineCap = .butt, lineJoin: CoreGraphics.CGLineJoin = .miter, miterLimit: CoreGraphics.CGFloat = 10, dash: [CoreGraphics.CGFloat] = [CGFloat](), dashPhase: CoreGraphics.CGFloat = 0)
  public static func == (a: StrokeStyle, b: StrokeStyle) -> Bool
}
  
extension StrokeStyle : Animatable {
  public typealias AnimatableData = AnimatablePair<CoreGraphics.CGFloat, AnimatablePair<CoreGraphics.CGFloat, CoreGraphics.CGFloat>>
  public var animatableData: StrokeStyle.AnimatableData {
    get
    set
  }
}
  
extension AnyTransition {
  public static var slide: AnyTransition {
    get
  }
}
extension View {
  @available(iOS 13.0, tvOS 13.0, *)
  @available(OSX, unavailable)
  @available(watchOS, unavailable)
  public func keyboardType(_ type: UIKit.UIKeyboardType) -> some View
  
}
extension View {
  @available(iOS 13.0, tvOS 13.0, *)
  @available(OSX, unavailable)
  @available(watchOS, unavailable)
  public func autocapitalization(_ style: UIKit.UITextAutocapitalizationType) -> some View
  
}
  
extension View {
  @inlinable public func onPreferenceChange<K>(_ key: K.Type = K.self, perform action: @escaping (K.Value) -> Void) -> some View where K : PreferenceKey, K.Value : Equatable {
        return modifier(_PreferenceActionModifier<K>(action: action))
    }
  
}
  
@frozen public struct _PreferenceActionModifier<Key> : ViewModifier where Key : PreferenceKey, Key.Value : Equatable {
  public var action: (Key.Value) -> Void
  @inlinable public init(action: @escaping (Key.Value) -> Void) {
        self.action = action
    }
  public static func _makeView(modifier: _GraphValue<_PreferenceActionModifier<Key>>, inputs: _ViewInputs, body: @escaping (_Graph, _ViewInputs) -> _ViewOutputs) -> _ViewOutputs
  public typealias Body = Never
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct RadioGroupPickerStyle : PickerStyle {
  public init()
  public static func _makeView<SelectionValue>(value: _GraphValue<_PickerValue<RadioGroupPickerStyle, SelectionValue>>, inputs: _ViewInputs) -> _ViewOutputs where SelectionValue : Hashable
  public static func _makeViewList<SelectionValue>(value: _GraphValue<_PickerValue<RadioGroupPickerStyle, SelectionValue>>, inputs: _ViewListInputs) -> _ViewListOutputs where SelectionValue : Hashable
}
extension View {
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public func horizontalRadioGroupLayout() -> some View
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, *)
@available(watchOS, unavailable)
public protocol NavigationViewStyle {
  associatedtype _Body : View
  func _body(configuration: _NavigationViewStyleConfiguration) -> Self._Body
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, *)
@available(watchOS, unavailable)
public struct _NavigationViewStyleConfiguration {
  public struct Content {
    public typealias Body = Never
  }
  public let content: _NavigationViewStyleConfiguration.Content
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, *)
@available(watchOS, unavailable)
extension View {
  @available(watchOS, unavailable)
  public func navigationViewStyle<S>(_ style: S) -> some View where S : NavigationViewStyle
  
}
  
public protocol ListStyle {
  static func _makeView<SelectionValue>(value: _GraphValue<_ListValue<Self, SelectionValue>>, inputs: _ViewInputs) -> _ViewOutputs where SelectionValue : Hashable
  static func _makeViewList<SelectionValue>(value: _GraphValue<_ListValue<Self, SelectionValue>>, inputs: _ViewListInputs) -> _ViewListOutputs where SelectionValue : Hashable
}
  
public struct _ListValue<Style, SelectionValue> where Style : ListStyle, SelectionValue : Hashable {
}
  
extension View {
  public func listStyle<S>(_ style: S) -> some View where S : ListStyle
  
}
  
public struct List<SelectionValue, Content> : View where SelectionValue : Hashable, Content : View {
  @available(watchOS, unavailable)
  public init(selection: Binding<Set<SelectionValue>>?, @ViewBuilder content: () -> Content)
  @available(watchOS, unavailable)
  public init(selection: Binding<SelectionValue?>?, @ViewBuilder content: () -> Content)
  public var body: some View {
    get
  }
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI4ListV4bodyQrvp", 0) 🦸<SelectionValue, Content>
}
  
extension List {
  @available(watchOS, unavailable)
  public init<Data, RowContent>(_ data: Data, selection: Binding<Set<SelectionValue>>?, @ViewBuilder rowContent: @escaping (Data.Element) -> RowContent) where Content == ForEach<Data, Data.Element.ID, HStack<RowContent>>, Data : RandomAccessCollection, RowContent : View, Data.Element : Identifiable
  @available(watchOS, unavailable)
  public init<Data, ID, RowContent>(_ data: Data, id: KeyPath<Data.Element, ID>, selection: Binding<Set<SelectionValue>>?, @ViewBuilder rowContent: @escaping (Data.Element) -> RowContent) where Content == ForEach<Data, ID, HStack<RowContent>>, Data : RandomAccessCollection, ID : Hashable, RowContent : View
  @available(watchOS, unavailable)
  public init<RowContent>(_ data: Range<Int>, selection: Binding<Set<SelectionValue>>?, @ViewBuilder rowContent: @escaping (Int) -> RowContent) where Content == ForEach<Range<Int>, Int, HStack<RowContent>>, RowContent : View
  @available(watchOS, unavailable)
  public init<Data, RowContent>(_ data: Data, selection: Binding<SelectionValue?>?, @ViewBuilder rowContent: @escaping (Data.Element) -> RowContent) where Content == ForEach<Data, Data.Element.ID, HStack<RowContent>>, Data : RandomAccessCollection, RowContent : View, Data.Element : Identifiable
  @available(watchOS, unavailable)
  public init<Data, ID, RowContent>(_ data: Data, id: KeyPath<Data.Element, ID>, selection: Binding<SelectionValue?>?, @ViewBuilder rowContent: @escaping (Data.Element) -> RowContent) where Content == ForEach<Data, ID, HStack<RowContent>>, Data : RandomAccessCollection, ID : Hashable, RowContent : View
  @available(watchOS, unavailable)
  public init<RowContent>(_ data: Range<Int>, selection: Binding<SelectionValue?>?, @ViewBuilder rowContent: @escaping (Int) -> RowContent) where Content == ForEach<Range<Int>, Int, HStack<RowContent>>, RowContent : View
}
  
extension List where SelectionValue == Never {
  public init(@ViewBuilder content: () -> Content)
  public init<Data, RowContent>(_ data: Data, @ViewBuilder rowContent: @escaping (Data.Element) -> RowContent) where Content == ForEach<Data, Data.Element.ID, HStack<RowContent>>, Data : RandomAccessCollection, RowContent : View, Data.Element : Identifiable
  public init<Data, ID, RowContent>(_ data: Data, id: KeyPath<Data.Element, ID>, @ViewBuilder rowContent: @escaping (Data.Element) -> RowContent) where Content == ForEach<Data, ID, HStack<RowContent>>, Data : RandomAccessCollection, ID : Hashable, RowContent : View
  public init<RowContent>(_ data: Range<Int>, @ViewBuilder rowContent: @escaping (Int) -> RowContent) where Content == ForEach<Range<Int>, Int, HStack<RowContent>>, RowContent : View
}
  
public struct Section<Parent, Content, Footer> {
}
  
extension Section : View where Parent : View, Content : View, Footer : View {
  public typealias Body = Never
  public init(header: Parent, footer: Footer, @ViewBuilder content: () -> Content)
  public static func _makeViewList(view: _GraphValue<Section<Parent, Content, Footer>>, inputs: _ViewListInputs) -> _ViewListOutputs
}
  
extension Section where Parent == EmptyView, Content : View, Footer : View {
  public init(footer: Footer, @ViewBuilder content: () -> Content)
}
  
extension Section where Parent : View, Content : View, Footer == EmptyView {
  public init(header: Parent, @ViewBuilder content: () -> Content)
}
  
extension Section where Parent == EmptyView, Content : View, Footer == EmptyView {
  public init(@ViewBuilder content: () -> Content)
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension Section where Parent : View, Content : View, Footer : View {
  public func collapsible(_ collapsible: Bool) -> some View
  
}
@usableFromInline
internal struct IsCollapsibleTraitKey : _ViewTraitKey {
  @inlinable internal static var defaultValue: Bool {
    get { true }
  }
  @usableFromInline
  internal typealias Value = Bool
}
  
@frozen public struct _PreferenceTransformModifier<Key> : ViewModifier where Key : PreferenceKey {
  public var transform: (inout Key.Value) -> Void
  @inlinable public init(key _: Key.Type = Key.self, transform: @escaping (inout Key.Value) -> Void) {
        self.transform = transform
    }
  public static func _makeView(modifier: _GraphValue<_PreferenceTransformModifier<Key>>, inputs: _ViewInputs, body: @escaping (_Graph, _ViewInputs) -> _ViewOutputs) -> _ViewOutputs
  public typealias Body = Never
}
  
extension View {
  @inlinable public func transformPreference<K>(_ key: K.Type = K.self, _ callback: @escaping (inout K.Value) -> Void) -> some View where K : PreferenceKey {
        return modifier(_PreferenceTransformModifier<K>(transform: callback))
    }
  
}
@available(iOS 13.0, OSX 10.15, *)
@available(watchOS, unavailable)
@available(tvOS, unavailable)
public struct MagnificationGesture : Gesture {
  public var minimumScaleDelta: CoreGraphics.CGFloat
  public init(minimumScaleDelta: CoreGraphics.CGFloat = 0.01)
  public static func _makeGesture(gesture: _GraphValue<MagnificationGesture>, inputs: _GestureInputs) -> _GestureOutputs<CoreGraphics.CGFloat>
  public typealias Value = CoreGraphics.CGFloat
  public typealias Body = Never
}
  
extension _VariadicView_Children : View {
  public static func _makeViewList(view: _GraphValue<_VariadicView.Children>, inputs: _ViewListInputs) -> _ViewListOutputs
  public typealias Body = Never
}
  
extension _VariadicView_Children : RandomAccessCollection {
  public struct Element : View, Identifiable {
    public var id: AnyHashable {
      get
    }
    public func id<ID>(as _: ID.Type = ID.self) -> ID? where ID : Hashable
    public subscript<Trait>(key: Trait.Type) -> Trait.Value where Trait : _ViewTraitKey {
      get
      set
    }
    public static func _makeView(view: _GraphValue<_VariadicView_Children.Element>, inputs: _ViewInputs) -> _ViewOutputs
    public typealias ID = AnyHashable
    public typealias Body = Never
  }
  public var startIndex: Int {
    get
  }
  public var endIndex: Int {
    get
  }
  public subscript(index: Int) -> _VariadicView_Children.Element {
    get
  }
  public typealias Index = Int
  public typealias Iterator = IndexingIterator<_VariadicView_Children>
  public typealias SubSequence = Slice<_VariadicView_Children>
  public typealias Indices = Range<Int>
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct HSplitView<Content> : View where Content : View {
  public init(@ViewBuilder content: () -> Content)
  public static func _makeView(view: _GraphValue<HSplitView<Content>>, inputs: _ViewInputs) -> _ViewOutputs
  public typealias Body = Never
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct VSplitView<Content> : View where Content : View {
  public init(@ViewBuilder content: () -> Content)
  public static func _makeView(view: _GraphValue<VSplitView<Content>>, inputs: _ViewInputs) -> _ViewOutputs
  public typealias Body = Never
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct _HSplitViewContainer : _VariadicView.UnaryViewRoot {
  public func body(children: _VariadicView.Children) -> some View
  
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI20_HSplitViewContainerV4body8childrenQrAA09_VariadicD9_ChildrenV_tF", 0) 🦸
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct _VSplitViewContainer : _VariadicView.UnaryViewRoot {
  public func body(children: _VariadicView.Children) -> some View
  
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI20_VSplitViewContainerV4body8childrenQrAA09_VariadicD9_ChildrenV_tF", 0) 🦸
}
  
@frozen public struct TupleView<T> {
  public var value: T
  @inlinable public init(_ value: T) { self.value = value }
  public static func _makeView(view: _GraphValue<TupleView<T>>, inputs: _ViewInputs) -> _ViewOutputs
  public static func _makeViewList(view: _GraphValue<TupleView<T>>, inputs: _ViewListInputs) -> _ViewListOutputs
  public typealias Body = Never
}
@available(iOS 13.0, OSX 10.15, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct DefaultDatePickerStyle : DatePickerStyle {
  public init()
  public func _body(configuration: DatePicker<DefaultDatePickerStyle._Label>) -> some View
  
  public typealias _Body = @_opaqueReturnTypeOf("$s7SwiftUI22DefaultDatePickerStyleV5_body13configurationQrAA0dE0VyAA01_deF5LabelVG_tF", 0) 🦸
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct StepperFieldDatePickerStyle : DatePickerStyle {
  public init()
  public func _body(configuration: DatePicker<StepperFieldDatePickerStyle._Label>) -> some View
  
  public typealias _Body = @_opaqueReturnTypeOf("$s7SwiftUI27StepperFieldDatePickerStyleV5_body13configurationQrAA0eF0VyAA01_efG5LabelVG_tF", 0) 🦸
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct FieldDatePickerStyle : DatePickerStyle {
  public init()
  public func _body(configuration: DatePicker<FieldDatePickerStyle._Label>) -> some View
  
  public typealias _Body = @_opaqueReturnTypeOf("$s7SwiftUI20FieldDatePickerStyleV5_body13configurationQrAA0dE0VyAA01_deF5LabelVG_tF", 0) 🦸
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct GraphicalDatePickerStyle : DatePickerStyle {
  public init()
  public func _body(configuration: DatePicker<GraphicalDatePickerStyle._Label>) -> some View
  
  public typealias _Body = @_opaqueReturnTypeOf("$s7SwiftUI24GraphicalDatePickerStyleV5_body13configurationQrAA0dE0VyAA01_deF5LabelVG_tF", 0) 🦸
}
  
@frozen public struct _FlipForRTLEffect : ViewModifier, Equatable {
  public var isEnabled: Bool
  @inlinable public init(isEnabled: Bool = true) {
        self.isEnabled = isEnabled
    }
  public typealias Body = Never
  public static func == (a: _FlipForRTLEffect, b: _FlipForRTLEffect) -> Bool
}
  
extension View {
  @inlinable public func flipsForRightToLeftLayoutDirection(_ enabled: Bool) -> some View {
        return modifier(_FlipForRTLEffect())
    }
  
}
  
extension _FlipForRTLEffect {
  public static func _makeView(modifier: _GraphValue<_FlipForRTLEffect>, inputs: _ViewInputs, body: @escaping (_Graph, _ViewInputs) -> _ViewOutputs) -> _ViewOutputs
}
  
public protocol InsettableShape : Shape {
  associatedtype InsetShape : InsettableShape
  func inset(by amount: CoreGraphics.CGFloat) -> Self.InsetShape
}
  
extension InsettableShape {
  @inlinable public func strokeBorder<S>(_ content: S, style: StrokeStyle, antialiased: Bool = true) -> some View where S : ShapeStyle {
        return inset(by: style.lineWidth * 0.5)
            .stroke(style: style)
            .fill(content, style: FillStyle(antialiased: antialiased))
    }
  
  @inlinable public func strokeBorder(style: StrokeStyle, antialiased: Bool = true) -> some View {
        return inset(by: style.lineWidth * 0.5)
            .stroke(style: style)
            .fill(style: FillStyle(antialiased: antialiased))
    }
  
  @inlinable public func strokeBorder<S>(_ content: S, lineWidth: CoreGraphics.CGFloat = 1, antialiased: Bool = true) -> some View where S : ShapeStyle {
        return strokeBorder(content, style: StrokeStyle(lineWidth: lineWidth),
            antialiased: antialiased)
    }
  
  @inlinable public func strokeBorder(lineWidth: CoreGraphics.CGFloat = 1, antialiased: Bool = true) -> some View {
        return strokeBorder(style: StrokeStyle(lineWidth: lineWidth),
            antialiased: antialiased)
    }
  
}
  
extension Rectangle : InsettableShape {
  @inlinable public func inset(by amount: CoreGraphics.CGFloat) -> some InsettableShape {
        return _Inset(amount: amount)
    }
  
  @usableFromInline
  @frozen internal struct _Inset : InsettableShape {
    @usableFromInline
    internal var amount: CoreGraphics.CGFloat
    @inlinable internal init(amount: CoreGraphics.CGFloat) {
            self.amount = amount
        }
    @usableFromInline
    internal func path(in rect: CoreGraphics.CGRect) -> Path
    @usableFromInline
    internal var animatableData: CoreGraphics.CGFloat {
      get
      set
    }
    @inlinable internal func inset(by amount: CoreGraphics.CGFloat) -> Rectangle._Inset {
            var copy = self
            copy.amount += amount
            return copy
        }
    @usableFromInline
    internal typealias InsetShape = Rectangle._Inset
    @usableFromInline
    internal typealias AnimatableData = CoreGraphics.CGFloat
    @usableFromInline
    internal typealias Body = _ShapeView<Rectangle._Inset, ForegroundStyle>
  }
  public typealias InsetShape = @_opaqueReturnTypeOf("$s7SwiftUI9RectangleV5inset2byQr12CoreGraphics7CGFloatV_tF", 0) 🦸
}
  
extension RoundedRectangle : InsettableShape {
  @inlinable public func inset(by amount: CoreGraphics.CGFloat) -> some InsettableShape {
        return _Inset(base: self, amount: amount)
    }
  
  @usableFromInline
  @frozen internal struct _Inset : InsettableShape {
    @usableFromInline
    internal var base: RoundedRectangle
    @usableFromInline
    internal var amount: CoreGraphics.CGFloat
    @inlinable internal init(base: RoundedRectangle, amount: CoreGraphics.CGFloat) {
            (self.base, self.amount) = (base, amount)
        }
    @usableFromInline
    internal func path(in rect: CoreGraphics.CGRect) -> Path
    @usableFromInline
    internal var animatableData: AnimatablePair<RoundedRectangle.AnimatableData, CoreGraphics.CGFloat> {
      get
      set
    }
    @inlinable internal func inset(by amount: CoreGraphics.CGFloat) -> RoundedRectangle._Inset {
            var copy = self
            copy.amount += amount
            return copy
        }
    @usableFromInline
    internal typealias InsetShape = RoundedRectangle._Inset
    @usableFromInline
    internal typealias AnimatableData = AnimatablePair<RoundedRectangle.AnimatableData, CoreGraphics.CGFloat>
    @usableFromInline
    internal typealias Body = _ShapeView<RoundedRectangle._Inset, ForegroundStyle>
  }
  public typealias InsetShape = @_opaqueReturnTypeOf("$s7SwiftUI16RoundedRectangleV5inset2byQr12CoreGraphics7CGFloatV_tF", 0) 🦸
}
  
extension Capsule : InsettableShape {
  @inlinable public func inset(by amount: CoreGraphics.CGFloat) -> some InsettableShape {
        return _Inset(amount: amount)
    }
  
  @usableFromInline
  @frozen internal struct _Inset : InsettableShape {
    @usableFromInline
    internal var amount: CoreGraphics.CGFloat
    @inlinable internal init(amount: CoreGraphics.CGFloat) {
            self.amount = amount
        }
    @usableFromInline
    internal func path(in rect: CoreGraphics.CGRect) -> Path
    @usableFromInline
    internal var animatableData: CoreGraphics.CGFloat {
      get
      set
    }
    @inlinable internal func inset(by amount: CoreGraphics.CGFloat) -> Capsule._Inset {
            var copy = self
            copy.amount += amount
            return copy
        }
    @usableFromInline
    internal typealias InsetShape = Capsule._Inset
    @usableFromInline
    internal typealias AnimatableData = CoreGraphics.CGFloat
    @usableFromInline
    internal typealias Body = _ShapeView<Capsule._Inset, ForegroundStyle>
  }
  public typealias InsetShape = @_opaqueReturnTypeOf("$s7SwiftUI7CapsuleV5inset2byQr12CoreGraphics7CGFloatV_tF", 0) 🦸
}
  
extension Ellipse : InsettableShape {
  @inlinable public func inset(by amount: CoreGraphics.CGFloat) -> some InsettableShape {
        return _Inset(amount: amount)
    }
  
  @usableFromInline
  @frozen internal struct _Inset : InsettableShape {
    @usableFromInline
    internal var amount: CoreGraphics.CGFloat
    @inlinable internal init(amount: CoreGraphics.CGFloat) {
            self.amount = amount
        }
    @usableFromInline
    internal func path(in rect: CoreGraphics.CGRect) -> Path
    @usableFromInline
    internal var animatableData: CoreGraphics.CGFloat {
      get
      set
    }
    @inlinable internal func inset(by amount: CoreGraphics.CGFloat) -> Ellipse._Inset {
            var copy = self
            copy.amount += amount
            return copy
        }
    @usableFromInline
    internal typealias InsetShape = Ellipse._Inset
    @usableFromInline
    internal typealias AnimatableData = CoreGraphics.CGFloat
    @usableFromInline
    internal typealias Body = _ShapeView<Ellipse._Inset, ForegroundStyle>
  }
  public typealias InsetShape = @_opaqueReturnTypeOf("$s7SwiftUI7EllipseV5inset2byQr12CoreGraphics7CGFloatV_tF", 0) 🦸
}
  
extension Circle : InsettableShape {
  @inlinable public func inset(by amount: CoreGraphics.CGFloat) -> some InsettableShape {
        return _Inset(amount: amount)
    }
  
  @usableFromInline
  @frozen internal struct _Inset : InsettableShape {
    @usableFromInline
    internal var amount: CoreGraphics.CGFloat
    @inlinable internal init(amount: CoreGraphics.CGFloat) {
            self.amount = amount
        }
    @usableFromInline
    internal func path(in rect: CoreGraphics.CGRect) -> Path
    @usableFromInline
    internal var animatableData: CoreGraphics.CGFloat {
      get
      set
    }
    @inlinable internal func inset(by amount: CoreGraphics.CGFloat) -> Circle._Inset {
            var copy = self
            copy.amount += amount
            return copy
        }
    @usableFromInline
    internal typealias InsetShape = Circle._Inset
    @usableFromInline
    internal typealias AnimatableData = CoreGraphics.CGFloat
    @usableFromInline
    internal typealias Body = _ShapeView<Circle._Inset, ForegroundStyle>
  }
  public typealias InsetShape = @_opaqueReturnTypeOf("$s7SwiftUI6CircleV5inset2byQr12CoreGraphics7CGFloatV_tF", 0) 🦸
}
  
@frozen public struct GeometryReader<Content> : View where Content : View {
  public var content: (GeometryProxy) -> Content
  @inlinable public init(@ViewBuilder content: @escaping (GeometryProxy) -> Content) {
        self.content = content
    }
  public static func _makeView(view: _GraphValue<GeometryReader<Content>>, inputs: _ViewInputs) -> _ViewOutputs
  public typealias Body = Never
}
  
public struct GeometryProxy {
  public var size: CoreGraphics.CGSize {
    get
  }
  public subscript<T>(anchor: Anchor<T>) -> T {
    get
  }
  public var safeAreaInsets: EdgeInsets {
    get
  }
  public func frame(in coordinateSpace: CoordinateSpace) -> CoreGraphics.CGRect
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct TouchBar<Content> where Content : View {
  public init(@ViewBuilder content: () -> Content)
  public init(id: String, @ViewBuilder content: () -> Content)
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public enum TouchBarItemPresence {
  case required(_: String)
  case `default`(_: String)
  case optional(_: String)
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension View {
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public func touchBar<Content>(_ touchBar: TouchBar<Content>) -> some View where Content : View
  
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public func touchBar<Content>(@ViewBuilder content: () -> Content) -> some View where Content : View
  
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct _TouchBarModifier<Content> : ViewModifier where Content : View {
  public static func _makeView(modifier: _GraphValue<_TouchBarModifier<Content>>, inputs: _ViewInputs, body: @escaping (_Graph, _ViewInputs) -> _ViewOutputs) -> _ViewOutputs
  public typealias Body = Never
}
extension View {
  @inlinable public func textContentType(_ textContentType: UIKit.UITextContentType?) -> some View {
        return environment(\.textContentType, textContentType?.rawValue)
    }
  
}
  
extension EnvironmentValues {
  @usableFromInline
  internal var textContentType: String? {
    get
    set
  }
}
  
extension Transaction {
  public var isContinuous: Bool {
    get
    set
  }
}
  
public protocol Shape : Animatable, View {
  func path(in rect: CoreGraphics.CGRect) -> Path
}
  
public protocol ShapeStyle {
  static func _makeView<S>(view: _GraphValue<_ShapeView<S, Self>>, inputs: _ViewInputs) -> _ViewOutputs where S : Shape
}
  
public struct _ViewModifier_Content<Modifier> where Modifier : ViewModifier {
  public static func _makeView(view: _GraphValue<_ViewModifier_Content<Modifier>>, inputs: _ViewInputs) -> _ViewOutputs
  public static func _makeViewList(view: _GraphValue<_ViewModifier_Content<Modifier>>, inputs: _ViewListInputs) -> _ViewListOutputs
  public typealias Body = Never
}
  
extension ViewModifier {
  public static func _makeView(modifier: _GraphValue<Self>, inputs: _ViewInputs, body: @escaping (_Graph, _ViewInputs) -> _ViewOutputs) -> _ViewOutputs
  public static func _makeViewList(modifier: _GraphValue<Self>, inputs: _ViewListInputs, body: @escaping (_Graph, _ViewListInputs) -> _ViewListOutputs) -> _ViewListOutputs
}
  
extension Color : ShapeStyle {
}
  
@frozen public struct LinearGradient : ShapeStyle, View {
  internal var gradient: Gradient
  internal var startPoint: UnitPoint
  internal var endPoint: UnitPoint
  public init(gradient: Gradient, startPoint: UnitPoint, endPoint: UnitPoint)
  public typealias Body = _ShapeView<Rectangle, LinearGradient>
}
  
@frozen public struct RadialGradient : ShapeStyle, View {
  internal var gradient: Gradient
  internal var center: UnitPoint
  internal var startRadius: CoreGraphics.CGFloat
  internal var endRadius: CoreGraphics.CGFloat
  public init(gradient: Gradient, center: UnitPoint, startRadius: CoreGraphics.CGFloat, endRadius: CoreGraphics.CGFloat)
  public typealias Body = _ShapeView<Rectangle, RadialGradient>
}
  
@frozen public struct AngularGradient : ShapeStyle, View {
  internal var gradient: Gradient
  internal var center: UnitPoint
  internal var startAngle: Angle
  internal var endAngle: Angle
  public init(gradient: Gradient, center: UnitPoint, startAngle: Angle = .zero, endAngle: Angle = .zero)
  public init(gradient: Gradient, center: UnitPoint, angle: Angle = .zero)
  public typealias Body = _ShapeView<Rectangle, AngularGradient>
}
  
public struct __FluidSpringTestLayout {
  public static let count: Int
  public init(iteration: Int, location: CoreGraphics.CGPoint?)
  public typealias AnimatableData = EmptyAnimatableData
  public typealias Body = Never
}
  
extension View {
  public func labelsHidden() -> some View
  
}
  
@frozen public struct __ScaleToFitView<V> : View where V : View {
  public var content: V
  public var bounds: CoreGraphics.CGRect
  @inlinable public init(content: V, bounds: CoreGraphics.CGRect) {
        self.content = content
        self.bounds = bounds
    }
  public var body: some View {
    get
  }
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI16__ScaleToFitViewV4bodyQrvp", 0) 🦸<V>
}
  
@frozen public struct __SetFrameLayout {
  @usableFromInline
  internal var frame: CoreGraphics.CGRect
  @inlinable public init(_ frame: CoreGraphics.CGRect) {
        self.frame = frame
    }
  public typealias Body = Never
  public typealias AnimatableData = EmptyAnimatableData
}
  
@propertyWrapper @frozen public struct ObservedObject<ObjectType> : DynamicProperty where ObjectType : Combine.ObservableObject {
  @dynamicMemberLookup @frozen public struct Wrapper {
    internal let root: ObjectType
    public subscript<Subject>(dynamicMember keyPath: ReferenceWritableKeyPath<ObjectType, Subject>) -> Binding<Subject> {
      get
    }
  }
  @usableFromInline
  internal var _seed: Int = 0
  @_alwaysEmitIntoClient public init(initialValue: ObjectType) {
      self.init(wrappedValue: initialValue)
    }
  public init(wrappedValue: ObjectType)
  public var wrappedValue: ObjectType
  public var projectedValue: ObservedObject<ObjectType>.Wrapper {
    get
  }
}
  
extension ObservedObject {
  public static func _makeProperty<V>(in buffer: inout _DynamicPropertyBuffer, container: _GraphValue<V>, fieldOffset: Int, inputs: inout _GraphInputs)
}
@available(iOS 13.0, *)
@available(OSX, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct WheelDatePickerStyle : DatePickerStyle {
  public init()
  public func _body(configuration: DatePicker<WheelDatePickerStyle._Label>) -> some View
  
  public typealias _Body = @_opaqueReturnTypeOf("$s7SwiftUI20WheelDatePickerStyleV5_body13configurationQrAA0dE0VyAA01_deF5LabelVG_tF", 0) 🦸
}
  
@frozen public struct VStack<Content> : View where Content : View {
  @usableFromInline
  internal var _tree: _VariadicView.Tree<_VStackLayout, Content>
  @inlinable public init(alignment: HorizontalAlignment = .center, spacing: CoreGraphics.CGFloat? = nil, @ViewBuilder content: () -> Content) {
        _tree = .init(
            root: _VStackLayout(alignment: alignment, spacing: spacing), content: content())
    }
  public static func _makeView(view: _GraphValue<VStack<Content>>, inputs: _ViewInputs) -> _ViewOutputs
  public typealias Body = Never
}
  
@frozen public struct _VStackLayout {
  public var alignment: HorizontalAlignment
  public var spacing: CoreGraphics.CGFloat?
  @inlinable public init(alignment: HorizontalAlignment = .center, spacing: CoreGraphics.CGFloat? = nil) {
        self.alignment = alignment
        self.spacing = spacing
    }
  public typealias Body = Never
  public typealias AnimatableData = EmptyAnimatableData
}
  
public struct PlainButtonStyle : PrimitiveButtonStyle {
  public init()
  public func makeBody(configuration: PlainButtonStyle.Configuration) -> some View
  
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI16PlainButtonStyleV8makeBody13configurationQrAA09PrimitivedE13ConfigurationV_tF", 0) 🦸
}
  
public protocol Gesture {
  associatedtype Value
  static func _makeGesture(gesture: _GraphValue<Self>, inputs: _GestureInputs) -> _GestureOutputs<Self.Value>
  associatedtype Body : Gesture
  var body: Self.Body { get }
}
  
extension Never {
  public typealias Value = Never
}
  
extension Gesture where Self.Value == Self.Body.Value {
  public static func _makeGesture(gesture: _GraphValue<Self>, inputs: _GestureInputs) -> _GestureOutputs<Self.Body.Value>
}
  
public struct _GestureInputs {
}
  
public struct _GestureOutputs<Value> {
}
  
public protocol DynamicProperty {
  static func _makeProperty<V>(in buffer: inout _DynamicPropertyBuffer, container: _GraphValue<V>, fieldOffset: Int, inputs: inout _GraphInputs)
  mutating func update()
}
  
extension DynamicProperty {
  public static func _makeProperty<V>(in buffer: inout _DynamicPropertyBuffer, container: _GraphValue<V>, fieldOffset: Int, inputs: inout _GraphInputs)
  mutating public func update()
}
  
extension Optional : Gesture where Wrapped : Gesture {
  public typealias Value = Wrapped.Value
  public static func _makeGesture(gesture: _GraphValue<Optional<Wrapped>>, inputs: _GestureInputs) -> _GestureOutputs<Wrapped.Value>
}
  
@frozen public struct AnyView : View {
  internal var storage: AnyViewStorageBase
  public init<V>(_ view: V) where V : View
  public init?(_fromValue value: Any)
  public static func _makeView(view: _GraphValue<AnyView>, inputs: _ViewInputs) -> _ViewOutputs
  public static func _makeViewList(view: _GraphValue<AnyView>, inputs: _ViewListInputs) -> _ViewListOutputs
  public typealias Body = Never
}
@usableFromInline
internal class AnyViewStorageBase {
  @objc @usableFromInline
  deinit
}
  
public struct DefaultButtonStyle : PrimitiveButtonStyle {
  public init()
  public func makeBody(configuration: DefaultButtonStyle.Configuration) -> some View
  
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI18DefaultButtonStyleV8makeBody13configurationQrAA09PrimitivedE13ConfigurationV_tF", 0) 🦸
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, *)
@available(watchOS, unavailable)
public struct DoubleColumnNavigationViewStyle : NavigationViewStyle {
  public init()
  public func _body(configuration: _NavigationViewStyleConfiguration) -> some View
  
  public typealias _Body = @_opaqueReturnTypeOf("$s7SwiftUI31DoubleColumnNavigationViewStyleV5_body13configurationQrAA01_efG13ConfigurationV_tF", 0) 🦸
}
  
public struct Divider : View {
  public init()
  public static func _makeView(view: _GraphValue<Divider>, inputs: _ViewInputs) -> _ViewOutputs
  public typealias Body = Never
}
public func __designTimeBoolean<T>(_ key: String, fallback: T) -> T where T : ExpressibleByBooleanLiteral
public func __designTimeFloat<T>(_ key: String, fallback: T) -> T where T : ExpressibleByFloatLiteral
public func __designTimeInteger<T>(_ key: String, fallback: T) -> T where T : ExpressibleByIntegerLiteral
public func __designTimeString<T>(_ key: String, fallback: T) -> T where T : ExpressibleByStringLiteral
  
public func __designTimeApplyIncrementalValues(_ updates: [[String : Any]])
  
extension Gesture {
  public func onEnded(_ action: @escaping (Self.Value) -> Void) -> _EndedGesture<Self>
}
  
extension Gesture where Self.Value : Equatable {
  public func onChanged(_ action: @escaping (Self.Value) -> Void) -> _ChangedGesture<Self>
}
  
public struct _EndedGesture<Content> where Content : Gesture {
  public static func _makeGesture(gesture: _GraphValue<_EndedGesture<Content>>, inputs: _GestureInputs) -> _GestureOutputs<Content.Value>
  public typealias Value = Content.Value
  public typealias Body = Never
}
  
public struct _ChangedGesture<Content> where Content : Gesture, Content.Value : Equatable {
  public static func _makeGesture(gesture: _GraphValue<_ChangedGesture<Content>>, inputs: _GestureInputs) -> _GestureOutputs<Content.Value>
  public typealias Value = Content.Value
  public typealias Body = Never
}
  
@frozen public struct Spacer {
  public var minLength: CoreGraphics.CGFloat?
  @inlinable public init(minLength: CoreGraphics.CGFloat? = nil) {
        self.minLength = minLength
    }
  public typealias Body = Never
}
  
@frozen public struct _HSpacer {
  public var minWidth: CoreGraphics.CGFloat?
  @inlinable public init(minWidth: CoreGraphics.CGFloat? = nil) {
        self.minWidth = minWidth
    }
  public typealias Body = Never
}
  
@frozen public struct _VSpacer {
  public var minHeight: CoreGraphics.CGFloat?
  @inlinable public init(minHeight: CoreGraphics.CGFloat? = nil) {
        self.minHeight = minHeight
    }
  public typealias Body = Never
}
  
extension Gesture {
  public func map<T>(_ body: @escaping (Self.Value) -> T) -> _MapGesture<Self, T>
}
  
public struct _MapGesture<Content, Value> where Content : Gesture {
  public static func _makeGesture(gesture: _GraphValue<_MapGesture<Content, Value>>, inputs: _GestureInputs) -> _GestureOutputs<Value>
  public typealias Body = Never
}
  
public struct ScrollView<Content> : View where Content : View {
  public var content: Content
  public var axes: Axis.Set {
    get
    set
  }
  public var showsIndicators: Bool {
    get
    set
  }
  public init(_ axes: Axis.Set = .vertical, showsIndicators: Bool = true, @ViewBuilder content: () -> Content)
  public var body: some View {
    get
  }
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI10ScrollViewV4bodyQrvp", 0) 🦸<Content>
}
  
extension AnyTransition {
  public func combined(with other: AnyTransition) -> AnyTransition
}
  
extension Gesture {
  @inlinable public func exclusively<Other>(before other: Other) -> ExclusiveGesture<Self, Other> where Other : Gesture {
        return ExclusiveGesture(self, other)
    }
}
  
@frozen public struct ExclusiveGesture<First, Second> where First : Gesture, Second : Gesture {
  @frozen public enum Value {
    case first(First.Value)
    case second(Second.Value)
  }
  public var first: First
  public var second: Second
  @inlinable public init(_ first: First, _ second: Second) {
        (self.first, self.second) = (first, second)
    }
  public static func _makeGesture(gesture: _GraphValue<ExclusiveGesture<First, Second>>, inputs: _GestureInputs) -> _GestureOutputs<ExclusiveGesture<First, Second>.Value>
  public typealias Body = Never
}
  
extension ExclusiveGesture.Value : Equatable where First.Value : Equatable, Second.Value : Equatable {
  public static func == (a: ExclusiveGesture<First, Second>.Value, b: ExclusiveGesture<First, Second>.Value) -> Bool
}
  
public struct PlainTextFieldStyle : TextFieldStyle {
  public init()
  public func _body(configuration: TextField<PlainTextFieldStyle._Label>) -> some View
  
  public typealias _Body = @_opaqueReturnTypeOf("$s7SwiftUI19PlainTextFieldStyleV5_body13configurationQrAA0dE0VyAA01_deF5LabelVG_tF", 0) 🦸
}
  
extension EnvironmentValues {
  public var _layoutCorrectnessAtTheExpenseOfSpeed: Bool {
    get
    set
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, *)
@available(watchOS, unavailable)
public struct TabView<SelectionValue, Content> : View where SelectionValue : Hashable, Content : View {
  public init(selection: Binding<SelectionValue>?, @ViewBuilder content: () -> Content)
  public var body: some View {
    get
  }
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI7TabViewV4bodyQrvp", 0) 🦸<SelectionValue, Content>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, *)
@available(watchOS, unavailable)
extension TabView where SelectionValue == Int {
  @available(watchOS, unavailable)
  public init(@ViewBuilder content: () -> Content)
}
  
public struct _EventDirections : OptionSet {
  public let rawValue: Int8
  public init(rawValue: Int8)
  public static let left: _EventDirections
  public static let right: _EventDirections
  public static let up: _EventDirections
  public static let down: _EventDirections
  public static let horizontal: _EventDirections
  public static let vertical: _EventDirections
  public static let all: _EventDirections
  public typealias Element = _EventDirections
  public typealias RawValue = Int8
  public typealias ArrayLiteralElement = _EventDirections
}
  
extension AnyTransition {
  public static func modifier<E>(active: E, identity: E) -> AnyTransition where E : ViewModifier
}
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(OSX, unavailable)
extension View {
  @available(OSX, unavailable)
  public func navigationBarHidden(_ hidden: Bool) -> some View
  
  @available(OSX, unavailable)
  public func navigationBarTitle(_ title: Text) -> some View
  
  @available(OSX, unavailable)
  public func navigationBarTitle(_ titleKey: LocalizedStringKey) -> some View
  
  @available(OSX, unavailable)
  @_disfavoredOverload public func navigationBarTitle<S>(_ title: S) -> some View where S : StringProtocol
  
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public func navigationBarTitle(_ title: Text, displayMode: NavigationBarItem.TitleDisplayMode) -> some View
  
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public func navigationBarTitle(_ titleKey: LocalizedStringKey, displayMode: NavigationBarItem.TitleDisplayMode) -> some View
  
  @available(OSX, unavailable)
  @available(watchOS, unavailable)
  public func navigationBarItems<L, T>(leading: L, trailing: T) -> some View where L : View, T : View
  
  @available(OSX, unavailable)
  @available(watchOS, unavailable)
  public func navigationBarItems<L>(leading: L) -> some View where L : View
  
  @available(OSX, unavailable)
  @available(watchOS, unavailable)
  public func navigationBarItems<T>(trailing: T) -> some View where T : View
  
  @available(OSX, unavailable)
  public func navigationBarBackButtonHidden(_ hidesBackButton: Bool) -> some View
  
}
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(OSX, unavailable)
public struct NavigationBarItem {
  public enum TitleDisplayMode {
    case automatic
    case inline
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    case large
    public static func == (a: NavigationBarItem.TitleDisplayMode, b: NavigationBarItem.TitleDisplayMode) -> Bool
    public var hashValue: Int {
      get
    }
    public func hash(into hasher: inout Hasher)
  }
}
@available(iOS 13.0, OSX 10.15, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct BorderlessButtonStyle : PrimitiveButtonStyle {
  public init()
  public func makeBody(configuration: BorderlessButtonStyle.Configuration) -> some View
  
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI21BorderlessButtonStyleV8makeBody13configurationQrAA09PrimitivedE13ConfigurationV_tF", 0) 🦸
}
  
public struct __UniversalListStyle : ListStyle {
  public init()
  public static func _makeView<SelectionValue>(value: _GraphValue<_ListValue<__UniversalListStyle, SelectionValue>>, inputs: _ViewInputs) -> _ViewOutputs where SelectionValue : Hashable
  public static func _makeViewList<SelectionValue>(value: _GraphValue<_ListValue<__UniversalListStyle, SelectionValue>>, inputs: _ViewListInputs) -> _ViewListOutputs where SelectionValue : Hashable
}
  
public struct _EventDebugTriggers : OptionSet {
  public let rawValue: Int
  public init(rawValue: Int)
  public static let responders: _EventDebugTriggers
  public static let sendEvents: _EventDebugTriggers
  public static let eventBindings: _EventDebugTriggers
  public static let eventPhases: _EventDebugTriggers
  public typealias Element = _EventDebugTriggers
  public typealias ArrayLiteralElement = _EventDebugTriggers
  public typealias RawValue = Int
}
  
public var _eventDebugTriggers: _EventDebugTriggers
  
extension Text {
  public enum TruncationMode {
    case head
    case tail
    case middle
    public static func == (a: Text.TruncationMode, b: Text.TruncationMode) -> Bool
    public var hashValue: Int {
      get
    }
    public func hash(into hasher: inout Hasher)
  }
}
  
extension EnvironmentValues {
  public var multilineTextAlignment: TextAlignment {
    get
    set
  }
  public var truncationMode: Text.TruncationMode {
    get
    set
  }
  public var lineSpacing: CoreGraphics.CGFloat {
    get
    set
  }
  public var allowsTightening: Bool {
    get
    set
  }
  public var lineLimit: Int? {
    get
    set
  }
  public var minimumScaleFactor: CoreGraphics.CGFloat {
    get
    set
  }
}
  
extension View {
  @inlinable public func multilineTextAlignment(_ alignment: TextAlignment) -> some View {
        return environment(\.multilineTextAlignment, alignment)
    }
  
  @inlinable public func truncationMode(_ mode: Text.TruncationMode) -> some View {
        return environment(\.truncationMode, mode)
    }
  
  @inlinable public func lineSpacing(_ lineSpacing: CoreGraphics.CGFloat) -> some View {
        return environment(\.lineSpacing, lineSpacing)
    }
  
  @inlinable public func allowsTightening(_ flag: Bool) -> some View {
        return environment(\.allowsTightening, flag)
    }
  
  @inlinable public func lineLimit(_ number: Int?) -> some View {
        return environment(\.lineLimit, number)
    }
  
  @inlinable public func minimumScaleFactor(_ factor: CoreGraphics.CGFloat) -> some View {
        return environment(\.minimumScaleFactor, factor)
    }
  
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension View {
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public func onCommand(_ selector: ObjectiveC.Selector, perform action: (() -> Void)?) -> some View
  
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public func onPasteCommand(of supportedTypes: [String], perform payloadAction: @escaping ([Foundation.NSItemProvider]) -> Void) -> some View
  
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public func onPasteCommand<Payload>(of supportedTypes: [String], validator: @escaping ([Foundation.NSItemProvider]) -> Payload?, perform payloadAction: @escaping (Payload) -> Void) -> some View
  
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public func onCopyCommand(perform payloadAction: (() -> [Foundation.NSItemProvider])?) -> some View
  
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public func onCutCommand(perform payloadAction: (() -> [Foundation.NSItemProvider])?) -> some View
  
}
  
public struct _Placement : Equatable {
  public var proposedSize: CoreGraphics.CGSize {
    get
    set
  }
  public var anchor: UnitPoint
  public var anchorPosition: CoreGraphics.CGPoint
  public init(proposedSize: CoreGraphics.CGSize, anchoring anchor: UnitPoint = .topLeading, at anchorPosition: CoreGraphics.CGPoint)
  public static func == (a: _Placement, b: _Placement) -> Bool
}
@available(iOS 13.0, OSX 10.15, watchOS 6.0, *)
@available(tvOS, unavailable)
public struct TapGesture {
  public var count: Int
  public init(count: Int = 1)
  public static func _makeGesture(gesture: _GraphValue<TapGesture>, inputs: _GestureInputs) -> _GestureOutputs<Void>
  public typealias Value = ()
  public typealias Body = Never
}
@available(iOS 13.0, OSX 10.15, watchOS 6.0, *)
@available(tvOS, unavailable)
extension View {
  public func onTapGesture(count: Int = 1, perform action: @escaping () -> Void) -> some View
  
}
  
@frozen public enum Axis : Int8, CaseIterable {
  case horizontal
  case vertical
  @frozen public struct Set : OptionSet {
    public typealias Element = Axis.Set
    public let rawValue: Int8
    public init(rawValue: Int8)
    public static let horizontal: Axis.Set
    public static let vertical: Axis.Set
    public typealias RawValue = Int8
    public typealias ArrayLiteralElement = Axis.Set.Element
  }
  public typealias RawValue = Int8
  public init?(rawValue: Int8)
  public var rawValue: Int8 {
    get
  }
  public typealias AllCases = [Axis]
  public static var allCases: [Axis] {
    get
  }
}
  
extension Axis : CustomStringConvertible {
  public var description: String {
    get
  }
}
  
extension AnyTransition {
  public func animation(_ animation: Animation?) -> AnyTransition
}
  
public enum _ViewDebug {
  public enum Property : UInt32, Hashable {
    case type
    case value
    case transform
    case position
    case size
    case environment
    case phase
    case layoutComputer
    case displayList
    public typealias RawValue = UInt32
    public init?(rawValue: UInt32)
    public var rawValue: UInt32 {
      get
    }
  }
  public struct Properties : OptionSet {
    public let rawValue: UInt32
    public init(rawValue: UInt32)
    public static let type: _ViewDebug.Properties
    public static let value: _ViewDebug.Properties
    public static let transform: _ViewDebug.Properties
    public static let position: _ViewDebug.Properties
    public static let size: _ViewDebug.Properties
    public static let environment: _ViewDebug.Properties
    public static let phase: _ViewDebug.Properties
    public static let layoutComputer: _ViewDebug.Properties
    public static let displayList: _ViewDebug.Properties
    public static let all: _ViewDebug.Properties
    public typealias Element = _ViewDebug.Properties
    public typealias ArrayLiteralElement = _ViewDebug.Properties
    public typealias RawValue = UInt32
  }
  public struct Data {
  }
}
  
extension _ViewDebug {
  public static func serializedData(_ viewDebugData: [_ViewDebug.Data]) -> Foundation.Data?
}
  
extension _ViewDebug.Data : Encodable {
  public func encode(to encoder: Encoder) throws
}
  
extension AnyTransition {
  public static let identity: AnyTransition
}
  
@propertyWrapper @frozen public struct GestureState<Value> : DynamicProperty {
  fileprivate var state: State<Value>
  fileprivate let reset: (Binding<Value>) -> Void
  public init(wrappedValue: Value)
  @_alwaysEmitIntoClient public init(initialValue: Value) {
        self.init(wrappedValue: initialValue, resetTransaction: Transaction())
    }
  public init(wrappedValue: Value, resetTransaction: Transaction)
  @_alwaysEmitIntoClient public init(initialValue: Value, resetTransaction: Transaction) {
      self.init(wrappedValue: initialValue, resetTransaction: resetTransaction)
    }
  public init(wrappedValue: Value, reset: @escaping (Value, inout Transaction) -> Void)
  @_alwaysEmitIntoClient public init(initialValue: Value, reset: @escaping (Value, inout Transaction) -> Void) {
      self.init(wrappedValue: initialValue, reset: reset)
    }
  public var wrappedValue: Value {
    get
  }
  public var projectedValue: GestureState<Value> {
    get
  }
}
  
extension GestureState where Value : ExpressibleByNilLiteral {
  public init(resetTransaction: Transaction = Transaction())
  public init(reset: @escaping (Value, inout Transaction) -> Void)
}
  
extension Gesture {
  @inlinable public func updating<State>(_ state: GestureState<State>, body: @escaping (Self.Value, inout State, inout Transaction) -> Void) -> GestureStateGesture<Self, State> {
        return .init(base: self, state: state, body: body)
    }
}
  
@frozen public struct GestureStateGesture<Base, State> : Gesture where Base : Gesture {
  public typealias Value = Base.Value
  public var base: Base
  public var state: GestureState<State>
  public var body: (GestureStateGesture<Base, State>.Value, inout State, inout Transaction) -> Void
  @inlinable public init(base: Base, state: GestureState<State>, body: @escaping (GestureStateGesture<Base, State>.Value, inout State, inout Transaction) -> Void) {
        self.base = base
        self.state = state
        self.body = body
    }
  public static func _makeGesture(gesture: _GraphValue<GestureStateGesture<Base, State>>, inputs: _GestureInputs) -> _GestureOutputs<GestureStateGesture<Base, State>.Value>
  public typealias Body = Never
}
@available(iOS 13.0, tvOS 13.0, *)
@available(OSX, unavailable)
@available(watchOS, unavailable)
public enum EditMode {
  case inactive
  case transient
  case active
  public var isEditing: Bool {
    get
  }
  public static func == (a: EditMode, b: EditMode) -> Bool
  public var hashValue: Int {
    get
  }
  public func hash(into hasher: inout Hasher)
}
@available(iOS 13.0, tvOS 13.0, *)
@available(OSX, unavailable)
@available(watchOS, unavailable)
extension EnvironmentValues {
  @available(OSX, unavailable)
  @available(watchOS, unavailable)
  public var editMode: Binding<EditMode>? {
    get
    set
  }
}
  
public struct _ConfigurableContentWriter<Content, ContentBody> : ViewModifier, _GraphInputsModifier where ContentBody : View {
  public static func _makeInputs(modifier: _GraphValue<_ConfigurableContentWriter<Content, ContentBody>>, inputs: inout _GraphInputs)
  public typealias Body = Never
}
  
@frozen public struct AnyTransition {
  fileprivate let box: AnyTransitionBox
}
@usableFromInline
internal class AnyTransitionBox {
  @objc @usableFromInline
  deinit
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public enum ControlSize : CaseIterable {
  case regular
  case small
  case mini
  public static func == (a: ControlSize, b: ControlSize) -> Bool
  public var hashValue: Int {
    get
  }
  public func hash(into hasher: inout Hasher)
  public typealias AllCases = [ControlSize]
  public static var allCases: [ControlSize] {
    get
  }
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension EnvironmentValues {
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public var controlSize: ControlSize {
    get
    set
  }
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension View {
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  @inlinable public func controlSize(_ controlSize: ControlSize) -> some View {
        return environment(\.controlSize, controlSize)
    }
  
}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
public struct CarouselListStyle : ListStyle {
  public init()
  public static func _makeView<SelectionValue>(value: _GraphValue<_ListValue<CarouselListStyle, SelectionValue>>, inputs: _ViewInputs) -> _ViewOutputs where SelectionValue : Hashable
  public static func _makeViewList<SelectionValue>(value: _GraphValue<_ListValue<CarouselListStyle, SelectionValue>>, inputs: _ViewListInputs) -> _ViewListOutputs where SelectionValue : Hashable
}
@usableFromInline
internal class AnyLocationBase {
  @objc @usableFromInline
  deinit
}
@usableFromInline
internal class AnyLocation<Value> : AnyLocationBase {
  @objc @usableFromInline
  deinit
}
@usableFromInline
internal struct ListRowInsetsTraitKey : _ViewTraitKey {
  @inlinable internal static var defaultValue: EdgeInsets? {
    get { nil }
  }
  @usableFromInline
  internal typealias Value = EdgeInsets?
}
  
extension View {
  @inlinable public func listRowInsets(_ insets: EdgeInsets?) -> some View {
        return _trait(ListRowInsetsTraitKey.self, insets)
    }
  
}
  
public struct _IdentifiedViewProxy {
  public var identifier: AnyHashable
  public var boundingRect: CoreGraphics.CGRect {
    get
  }
}
  
public enum _IdentifiedViewTree {
  case empty
  case proxy(_IdentifiedViewProxy)
  case array([_IdentifiedViewTree])
  public func forEach(_ body: (_IdentifiedViewProxy) -> Void)
}
  
public struct _IdentifiedViewsKey {
  public typealias Value = _IdentifiedViewTree
  public static let defaultValue: _IdentifiedViewTree
  public static func reduce(value: inout _IdentifiedViewsKey.Value, nextValue: () -> _IdentifiedViewsKey.Value)
}
  
@frozen public struct _IdentifiedModifier<Identifier> : ViewModifier, Equatable where Identifier : Hashable {
  public var identifier: Identifier
  @inlinable public init(identifier: Identifier) {
        self.identifier = identifier
    }
  public static func _makeView(modifier: _GraphValue<_IdentifiedModifier<Identifier>>, inputs: _ViewInputs, body: @escaping (_Graph, _ViewInputs) -> _ViewOutputs) -> _ViewOutputs
  public typealias Body = Never
  public static func == (a: _IdentifiedModifier<Identifier>, b: _IdentifiedModifier<Identifier>) -> Bool
}
  
extension View {
  @inlinable public func _identified<I>(by identifier: I) -> some View where I : Hashable {
        return modifier(_IdentifiedModifier(identifier: identifier))
    }
  
}
  
public struct _ScrollViewProxy : Equatable {
  public var config: _ScrollViewConfig {
    get
  }
  public var contentOffset: CoreGraphics.CGPoint {
    get
    set
  }
  public var minContentOffset: CoreGraphics.CGPoint {
    get
  }
  public var maxContentOffset: CoreGraphics.CGPoint {
    get
  }
  public var contentSize: CoreGraphics.CGSize {
    get
  }
  public var pageSize: CoreGraphics.CGSize {
    get
  }
  public var visibleRect: CoreGraphics.CGRect {
    get
  }
  public var isDragging: Bool {
    get
  }
  public var isDecelerating: Bool {
    get
  }
  public var isScrolling: Bool {
    get
  }
  public var isScrollingHorizontally: Bool {
    get
  }
  public var isScrollingVertically: Bool {
    get
  }
  public func setContentOffset(_ newOffset: CoreGraphics.CGPoint, animated: Bool, completion: ((Bool) -> Void)? = nil)
  public func scrollRectToVisible(_ rect: CoreGraphics.CGRect, animated: Bool, completion: ((Bool) -> Void)? = nil)
  public func contentOffsetOfNextPage(_ directions: _EventDirections) -> CoreGraphics.CGPoint
  public static func == (lhs: _ScrollViewProxy, rhs: _ScrollViewProxy) -> Bool
}
  
public struct _ContainedScrollViewKey {
  public typealias Value = _ScrollViewProxy?
  public static func reduce(value: inout _ContainedScrollViewKey.Value, nextValue: () -> _ContainedScrollViewKey.Value)
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct LinkButtonStyle : PrimitiveButtonStyle {
  public init()
  public func makeBody(configuration: LinkButtonStyle.Configuration) -> some View
  
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI15LinkButtonStyleV8makeBody13configurationQrAA09PrimitivedE13ConfigurationV_tF", 0) 🦸
}
  
extension AnyTransition {
  public static func move(edge: Edge) -> AnyTransition
}
  
extension Font {
  public func italic() -> Font
  public func smallCaps() -> Font
  public func lowercaseSmallCaps() -> Font
  public func uppercaseSmallCaps() -> Font
  public func monospacedDigit() -> Font
  public func weight(_ weight: Font.Weight) -> Font
  public func bold() -> Font
  public func _stylisticAlternative(_ alternative: Font._StylisticAlternative) -> Font
  @frozen public struct Weight : Hashable {
    internal var value: CoreGraphics.CGFloat
    public static let ultraLight: Font.Weight
    public static let thin: Font.Weight
    public static let light: Font.Weight
    public static let regular: Font.Weight
    public static let medium: Font.Weight
    public static let semibold: Font.Weight
    public static let bold: Font.Weight
    public static let heavy: Font.Weight
    public static let black: Font.Weight
    public static func == (a: Font.Weight, b: Font.Weight) -> Bool
    public var hashValue: Int {
      get
    }
    public func hash(into hasher: inout Hasher)
  }
  public enum _StylisticAlternative : Int, Hashable {
    case one
    case two
    case three
    case four
    case five
    case six
    case seven
    case eight
    case nine
    case ten
    case eleven
    case twelve
    case thirteen
    case fourteen
    case fifteen
    case sixteen
    case seventeen
    case eighteen
    case nineteen
    case twenty
    public typealias RawValue = Int
    public init?(rawValue: Int)
    public var rawValue: Int {
      get
    }
  }
}
  
public struct __DesignTimeSelectionIdentifier : Hashable {
  public let identifier: String
  public init(_ identifier: String)
  public var hashValue: Int {
    get
  }
  public func hash(into hasher: inout Hasher)
  public static func == (a: __DesignTimeSelectionIdentifier, b: __DesignTimeSelectionIdentifier) -> Bool
}
  
public protocol Animatable {
  associatedtype AnimatableData : VectorArithmetic
  var animatableData: Self.AnimatableData { get set }
  static func _makeAnimatable(value: inout _GraphValue<Self>, inputs: _GraphInputs)
}
  
extension Animatable where Self : VectorArithmetic {
  public var animatableData: Self {
    get
    set
  }
}
  
extension Animatable where Self.AnimatableData == EmptyAnimatableData {
  public var animatableData: EmptyAnimatableData {
    @inlinable get { return EmptyAnimatableData() }
    @inlinable set {}
  }
  public static func _makeAnimatable(value: inout _GraphValue<Self>, inputs: _GraphInputs)
}
  
extension Animatable {
  public static func _makeAnimatable(value: inout _GraphValue<Self>, inputs: _GraphInputs)
}
  
@frozen public struct EmptyAnimatableData : VectorArithmetic {
  @inlinable public init() {}
  @inlinable public static var zero: EmptyAnimatableData {
    get { return .init() }
  }
  @inlinable public static func += (lhs: inout EmptyAnimatableData, rhs: EmptyAnimatableData) {}
  @inlinable public static func -= (lhs: inout EmptyAnimatableData, rhs: EmptyAnimatableData) {}
  @inlinable public static func + (lhs: EmptyAnimatableData, rhs: EmptyAnimatableData) -> EmptyAnimatableData {
        return .zero
    }
  @inlinable public static func - (lhs: EmptyAnimatableData, rhs: EmptyAnimatableData) -> EmptyAnimatableData {
        return .zero
    }
  @inlinable mutating public func scale(by rhs: Double) {}
  @inlinable public var magnitudeSquared: Double {
    get { return 0 }
  }
  public static func == (a: EmptyAnimatableData, b: EmptyAnimatableData) -> Bool
}
  
extension Optional : View where Wrapped : View {
  public typealias Body = Never
  public static func _makeView(view: _GraphValue<Optional<Wrapped>>, inputs: _ViewInputs) -> _ViewOutputs
  public static func _makeViewList(view: _GraphValue<Optional<Wrapped>>, inputs: _ViewListInputs) -> _ViewListOutputs
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct SeparatorShapeStyle : ShapeStyle {
  public init()
  public static func _makeView<S>(view: _GraphValue<_ShapeView<S, SeparatorShapeStyle>>, inputs: _ViewInputs) -> _ViewOutputs where S : Shape
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct _SystemShapeStyle : ShapeStyle {
  public static let primaryFill: _SystemShapeStyle
  public static let secondaryFill: _SystemShapeStyle
  public static let tertiaryFill: _SystemShapeStyle
  public static let quaternaryFill: _SystemShapeStyle
  public static func _makeView<S>(view: _GraphValue<_ShapeView<S, _SystemShapeStyle>>, inputs: _ViewInputs) -> _ViewOutputs where S : Shape
}
  
@frozen public struct AnimatablePair<First, Second> : VectorArithmetic where First : VectorArithmetic, Second : VectorArithmetic {
  public var first: First
  public var second: Second
  @inlinable public init(_ first: First, _ second: Second) {
        self.first = first
        self.second = second
    }
  @inlinable internal subscript() -> (First, Second) {
    get { return (first, second) }
    set { (first, second) = newValue }
  }
  @_transparent public static var zero: AnimatablePair<First, Second> {
    get {
        return .init(First.zero, Second.zero)
    }
  }
  @_transparent public static func += (lhs: inout AnimatablePair<First, Second>, rhs: AnimatablePair<First, Second>) {
        lhs.first += rhs.first
        lhs.second += rhs.second
    }
  @_transparent public static func -= (lhs: inout AnimatablePair<First, Second>, rhs: AnimatablePair<First, Second>) {
        lhs.first -= rhs.first
        lhs.second -= rhs.second
    }
  @_transparent public static func + (lhs: AnimatablePair<First, Second>, rhs: AnimatablePair<First, Second>) -> AnimatablePair<First, Second> {
        return .init(lhs.first + rhs.first, lhs.second + rhs.second)
    }
  @_transparent public static func - (lhs: AnimatablePair<First, Second>, rhs: AnimatablePair<First, Second>) -> AnimatablePair<First, Second> {
        return .init(lhs.first - rhs.first, lhs.second - rhs.second)
    }
  @_transparent mutating public func scale(by rhs: Double) {
        first.scale(by: rhs)
        second.scale(by: rhs)
    }
  @_transparent public var magnitudeSquared: Double {
    get {
        return first.magnitudeSquared + second.magnitudeSquared
    }
  }
  public static func == (a: AnimatablePair<First, Second>, b: AnimatablePair<First, Second>) -> Bool
}
  
extension _ScrollView.Main {
  public static func _makeView(view: _GraphValue<_ScrollView<Provider>.Main>, inputs: _ViewInputs) -> _ViewOutputs
}
  
public enum _ScrollViewAnimationMode {
  case never
  case discreteChanges
  case always
  public static func == (a: _ScrollViewAnimationMode, b: _ScrollViewAnimationMode) -> Bool
  public var hashValue: Int {
    get
  }
  public func hash(into hasher: inout Hasher)
}
  
extension Transaction {
  public var _scrollViewAnimates: _ScrollViewAnimationMode {
    get
    set
  }
}
  
extension Animation {
  public static func easeInOut(duration: Double) -> Animation
  public static var easeInOut: Animation {
    get
  }
  public static func easeIn(duration: Double) -> Animation
  public static var easeIn: Animation {
    get
  }
  public static func easeOut(duration: Double) -> Animation
  public static var easeOut: Animation {
    get
  }
  public static func linear(duration: Double) -> Animation
  public static var linear: Animation {
    get
  }
  public static func timingCurve(_ c0x: Double, _ c0y: Double, _ c1x: Double, _ c1y: Double, duration: Double = 0.35) -> Animation
}
  
public struct ForEach<Data, ID, Content> where Data : RandomAccessCollection, ID : Hashable {
  public var data: Data
  public var content: (Data.Element) -> Content
}
  
extension ForEach : View where Content : View {
  public typealias Body = Never
  public static func _makeView(view: _GraphValue<ForEach<Data, ID, Content>>, inputs: _ViewInputs) -> _ViewOutputs
  public static func _makeViewList(view: _GraphValue<ForEach<Data, ID, Content>>, inputs: _ViewListInputs) -> _ViewListOutputs
}
  
extension ForEach where ID == Data.Element.ID, Content : View, Data.Element : Identifiable {
  public init(_ data: Data, @ViewBuilder content: @escaping (Data.Element) -> Content)
}
  
extension ForEach where Content : View {
  public init(_ data: Data, id: KeyPath<Data.Element, ID>, content: @escaping (Data.Element) -> Content)
}
  
extension ForEach where Data == Range<Int>, ID == Int, Content : View {
  public init(_ data: Range<Int>, @ViewBuilder content: @escaping (Int) -> Content)
}
  
extension Animation {
  public static func interpolatingSpring(mass: Double = 1.0, stiffness: Double, damping: Double, initialVelocity: Double = 0.0) -> Animation
}
@usableFromInline
@frozen internal struct IDView<Content, ID> : View where Content : View, ID : Hashable {
  @usableFromInline
  internal var content: Content
  @usableFromInline
  internal var id: ID
  @inlinable internal init(_ content: Content, id: ID) {
        self.content = content
        self.id = id
    }
  @usableFromInline
  internal var body: Never {
    get
  }
  @usableFromInline
  internal typealias Body = Never
}
  
extension View {
  @inlinable public func id<ID>(_ id: ID) -> some View where ID : Hashable {
        return IDView(self, id: id)
    }
  
}
extension IDView {
  @usableFromInline
  internal static func _makeView(view: _GraphValue<IDView<Content, ID>>, inputs: _ViewInputs) -> _ViewOutputs
}
extension IDView {
  @usableFromInline
  internal static func _makeViewList(view: _GraphValue<IDView<Content, ID>>, inputs: _ViewListInputs) -> _ViewListOutputs
}
  
public struct _PreferenceValue<Key> where Key : PreferenceKey {
}
  
@frozen public struct _DelayedPreferenceView<Key, Content> : View where Key : PreferenceKey, Content : View {
  public var transform: (_PreferenceValue<Key>) -> Content
  @inlinable public init(transform: @escaping (_PreferenceValue<Key>) -> Content) {
        self.transform = transform
    }
  public static func _makeView(view: _GraphValue<_DelayedPreferenceView<Key, Content>>, inputs: _ViewInputs) -> _ViewOutputs
  public typealias Body = Never
}
  
extension PreferenceKey {
  @inlinable public static func _delay<T>(_ transform: @escaping (_PreferenceValue<Self>) -> T) -> some View where T : View {
        return _DelayedPreferenceView(transform: transform)
    }
  
}
  
extension View {
  @inlinable public func overlayPreferenceValue<Key, T>(_ key: Key.Type = Key.self, @ViewBuilder _ transform: @escaping (Key.Value) -> T) -> some View where Key : PreferenceKey, T : View {
        return Key._delay { self.overlay($0._force(transform)) }
    }
  
  @inlinable public func backgroundPreferenceValue<Key, T>(_ key: Key.Type = Key.self, @ViewBuilder _ transform: @escaping (Key.Value) -> T) -> some View where Key : PreferenceKey, T : View {
        return Key._delay { self.background($0._force(transform)) }
    }
  
}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
public enum _CrownHapticsConfiguration {
  case none
  case infiniteScrolling
  case finiteScrolling(CoreGraphics.CGFloat, CoreGraphics.CGFloat)
  case platters([_CrownHapticsConfiguration.Notch])
  public struct Notch {
    public enum Strength {
      case weak
      case standard
      case strong
      public static func == (a: _CrownHapticsConfiguration.Notch.Strength, b: _CrownHapticsConfiguration.Notch.Strength) -> Bool
      public var hashValue: Int {
        get
      }
      public func hash(into hasher: inout Hasher)
    }
    public init(from: CoreGraphics.CGFloat, to: CoreGraphics.CGFloat, strength: _CrownHapticsConfiguration.Notch.Strength)
  }
}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
public protocol _CrownHapticsConfigurationProvider {
  func makeConfiguration() -> _CrownHapticsConfiguration
}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
extension _CrownHapticsConfigurationProvider {
  @available(iOS, unavailable)
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  public func notchRadius(forHeight notchHeight: CoreGraphics.CGFloat) -> CoreGraphics.CGFloat
}
  
extension Animation {
  public func delay(_ delay: Double) -> Animation
}
  
extension Animation {
  public func speed(_ speed: Double) -> Animation
}
  
extension Text : View {
  public static func _makeView(view: _GraphValue<Text>, inputs: _ViewInputs) -> _ViewOutputs
  public typealias Body = Never
}
  
public struct _SymmetricallyScaledText : View {
  public var source: Text
  public var reference: Text
  public init(source: Text, reference: Text)
  public static func _makeView(view: _GraphValue<_SymmetricallyScaledText>, inputs: _ViewInputs) -> _ViewOutputs
  public typealias Body = Never
}
  
extension Text {
  public func foregroundColor(_ color: Color?) -> Text
  public func font(_ font: Font?) -> Text
  public func fontWeight(_ weight: Font.Weight?) -> Text
  public func bold() -> Text
  public func italic() -> Text
  public func strikethrough(_ active: Bool = true, color: Color? = nil) -> Text
  public func underline(_ active: Bool = true, color: Color? = nil) -> Text
  public func kerning(_ kerning: CoreGraphics.CGFloat) -> Text
  public func tracking(_ tracking: CoreGraphics.CGFloat) -> Text
  public func baselineOffset(_ baselineOffset: CoreGraphics.CGFloat) -> Text
  public func _stylisticAlternative(_ alternative: Font._StylisticAlternative) -> Text
}
  
extension AnyTransition {
  public static func asymmetric(insertion: AnyTransition, removal: AnyTransition) -> AnyTransition
}
  
public protocol EnvironmentalModifier : ViewModifier where Self.Body == Never {
  associatedtype ResolvedModifier : ViewModifier
  func resolve(in environment: EnvironmentValues) -> Self.ResolvedModifier
}
  
extension EnvironmentalModifier {
  public static func _makeView(modifier: _GraphValue<Self>, inputs: _ViewInputs, body: @escaping (_Graph, _ViewInputs) -> _ViewOutputs) -> _ViewOutputs
  public static func _makeViewList(modifier: _GraphValue<Self>, inputs: _ViewListInputs, body: @escaping (_Graph, _ViewListInputs) -> _ViewListOutputs) -> _ViewListOutputs
}
  
extension Font {
  public static let largeTitle: Font
  public static let title: Font
  public static var headline: Font
  public static var subheadline: Font
  public static var body: Font
  public static var callout: Font
  public static var footnote: Font
  public static var caption: Font
  public static func system(_ style: Font.TextStyle, design: Font.Design = .default) -> Font
  public static func system(size: CoreGraphics.CGFloat, weight: Font.Weight = .regular, design: Font.Design = .default) -> Font
  public static func custom(_ name: String, size: CoreGraphics.CGFloat) -> Font
  public init(_ font: CoreText.CTFont)
  public enum TextStyle : CaseIterable {
    case largeTitle
    case title
    case headline
    case subheadline
    case body
    case callout
    case footnote
    case caption
    public static func == (a: Font.TextStyle, b: Font.TextStyle) -> Bool
    public var hashValue: Int {
      get
    }
    public func hash(into hasher: inout Hasher)
    public typealias AllCases = [Font.TextStyle]
    public static var allCases: [Font.TextStyle] {
      get
    }
  }
  public enum Design : Hashable {
    case `default`
    @available(watchOS, unavailable)
    case serif
    case rounded
    @available(watchOS, unavailable)
    case monospaced
    public static func == (a: Font.Design, b: Font.Design) -> Bool
    public var hashValue: Int {
      get
    }
    public func hash(into hasher: inout Hasher)
  }
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct SelectionShapeStyle : ShapeStyle {
}
  
@_functionBuilder public struct ViewBuilder {
  @_alwaysEmitIntoClient public static func buildBlock() -> EmptyView {
        return EmptyView()
    }
  @_alwaysEmitIntoClient public static func buildBlock<Content>(_ content: Content) -> Content where Content : View {
        return content
    }
}
  
extension ViewBuilder {
  @_alwaysEmitIntoClient public static func buildIf<Content>(_ content: Content?) -> Content? where Content : View {
        return content
    }
  @_alwaysEmitIntoClient public static func buildEither<TrueContent, FalseContent>(first: TrueContent) -> _ConditionalContent<TrueContent, FalseContent> where TrueContent : View, FalseContent : View {
    return .init(storage: .trueContent(first))
  }
  @_alwaysEmitIntoClient public static func buildEither<TrueContent, FalseContent>(second: FalseContent) -> _ConditionalContent<TrueContent, FalseContent> where TrueContent : View, FalseContent : View {
    return .init(storage: .falseContent(second))
  }
}
  
public struct _CircleLayout {
  public let radius: CoreGraphics.CGFloat
  public init(radius: CoreGraphics.CGFloat)
  public typealias AnimatableData = EmptyAnimatableData
  public typealias Body = Never
}
  
extension View {
  public func accessibility(hidden: Bool) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
  public func accessibility(label: Text) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
  public func accessibility(value: Text) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
  public func accessibility(hint: Text) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
  public func accessibility(addTraits traits: AccessibilityTraits) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
  public func accessibility(removeTraits traits: AccessibilityTraits) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
  public func accessibility(identifier: String) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
  public func accessibility(selectionIdentifier: AnyHashable) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
  public func accessibility(sortPriority: Double) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
  public func accessibility(activationPoint: CoreGraphics.CGPoint) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
  public func accessibility(activationPoint: UnitPoint) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
}
  
extension ModifiedContent where Modifier == AccessibilityAttachmentModifier {
  public func accessibility(hidden: Bool) -> ModifiedContent<Content, Modifier>
  public func accessibility(label: Text) -> ModifiedContent<Content, Modifier>
  public func accessibility(value: Text) -> ModifiedContent<Content, Modifier>
  public func accessibility(hint: Text) -> ModifiedContent<Content, Modifier>
  public func accessibility(addTraits traits: AccessibilityTraits) -> ModifiedContent<Content, Modifier>
  public func accessibility(removeTraits traits: AccessibilityTraits) -> ModifiedContent<Content, Modifier>
  public func accessibility(identifier: String) -> ModifiedContent<Content, Modifier>
  public func accessibility(selectionIdentifier: AnyHashable) -> ModifiedContent<Content, Modifier>
  public func accessibility(sortPriority: Double) -> ModifiedContent<Content, Modifier>
  public func accessibility(activationPoint: CoreGraphics.CGPoint) -> ModifiedContent<Content, Modifier>
  public func accessibility(activationPoint: UnitPoint) -> ModifiedContent<Content, Modifier>
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
@usableFromInline
internal struct MenuDepthTraitKey : _ViewTraitKey {
  @inlinable internal static var defaultValue: Int {
    get { 0 }
  }
  @usableFromInline
  internal typealias Value = Int
}
  
extension Binding {
  public init<V>(_ base: Binding<V>) where Value == V?
  public init?(_ base: Binding<Value?>)
  public init<V>(_ base: Binding<V>) where Value == AnyHashable, V : Hashable
}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
extension View {
  @available(iOS, unavailable)
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  public func _navigationDestination<Content>(isPresented: Binding<Bool>, @ViewBuilder content: () -> Content) -> some View where Content : View
  
  @available(iOS, unavailable)
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  public func _navigationDestination<Item, Content>(item: Binding<Item?>, @ViewBuilder content: @escaping (Item) -> Content) -> some View where Item : Identifiable, Content : View
  
  @available(iOS, unavailable)
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  public func _navigationDestination(isPresented: Binding<Bool>, storyboardName: String) -> some View
  
  @available(iOS, unavailable)
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  public func _navigationDestination<Item>(item: Binding<Item?>, storyboardName: String) -> some View where Item : Identifiable
  
}
  
extension Shape {
  @inlinable public func fill<S>(_ content: S, style: FillStyle = FillStyle()) -> some View where S : ShapeStyle {
        return _ShapeView(shape: self, style: content, fillStyle: style)
    }
  
  @inlinable public func fill(style: FillStyle = FillStyle()) -> some View {
        return _ShapeView(shape: self,
            style: ForegroundStyle(), fillStyle: style)
    }
  
  @inlinable public func stroke<S>(_ content: S, style: StrokeStyle) -> some View where S : ShapeStyle {
        return stroke(style: style).fill(content)
    }
  
  @inlinable public func stroke<S>(_ content: S, lineWidth: CoreGraphics.CGFloat = 1) -> some View where S : ShapeStyle {
        return stroke(content, style: StrokeStyle(lineWidth: lineWidth))
    }
  
}
  
extension Shape {
  public var body: _ShapeView<Self, ForegroundStyle> {
    get
  }
}
  
extension ShapeStyle where Self : View, Self.Body == _ShapeView<Rectangle, Self> {
  public var body: _ShapeView<Rectangle, Self> {
    get
  }
}
  
@frozen public struct _ShapeView<Content, Style> : View where Content : Shape, Style : ShapeStyle {
  public var shape: Content
  public var style: Style
  public var fillStyle: FillStyle
  @inlinable public init(shape: Content, style: Style, fillStyle: FillStyle = FillStyle()) {
        self.shape = shape
        self.style = style
        self.fillStyle = fillStyle
    }
  public static func _makeView(view: _GraphValue<_ShapeView<Content, Style>>, inputs: _ViewInputs) -> _ViewOutputs
  public typealias Body = Never
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct _ProminentPopUpButtonStyle : _PopUpButtonStyle {
  public init()
  public func body(configuration: _ResolvedPopUpButton) -> _ProminentPopUpButtonStyle.Body
  public struct Body : View {
    public var body: some View {
      get
    }
    public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI26_ProminentPopUpButtonStyleV4BodyV4bodyQrvp", 0) 🦸
  }
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct _PlainPopUpButtonStyle : _PopUpButtonStyle {
  public init(showArrows: Bool)
  public func body(configuration: _ResolvedPopUpButton) -> _PlainPopUpButtonStyle.Body
  public struct Body : View {
    public var body: some View {
      get
    }
    public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI22_PlainPopUpButtonStyleV4BodyV4bodyQrvp", 0) 🦸
  }
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct _TexturedPopUpButtonStyle : _PopUpButtonStyle {
  public init()
  public func body(configuration: _ResolvedPopUpButton) -> _TexturedPopUpButtonStyle.Body
  public struct Body : View {
    public var body: some View {
      get
    }
    public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI25_TexturedPopUpButtonStyleV4BodyV4bodyQrvp", 0) 🦸
  }
}
  
extension Color {
  public init(_ name: String, bundle: Foundation.Bundle? = nil)
  public static var _mainNamedBundle: Foundation.Bundle?
}
  
@frozen public struct _PreferenceReadingView<Key, Content> : View where Key : PreferenceKey, Content : View {
  public var value: _PreferenceValue<Key>
  public var transform: (Key.Value) -> Content
  @inlinable public init(value: _PreferenceValue<Key>, transform: @escaping (Key.Value) -> Content) {
        self.value = value
        self.transform = transform
    }
  public static func _makeView(view: _GraphValue<_PreferenceReadingView<Key, Content>>, inputs: _ViewInputs) -> _ViewOutputs
  public typealias Body = Never
}
  
extension _PreferenceValue {
  @inlinable public func _force<T>(_ transform: @escaping (Key.Value) -> T) -> _PreferenceReadingView<Key, T> where T : View {
        return _PreferenceReadingView(value: self, transform: transform)
    }
}
  
extension Animation {
  public func repeatCount(_ repeatCount: Int, autoreverses: Bool = true) -> Animation
  public func repeatForever(autoreverses: Bool = true) -> Animation
}
  
public struct _ViewListInputs {
}
  
public struct _ViewListOutputs {
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, *)
@available(watchOS, unavailable)
extension View {
  @available(watchOS, unavailable)
  public func tabItem<V>(@ViewBuilder _ label: () -> V) -> some View where V : View
  
}
  
@frozen public struct HStack<Content> : View where Content : View {
  @usableFromInline
  internal var _tree: _VariadicView.Tree<_HStackLayout, Content>
  @inlinable public init(alignment: VerticalAlignment = .center, spacing: CoreGraphics.CGFloat? = nil, @ViewBuilder content: () -> Content) {
        _tree = .init(
            root: _HStackLayout(alignment: alignment, spacing: spacing), content: content())
    }
  public static func _makeView(view: _GraphValue<HStack<Content>>, inputs: _ViewInputs) -> _ViewOutputs
  public typealias Body = Never
}
  
@frozen public struct _HStackLayout {
  public var alignment: VerticalAlignment
  public var spacing: CoreGraphics.CGFloat?
  @inlinable public init(alignment: VerticalAlignment = .center, spacing: CoreGraphics.CGFloat? = nil) {
        self.alignment = alignment
        self.spacing = spacing
    }
  public typealias AnimatableData = EmptyAnimatableData
  public typealias Body = Never
}
public var _disableAnimations: Bool
  
public struct AccessibilityTraits : SetAlgebra {
  public static let isButton: AccessibilityTraits
  public static let isHeader: AccessibilityTraits
  public static let isSelected: AccessibilityTraits
  public static let isLink: AccessibilityTraits
  public static let isSearchField: AccessibilityTraits
  public static let isImage: AccessibilityTraits
  public static let playsSound: AccessibilityTraits
  public static let isKeyboardKey: AccessibilityTraits
  public static let isStaticText: AccessibilityTraits
  public static let isSummaryElement: AccessibilityTraits
  public static let updatesFrequently: AccessibilityTraits
  public static let startsMediaSession: AccessibilityTraits
  public static let allowsDirectInteraction: AccessibilityTraits
  public static let causesPageTurn: AccessibilityTraits
  public static let isModal: AccessibilityTraits
  public init()
  mutating public func formUnion(_ other: AccessibilityTraits)
  public func intersection(_ other: AccessibilityTraits) -> AccessibilityTraits
  mutating public func formIntersection(_ other: AccessibilityTraits)
  public func symmetricDifference(_ other: AccessibilityTraits) -> AccessibilityTraits
  mutating public func formSymmetricDifference(_ other: AccessibilityTraits)
  public func contains(_ member: AccessibilityTraits) -> Bool
  public func union(_ other: AccessibilityTraits) -> AccessibilityTraits
  mutating public func remove(_ member: AccessibilityTraits) -> AccessibilityTraits?
  mutating public func insert(_ newMember: AccessibilityTraits) -> (inserted: Bool, memberAfterInsert: AccessibilityTraits)
  mutating public func update(with newMember: AccessibilityTraits) -> AccessibilityTraits?
  public typealias Element = AccessibilityTraits
  public typealias ArrayLiteralElement = AccessibilityTraits
  public static func == (a: AccessibilityTraits, b: AccessibilityTraits) -> Bool
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct SquareBorderTextFieldStyle : TextFieldStyle {
  public init()
  public func _body(configuration: TextField<SquareBorderTextFieldStyle._Label>) -> some View
  
  public typealias _Body = @_opaqueReturnTypeOf("$s7SwiftUI26SquareBorderTextFieldStyleV5_body13configurationQrAA0eF0VyAA01_efG5LabelVG_tF", 0) 🦸
}
  
extension View {
  public func _defaultContext() -> some View
  
}
  
@frozen public struct _Rotation3DEffect : GeometryEffect, Equatable {
  public var angle: Angle
  public var axis: (x: CoreGraphics.CGFloat, y: CoreGraphics.CGFloat, z: CoreGraphics.CGFloat)
  public var anchor: UnitPoint
  public var anchorZ: CoreGraphics.CGFloat
  public var perspective: CoreGraphics.CGFloat
  @inlinable public init(angle: Angle, axis: (x: CoreGraphics.CGFloat, y: CoreGraphics.CGFloat, z: CoreGraphics.CGFloat), anchor: UnitPoint = .center, anchorZ: CoreGraphics.CGFloat = 0, perspective: CoreGraphics.CGFloat = 1) {
        self.angle = angle
        self.axis = axis
        self.anchor = anchor
        self.anchorZ = anchorZ
        self.perspective = perspective
    }
  public func effectValue(size: CoreGraphics.CGSize) -> ProjectionTransform
  public typealias AnimatableData = AnimatablePair<Angle.AnimatableData, AnimatablePair<CoreGraphics.CGFloat, AnimatablePair<CoreGraphics.CGFloat, AnimatablePair<CoreGraphics.CGFloat, AnimatablePair<UnitPoint.AnimatableData, AnimatablePair<CoreGraphics.CGFloat, CoreGraphics.CGFloat>>>>>>
  public var animatableData: _Rotation3DEffect.AnimatableData {
    get
    set
  }
  public static func == (lhs: _Rotation3DEffect, rhs: _Rotation3DEffect) -> Bool
  public typealias Body = Never
}
  
extension View {
  @inlinable public func rotation3DEffect(_ angle: Angle, axis: (x: CoreGraphics.CGFloat, y: CoreGraphics.CGFloat, z: CoreGraphics.CGFloat), anchor: UnitPoint = .center, anchorZ: CoreGraphics.CGFloat = 0, perspective: CoreGraphics.CGFloat = 1) -> some View {
        return modifier(_Rotation3DEffect(
            angle: angle, axis: axis, anchor: anchor, anchorZ: anchorZ,
            perspective: perspective
        ))
    }
  
}
  
@frozen public struct Alignment : Equatable {
  public var horizontal: HorizontalAlignment
  public var vertical: VerticalAlignment
  @inlinable public init(horizontal: HorizontalAlignment, vertical: VerticalAlignment) {
        self.horizontal = horizontal
        self.vertical = vertical
    }
  public static let center: Alignment
  public static let leading: Alignment
  public static let trailing: Alignment
  public static let top: Alignment
  public static let bottom: Alignment
  public static let topLeading: Alignment
  public static let topTrailing: Alignment
  public static let bottomLeading: Alignment
  public static let bottomTrailing: Alignment
  public static func == (a: Alignment, b: Alignment) -> Bool
}
  
@frozen public struct ZStack<Content> : View where Content : View {
  @usableFromInline
  internal var _tree: _VariadicView.Tree<_ZStackLayout, Content>
  @inlinable public init(alignment: Alignment = .center, @ViewBuilder content: () -> Content) {
        _tree = .init(
            root: _ZStackLayout(alignment: alignment), content: content())
    }
  public static func _makeView(view: _GraphValue<ZStack<Content>>, inputs: _ViewInputs) -> _ViewOutputs
  public typealias Body = Never
}
  
@frozen public struct _ZStackLayout {
  public var alignment: Alignment
  @inlinable public init(alignment: Alignment = .center) {
        self.alignment = alignment
    }
  public typealias AnimatableData = EmptyAnimatableData
  public typealias Body = Never
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
@usableFromInline
internal struct TouchBarItemPresenceTraitKey : _ViewTraitKey {
  @inlinable internal static var defaultValue: TouchBarItemPresence? {
    get { nil }
  }
  @usableFromInline
  internal typealias Value = TouchBarItemPresence?
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension View {
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  @inlinable public func touchBarItemPresence(_ presence: TouchBarItemPresence) -> some View {
        return _trait(TouchBarItemPresenceTraitKey.self, presence)
    }
  
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
@usableFromInline
internal struct TouchBarItemPrincipalTraitKey : _ViewTraitKey {
  @inlinable internal static var defaultValue: Bool {
    get { false }
  }
  @usableFromInline
  internal typealias Value = Bool
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension View {
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  @inlinable public func touchBarItemPrincipal(_ principal: Bool = true) -> some View {
        return _trait(TouchBarItemPrincipalTraitKey.self, principal)
    }
  
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
@usableFromInline
internal struct TouchBarCustomizationLabelTraitKey : _ViewTraitKey {
  @inlinable internal static var defaultValue: Text {
    get { Text("") }
  }
  @usableFromInline
  internal typealias Value = Text
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension View {
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  @inlinable public func touchBarCustomizationLabel(_ label: Text) -> some View {
        return _trait(TouchBarCustomizationLabelTraitKey.self, label)
    }
  
}
  
@frozen public struct Angle {
  public var radians: Double
  @inlinable public var degrees: Double {
    get { return radians * (180.0 / .pi) }
    set { radians = newValue * (.pi / 180.0) }
  }
  @inlinable public init() {
        self.init(radians: 0.0)
    }
  @inlinable public init(radians: Double) {
        self.radians = radians
    }
  @inlinable public init(degrees: Double) {
        self.init(radians: degrees * (.pi / 180.0))
    }
  @inlinable public static func radians(_ radians: Double) -> Angle {
        return Angle(radians: radians)
    }
  @inlinable public static func degrees(_ degrees: Double) -> Angle {
        return Angle(degrees: degrees)
    }
}
  
extension Angle : Hashable, Comparable {
  @inlinable public static func < (lhs: Angle, rhs: Angle) -> Bool {
        return lhs.radians < rhs.radians
    }
  public static func == (a: Angle, b: Angle) -> Bool
  public var hashValue: Int {
    get
  }
  public func hash(into hasher: inout Hasher)
}
  
extension Angle : Animatable, _VectorMath {
  public var animatableData: Double {
    get
    set
  }
  @inlinable public static var zero: Angle {
    get {
        return .init()
    }
  }
  public typealias AnimatableData = Double
}
  
@frozen public struct _EnvironmentKeyTransformModifier<Value> : ViewModifier, _GraphInputsModifier {
  public var keyPath: WritableKeyPath<EnvironmentValues, Value>
  public var transform: (inout Value) -> Void
  @inlinable public init(keyPath: WritableKeyPath<EnvironmentValues, Value>, transform: @escaping (inout Value) -> Void) {
        self.keyPath = keyPath
        self.transform = transform
    }
  public static func _makeInputs(modifier: _GraphValue<_EnvironmentKeyTransformModifier<Value>>, inputs: inout _GraphInputs)
  public typealias Body = Never
}
  
extension View {
  @inlinable public func transformEnvironment<V>(_ keyPath: WritableKeyPath<EnvironmentValues, V>, transform: @escaping (inout V) -> Void) -> some View {
        return modifier(_EnvironmentKeyTransformModifier(
            keyPath: keyPath, transform: transform))
    }
  
}
  
public struct FetchedResults<Result> : RandomAccessCollection where Result : CoreData.NSFetchRequestResult {
  public var startIndex: Int {
    get
  }
  public var endIndex: Int {
    get
  }
  public subscript(position: Int) -> Result {
    get
  }
  public typealias Element = Result
  public typealias Index = Int
  public typealias SubSequence = Slice<FetchedResults<Result>>
  public typealias Indices = Range<Int>
  public typealias Iterator = IndexingIterator<FetchedResults<Result>>
}
  
@propertyWrapper public struct FetchRequest<Result> : DynamicProperty where Result : CoreData.NSFetchRequestResult {
  public var wrappedValue: FetchedResults<Result> {
    get
  }
  public init(entity: CoreData.NSEntityDescription, sortDescriptors: [Foundation.NSSortDescriptor], predicate: Foundation.NSPredicate? = nil, animation: Animation? = nil)
  public init(fetchRequest: CoreData.NSFetchRequest<Result>, animation: Animation? = nil)
  public init(fetchRequest: CoreData.NSFetchRequest<Result>, transaction: Transaction)
  mutating public func update()
}
  
extension FetchRequest where Result : CoreData.NSManagedObject {
  public init(sortDescriptors: [Foundation.NSSortDescriptor], predicate: Foundation.NSPredicate? = nil, animation: Animation? = nil)
}
  
public struct PresentationMode {
  public var isPresented: Bool {
    get
    }
  mutating public func dismiss()
}
  
extension EnvironmentValues {
    
  public var presentationMode: Binding<PresentationMode> {
    get
  }
}
  
public struct ViewDimensions {
  public var width: CoreGraphics.CGFloat {
    get
  }
  public var height: CoreGraphics.CGFloat {
    get
  }
  public subscript(guide: HorizontalAlignment) -> CoreGraphics.CGFloat {
    get
  }
  public subscript(guide: VerticalAlignment) -> CoreGraphics.CGFloat {
    get
  }
  public subscript(explicit guide: HorizontalAlignment) -> CoreGraphics.CGFloat? {
    get
  }
  public subscript(explicit guide: VerticalAlignment) -> CoreGraphics.CGFloat? {
    get
  }
}
  
extension ViewDimensions : Equatable {
  public static func == (lhs: ViewDimensions, rhs: ViewDimensions) -> Bool
}
  
extension View {
  public func accessibilityScrollAction(_ handler: @escaping (Edge) -> Void) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
}
  
extension ModifiedContent where Modifier == AccessibilityAttachmentModifier {
  public func accessibilityScrollAction(_ handler: @escaping (Edge) -> Void) -> ModifiedContent<Content, Modifier>
}
  
extension Image {
  public init(_ cgImage: CoreGraphics.CGImage, scale: CoreGraphics.CGFloat, orientation: Image.Orientation = .up, label: Text)
  public init(decorative cgImage: CoreGraphics.CGImage, scale: CoreGraphics.CGFloat, orientation: Image.Orientation = .up)
}
  
@frozen public struct _CoordinateSpaceModifier<Name> : ViewModifier, Equatable where Name : Hashable {
  public var name: Name
  @inlinable public init(name: Name) {
        self.name = name
    }
  public static func _makeViewInputs(modifier: _GraphValue<_CoordinateSpaceModifier<Name>>, inputs: inout _ViewInputs)
  public typealias Body = Never
  public static func == (a: _CoordinateSpaceModifier<Name>, b: _CoordinateSpaceModifier<Name>) -> Bool
}
  
extension View {
  @inlinable public func coordinateSpace<T>(name: T) -> some View where T : Hashable {
        return modifier(_CoordinateSpaceModifier(name: name))
    }
  
}
  
@frozen public struct _ContentShapeModifier<ContentShape> : ViewModifier where ContentShape : Shape {
  public var shape: ContentShape
  public var eoFill: Bool
  @inlinable public init(shape: ContentShape, eoFill: Bool = false) {
        self.shape = shape
        self.eoFill = eoFill
    }
  public static func _makeView(modifier: _GraphValue<_ContentShapeModifier<ContentShape>>, inputs: _ViewInputs, body: @escaping (_Graph, _ViewInputs) -> _ViewOutputs) -> _ViewOutputs
  public typealias Body = Never
}
  
extension View {
  @inlinable public func contentShape<S>(_ shape: S, eoFill: Bool = false) -> some View where S : Shape {
        return modifier(_ContentShapeModifier(shape: shape, eoFill: eoFill))
    }
  
}
  
extension _BenchmarkHost {
  public func viewForIdentifier<I, V>(_ identifier: I, _ type: V.Type) -> V? where I : Hashable, V : View
  public func stateForIdentifier<I, S, V>(_ id: I, type _: S.Type, in _: V.Type) -> Binding<S>? where I : Hashable, V : View
}
  
@frozen public struct _PreferenceWritingModifier<Key> : ViewModifier where Key : PreferenceKey {
  public var value: Key.Value
  @inlinable public init(key _: Key.Type = Key.self, value: Key.Value) {
        self.value = value
    }
  public static func _makeView(modifier: _GraphValue<_PreferenceWritingModifier<Key>>, inputs: _ViewInputs, body: @escaping (_Graph, _ViewInputs) -> _ViewOutputs) -> _ViewOutputs
  public typealias Body = Never
}
  
extension _PreferenceWritingModifier : Equatable where Key.Value : Equatable {
  public static func == (a: _PreferenceWritingModifier<Key>, b: _PreferenceWritingModifier<Key>) -> Bool
}
  
extension View {
  @inlinable public func preference<K>(key _: K.Type = K.self, value: K.Value) -> some View where K : PreferenceKey {
        return modifier(_PreferenceWritingModifier<K>(value: value))
    }
  
}
  
extension View {
  @inlinable public func transaction(_ transform: @escaping (inout Transaction) -> Void) -> some View {
        return modifier(_TransactionModifier(transform: transform))
    }
  
  @inlinable public func animation(_ animation: Animation?) -> some View {
        return transaction { $0.animation = animation }
    }
  
}
  
extension ViewModifier {
  @inlinable public func transaction(_ transform: @escaping (inout Transaction) -> Void) -> some ViewModifier {
        return _PushPopTransactionModifier(content: self, transform: transform)
    }
  
  @inlinable public func animation(_ animation: Animation?) -> some ViewModifier {
        return transaction { $0.animation = animation }
    }
  
}
  
@frozen public struct _TransactionModifier : ViewModifier, _GraphInputsModifier {
  public var transform: (inout Transaction) -> Void
  @inlinable public init(transform: @escaping (inout Transaction) -> Void) {
        self.transform = transform
    }
  public static func _makeInputs(modifier: _GraphValue<_TransactionModifier>, inputs: inout _GraphInputs)
  public typealias Body = Never
}
  
@frozen public struct _PushPopTransactionModifier<Content> : ViewModifier where Content : ViewModifier {
  public var content: Content
  public var base: _TransactionModifier
  @inlinable public init(content: Content, transform: @escaping (inout Transaction) -> Void) {
        self.content = content
        base = .init(transform: transform)
    }
  public static func _makeView(modifier: _GraphValue<_PushPopTransactionModifier<Content>>, inputs: _ViewInputs, body: @escaping (_Graph, _ViewInputs) -> _ViewOutputs) -> _ViewOutputs
  public typealias Body = Never
}
  
extension View {
  public func accessibilityElement(children: AccessibilityChildBehavior = .ignore) -> some View
  
}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
public enum _DigitalCrownDecelerationRate {
  case immediate
  case fast
  case normal
  public static func == (a: _DigitalCrownDecelerationRate, b: _DigitalCrownDecelerationRate) -> Bool
  public var hashValue: Int {
    get
  }
  public func hash(into hasher: inout Hasher)
}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
public struct _DigitalCrownConfiguration {
  public var _isScrollIndicatorAlwaysOnScreen: Bool
  public var _onlyUseMinorDetents: Bool
  public var _decelerationRate: _DigitalCrownDecelerationRate
  public var _hapticsStrength: _CrownHapticsConfiguration.Notch.Strength
  public var isContinuous: Bool {
    get
    set
  }
  public var isHapticFeedbackEnabled: Bool
  public var rotationalSensitivity: DigitalCrownRotationalSensitivity
  public init(minValue: Double, maxValue: Double, stride: Double.Stride? = nil)
}
  
public protocol _Detachable {
  static func matches<K>(key: K.Type) -> Bool where K : PreferenceKey
  static var detachedProperties: _DetachableProperties { get }
}
  
public struct _DetachableProperties : OptionSet {
  public let rawValue: UInt32
  public init(rawValue: UInt32)
  public static let position: _DetachableProperties
  public static let dimensions: _DetachableProperties
  public static let environment: _DetachableProperties
  public static let transaction: _DetachableProperties
  public static let layout: _DetachableProperties
  public static let all: _DetachableProperties
  public typealias Element = _DetachableProperties
  public typealias ArrayLiteralElement = _DetachableProperties
  public typealias RawValue = UInt32
}
  
extension _Detachable {
  public static var detachedProperties: _DetachableProperties {
    get
  }
}
  
@frozen public struct _DetachedView<Detached, Content, Child> : View where Detached : _Detachable, Content : View, Child : View {
  public var content: Content
  public var transform: (_DetachedPlaceholder<Detached>) -> Child
  @inlinable public init(content: Content, transform: @escaping (_DetachedPlaceholder<Detached>) -> Child) {
        self.content = content
        self.transform = transform
    }
  public static func _makeView(view: _GraphValue<_DetachedView<Detached, Content, Child>>, inputs: _ViewInputs) -> _ViewOutputs
  public typealias Body = Never
}
  
extension View {
  @inlinable public func _detached<T, U>(with _: T.Type = T.self, _ transform: @escaping (_DetachedPlaceholder<T>) -> U) -> some View where T : _Detachable, U : View {
        return _DetachedView(content: self, transform: transform)
    }
  
  @inlinable public func _detached<T>(_ transform: @escaping (_DetachedPlaceholder<_EmptyDetached>) -> T) -> some View where T : View {
        return _DetachedView(content: self, transform: transform)
    }
  
}
  
public struct _DetachedKey<Key> : _Detachable where Key : PreferenceKey {
  public static func matches<K>(key: K.Type) -> Bool where K : PreferenceKey
}
  
public struct _EmptyDetached : _Detachable {
  public static func matches<K>(key: K.Type) -> Bool where K : PreferenceKey
  public static var detachedProperties: _DetachableProperties {
    get
  }
}
  
public struct _DetachedPlaceholder<Detached> : View where Detached : _Detachable {
  public static func _makeView(view: _GraphValue<_DetachedPlaceholder<Detached>>, inputs: _ViewInputs) -> _ViewOutputs
  public typealias Body = Never
}
  
public struct _DynamicPropertyBuffer {
}
  
public struct _GraphInputs {
}
  
public protocol _GraphInputsModifier {
  static func _makeInputs(modifier: _GraphValue<Self>, inputs: inout _GraphInputs)
}
  
extension View {
  @inlinable public func layoutPriority(_ value: Double) -> some View {
        return _trait(LayoutPriorityTraitKey.self, value)
    }
  
}
@usableFromInline
internal struct LayoutPriorityTraitKey : _ViewTraitKey {
  @inlinable internal static var defaultValue: Double {
    get { 0.0 }
  }
  @usableFromInline
  internal typealias Value = Double
}
  
@frozen public struct Group<Content> {
  @usableFromInline
  internal var content: Content
}
  
extension Group : View where Content : View {
  public typealias Body = Never
  @inlinable public init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
  public static func _makeViewList(view: _GraphValue<Group<Content>>, inputs: _ViewListInputs) -> _ViewListOutputs
}
@usableFromInline
internal struct DepthTraitKey : _ViewTraitKey {
  @inlinable internal static var defaultValue: Int {
    get { 0 }
  }
  @usableFromInline
  internal typealias Value = Int
}
@usableFromInline
internal struct IsSectionedTraitKey : _ViewTraitKey {
  @inlinable internal static var defaultValue: Bool {
    get { false }
  }
  @usableFromInline
  internal typealias Value = Bool
}
@usableFromInline
internal struct IsEmptyViewTraitKey : _ViewTraitKey {
  @inlinable internal static var defaultValue: Bool {
    get { false }
  }
  @usableFromInline
  internal typealias Value = Bool
}
@usableFromInline
internal struct IsSectionFooterTraitKey : _ViewTraitKey {
  @inlinable internal static var defaultValue: Bool {
    get { false }
  }
  @usableFromInline
  internal typealias Value = Bool
}
  
public protocol TextFieldStyle {
  associatedtype _Body : View
  func _body(configuration: TextField<Self._Label>) -> Self._Body
  typealias _Label = _TextFieldStyleLabel
}
  
public struct _TextFieldStyleLabel : View {
  public typealias Body = Never
}
  
extension View {
  public func textFieldStyle<S>(_ style: S) -> some View where S : TextFieldStyle
  
}
@usableFromInline
@frozen internal struct PropertyList : CustomStringConvertible {
  @usableFromInline
  internal var elements: PropertyList.Element?
  @inlinable internal init() { elements = nil }
  @usableFromInline
  internal var description: String {
    get
  }
}
extension PropertyList {
  @usableFromInline
  internal class Tracker {
    @objc @usableFromInline
    deinit
  }
}
extension PropertyList {
  @usableFromInline
  internal class Element : CustomStringConvertible {
    @usableFromInline
    internal var description: String {
      get
    }
    @objc @usableFromInline
    deinit
  }
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public protocol _PopUpButtonStyle {
  associatedtype Body : View
  func body(configuration: _ResolvedPopUpButton) -> Self.Body
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct _ResolvedPopUpButton : View {
  public typealias Body = Never
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension View {
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public func _popUpButtonStyle<S>(_ style: S) -> some View where S : _PopUpButtonStyle
  
}
  
extension View {
  @inlinable public func mask<Mask>(_ mask: Mask) -> some View where Mask : View {
        return modifier(_MaskEffect(mask: mask))
    }
  
}
  
@frozen public struct _MaskEffect<Mask> : ViewModifier where Mask : View {
  public var mask: Mask
  @inlinable public init(mask: Mask) {
        self.mask = mask
    }
  public static func _makeView(modifier: _GraphValue<_MaskEffect<Mask>>, inputs: _ViewInputs, body: @escaping (_Graph, _ViewInputs) -> _ViewOutputs) -> _ViewOutputs
  public typealias Body = Never
}
  
extension _MaskEffect : Equatable where Mask : Equatable {
  public static func == (a: _MaskEffect<Mask>, b: _MaskEffect<Mask>) -> Bool
}
  
@frozen @propertyWrapper public struct Environment<Value> : DynamicProperty {
  @usableFromInline
  @frozen internal enum Content {
    case keyPath(KeyPath<EnvironmentValues, Value>)
    case value(Value)
  }
  @usableFromInline
  internal var content: Environment<Value>.Content
  @inlinable public init(_ keyPath: KeyPath<EnvironmentValues, Value>) {
        content = .keyPath(keyPath)
    }
  @inlinable public var wrappedValue: Value {
    get {
        switch content {
        case let .value(value):
            return value
        case let .keyPath(keyPath):
            // not bound to a view, return the default value.
            return EnvironmentValues()[keyPath : keyPath]
        }
    }
  }
  @usableFromInline
  internal func error() -> Never
  public static func _makeProperty<V>(in buffer: inout _DynamicPropertyBuffer, container: _GraphValue<V>, fieldOffset: Int, inputs: inout _GraphInputs)
}
  
@frozen @propertyWrapper @dynamicMemberLookup public struct Binding<Value> {
  public var transaction: Transaction
  internal var location: AnyLocation<Value>
  fileprivate var _value: Value
  public init(get: @escaping () -> Value, set: @escaping (Value) -> Void)
  public init(get: @escaping () -> Value, set: @escaping (Value, Transaction) -> Void)
  public static func constant(_ value: Value) -> Binding<Value>
  public var wrappedValue: Value {
    get
    nonmutating set
  }
  public var projectedValue: Binding<Value> {
    get
  }
  public subscript<Subject>(dynamicMember keyPath: WritableKeyPath<Value, Subject>) -> Binding<Subject> {
    get
  }
}
  
extension Binding {
  public func transaction(_ transaction: Transaction) -> Binding<Value>
  public func animation(_ animation: Animation? = .default) -> Binding<Value>
}
  
extension Binding : DynamicProperty {
  public static func _makeProperty<V>(in buffer: inout _DynamicPropertyBuffer, container: _GraphValue<V>, fieldOffset: Int, inputs: inout _GraphInputs)
}
  
extension Anchor.Source where Value == CoreGraphics.CGRect {
  public static func rect(_ r: CoreGraphics.CGRect) -> Anchor<Value>.Source
  public static var bounds: Anchor<CoreGraphics.CGRect>.Source {
    get
  }
}
  
public protocol View {
  static func _makeView(view: _GraphValue<Self>, inputs: _ViewInputs) -> _ViewOutputs
  static func _makeViewList(view: _GraphValue<Self>, inputs: _ViewListInputs) -> _ViewListOutputs
  associatedtype Body : View
  var body: Self.Body { get }
}
  
extension Never : View {
}
  
@frozen public struct _UnaryViewAdaptor<Content> : View where Content : View {
  public var content: Content
  @inlinable public init(_ content: Content) { self.content = content }
  public static func _makeView(view: _GraphValue<_UnaryViewAdaptor<Content>>, inputs: _ViewInputs) -> _ViewOutputs
  public typealias Body = Never
}
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(OSX, unavailable)
extension Image {
  public init(uiImage: UIKit.UIImage)
}
extension RangeReplaceableCollection where Self : MutableCollection {
  mutating public func remove(atOffsets offsets: Foundation.IndexSet)
}
extension MutableCollection {
  mutating public func move(fromOffsets source: Foundation.IndexSet, toOffset destination: Int)
}
  
public struct __SimpleColumnLayout {
  public init()
  public typealias AnimatableData = EmptyAnimatableData
  public typealias Body = Never
}
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(OSX, unavailable)
extension Color {
  public init(_ color: UIKit.UIColor)
}
  
public enum AccessibilityAdjustmentDirection {
  case increment
  case decrement
  public static func == (a: AccessibilityAdjustmentDirection, b: AccessibilityAdjustmentDirection) -> Bool
  public var hashValue: Int {
    get
  }
  public func hash(into hasher: inout Hasher)
}
  
extension View {
  public func accessibilityAdjustableAction(_ handler: @escaping (AccessibilityAdjustmentDirection) -> Void) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
}
  
extension ModifiedContent where Modifier == AccessibilityAttachmentModifier {
  public func accessibilityAdjustableAction(_ handler: @escaping (AccessibilityAdjustmentDirection) -> Void) -> ModifiedContent<Content, Modifier>
}
@available(iOS 13.0, tvOS 13.0, *)
@available(OSX, unavailable)
@available(watchOS, unavailable)
public struct StackNavigationViewStyle : NavigationViewStyle {
  public init()
  public func _body(configuration: _NavigationViewStyleConfiguration) -> some View
  
  public typealias _Body = @_opaqueReturnTypeOf("$s7SwiftUI24StackNavigationViewStyleV5_body13configurationQrAA01_deF13ConfigurationV_tF", 0) 🦸
}
  
extension CGPoint : Animatable {
  public typealias AnimatableData = AnimatablePair<CoreGraphics.CGFloat, CoreGraphics.CGFloat>
  public var animatableData: CoreGraphics.CGPoint.AnimatableData {
    @inlinable get { return .init(x, y) }
    @inlinable set { (x, y) = newValue[] }
  }
}
  
extension CGSize : Animatable {
  public typealias AnimatableData = AnimatablePair<CoreGraphics.CGFloat, CoreGraphics.CGFloat>
  public var animatableData: CoreGraphics.CGSize.AnimatableData {
    @inlinable get { return .init(width, height) }
    @inlinable set { (width, height) = newValue[] }
  }
}
  
extension CGRect : Animatable {
  public typealias AnimatableData = AnimatablePair<CoreGraphics.CGPoint.AnimatableData, CoreGraphics.CGSize.AnimatableData>
  public var animatableData: CoreGraphics.CGRect.AnimatableData {
    @inlinable get {
            return .init(origin.animatableData, size.animatableData)
        }
    @inlinable set {
            (origin.animatableData, size.animatableData) = newValue[]
        }
  }
}
  
public struct Form<Content> : View where Content : View {
  public init(@ViewBuilder content: () -> Content)
  public var body: some View {
    get
  }
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI4FormV4bodyQrvp", 0) 🦸<Content>
}
  
public protocol VectorArithmetic : AdditiveArithmetic {
  mutating func scale(by rhs: Double)
  var magnitudeSquared: Double { get }
}
  
extension Float : VectorArithmetic {
  @_transparent mutating public func scale(by rhs: Double) { self *= Float(rhs) }
  @_transparent public var magnitudeSquared: Double {
    get { return Double(self * self) }
  }
}
  
extension Double : VectorArithmetic {
  @_transparent mutating public func scale(by rhs: Double) { self *= rhs }
  @_transparent public var magnitudeSquared: Double {
    get { return self * self }
  }
}
  
extension CGFloat : VectorArithmetic {
  @_transparent mutating public func scale(by rhs: Double) { self *= CGFloat(rhs) }
  @_transparent public var magnitudeSquared: Double {
    get { return Double(self * self) }
  }
}
@available(iOS 13.0, tvOS 13.0, *)
@available(OSX, unavailable)
@available(watchOS, unavailable)
public protocol UIViewRepresentable : View where Self.Body == Never {
  associatedtype UIViewType : UIKit.UIView
  func makeUIView(context: Self.Context) -> Self.UIViewType
  func updateUIView(_ uiView: Self.UIViewType, context: Self.Context)
  static func dismantleUIView(_ uiView: Self.UIViewType, coordinator: Self.Coordinator)
  associatedtype Coordinator = Void
  func makeCoordinator() -> Self.Coordinator
  func _identifiedViewTree(in uiView: Self.UIViewType) -> _IdentifiedViewTree
  func _overrideSizeThatFits(_ size: inout CoreGraphics.CGSize, in proposedSize: _ProposedSize, uiView: Self.UIViewType)
  func _overrideLayoutTraits(_ layoutTraits: inout _LayoutTraits, for uiView: Self.UIViewType)
  typealias Context = UIViewRepresentableContext<Self>
}
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(OSX, unavailable)
extension UIViewRepresentable where Self.Coordinator == Void {
  public func makeCoordinator() -> Self.Coordinator
}
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(OSX, unavailable)
extension UIViewRepresentable {
  public static func dismantleUIView(_ uiView: Self.UIViewType, coordinator: Self.Coordinator)
  public static func _makeView(view: _GraphValue<Self>, inputs: _ViewInputs) -> _ViewOutputs
  public static func _makeViewList(view: _GraphValue<Self>, inputs: _ViewListInputs) -> _ViewListOutputs
  public func _identifiedViewTree(in uiView: Self.UIViewType) -> _IdentifiedViewTree
  public func _overrideSizeThatFits(_ size: inout CoreGraphics.CGSize, in proposedSize: _ProposedSize, uiView: Self.UIViewType)
  public func _overrideLayoutTraits(_ layoutTraits: inout _LayoutTraits, for uiView: Self.UIViewType)
  public var body: Never {
    get
  }
}
@available(iOS 13.0, tvOS 13.0, *)
@available(OSX, unavailable)
@available(watchOS, unavailable)
public struct UIViewRepresentableContext<Representable> where Representable : UIViewRepresentable {
  public let coordinator: Representable.Coordinator
  public var transaction: Transaction {
    get
    }
  public var environment: EnvironmentValues {
    get
    }
}
  
public struct Button<Label> : View where Label : View {
  public init(action: @escaping () -> Void, @ViewBuilder label: () -> Label)
  public var body: some View {
    get
  }
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI6ButtonV4bodyQrvp", 0) 🦸<Label>
}
  
extension Button where Label == PrimitiveButtonStyleConfiguration.Label {
    
  public init(_ configuration: PrimitiveButtonStyleConfiguration)
}
  
extension Button where Label == Text {
  public init(_ titleKey: LocalizedStringKey, action: @escaping () -> Void)
  @_disfavoredOverload public init<S>(_ title: S, action: @escaping () -> Void) where S : StringProtocol
}
  
public struct Picker<Label, SelectionValue, Content> : View where Label : View, SelectionValue : Hashable, Content : View {
  public init(selection: Binding<SelectionValue>, label: Label, @ViewBuilder content: () -> Content)
  public var body: some View {
    get
  }
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI6PickerV4bodyQrvp", 0) 🦸<Label, SelectionValue, Content>
}
  
extension Picker where Label == Text {
  public init(_ titleKey: LocalizedStringKey, selection: Binding<SelectionValue>, @ViewBuilder content: () -> Content)
  @_disfavoredOverload public init<S>(_ title: S, selection: Binding<SelectionValue>, @ViewBuilder content: () -> Content) where S : StringProtocol
}
  
public struct EnvironmentValues : CustomStringConvertible {
  public init()
  public subscript<K>(key: K.Type) -> K.Value where K : EnvironmentKey {
    get
    set
  }
  public var description: String {
    get
  }
}
  
public protocol PreferenceKey {
  associatedtype Value
  static var defaultValue: Self.Value { get }
  static func reduce(value: inout Self.Value, nextValue: () -> Self.Value)
  static var _includesRemovedValues: Bool { get }
  static var _isReadableByHost: Bool { get }
}
  
extension PreferenceKey where Self.Value : ExpressibleByNilLiteral {
  public static var defaultValue: Self.Value {
    get
  }
}
  
extension PreferenceKey {
  public static var _includesRemovedValues: Bool {
    get
  }
  public static var _isReadableByHost: Bool {
    get
  }
}
  
@frozen public struct Transaction {
  @usableFromInline
  internal var plist: PropertyList
  @inlinable public init() {
        plist = PropertyList()
    }
}
  
public func withTransaction<Result>(_ transaction: Transaction, _ body: () throws -> Result) rethrows -> Result
  
public func withAnimation<Result>(_ animation: Animation? = .default, _ body: () throws -> Result) rethrows -> Result
  
extension Color {
  public func opacity(_ opacity: Double) -> Color
}
  
extension Anchor.Source where Value == CoreGraphics.CGPoint {
  public static func point(_ p: CoreGraphics.CGPoint) -> Anchor<Value>.Source
  public static func unitPoint(_ p: UnitPoint) -> Anchor<Value>.Source
  public static var topLeading: Anchor<CoreGraphics.CGPoint>.Source {
    get
  }
  public static var top: Anchor<CoreGraphics.CGPoint>.Source {
    get
  }
  public static var topTrailing: Anchor<CoreGraphics.CGPoint>.Source {
    get
  }
  public static var leading: Anchor<CoreGraphics.CGPoint>.Source {
    get
  }
  public static var center: Anchor<CoreGraphics.CGPoint>.Source {
    get
  }
  public static var trailing: Anchor<CoreGraphics.CGPoint>.Source {
    get
  }
  public static var bottomLeading: Anchor<CoreGraphics.CGPoint>.Source {
    get
  }
  public static var bottom: Anchor<CoreGraphics.CGPoint>.Source {
    get
  }
  public static var bottomTrailing: Anchor<CoreGraphics.CGPoint>.Source {
    get
  }
}
  
extension _ScrollableContentProvider {
  public func root(scrollView: _ScrollView<Self>.Main) -> _ScrollViewRoot<Self>
}
public struct _ScrollViewRoot<P> : View where P : _ScrollableContentProvider {
  public var body: some View {
    get
  }
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI15_ScrollViewRootV4bodyQrvp", 0) 🦸<P>
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct PullDownMenuButtonStyle : MenuButtonStyle {
  public init()
  public func _body(configuration: PullDownMenuButtonStyle._Configuration) -> some View
  
  public typealias _Body = @_opaqueReturnTypeOf("$s7SwiftUI23PullDownMenuButtonStyleV5_body13configurationQrAA01_efG13ConfigurationV_tF", 0) 🦸
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct BorderlessPullDownMenuButtonStyle : MenuButtonStyle {
  public init()
  public func _body(configuration: BorderlessPullDownMenuButtonStyle._Configuration) -> some View
  
  public typealias _Body = @_opaqueReturnTypeOf("$s7SwiftUI33BorderlessPullDownMenuButtonStyleV5_body13configurationQrAA01_fgH13ConfigurationV_tF", 0) 🦸
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct BorderlessButtonMenuButtonStyle : MenuButtonStyle {
  public init()
  public func _body(configuration: BorderlessButtonMenuButtonStyle._Configuration) -> some View
  
  public typealias _Body = @_opaqueReturnTypeOf("$s7SwiftUI020BorderlessButtonMenuD5StyleV5_body13configurationQrAA01_edF13ConfigurationV_tF", 0) 🦸
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct _TexturedPullDownMenuButtonStyle : MenuButtonStyle {
  public init()
  public func _body(configuration: _TexturedPullDownMenuButtonStyle._Configuration) -> some View
  
  public typealias _Body = @_opaqueReturnTypeOf("$s7SwiftUI32_TexturedPullDownMenuButtonStyleV5_body13configurationQrAA01_fgH13ConfigurationV_tF", 0) 🦸
}
  
public protocol EnvironmentKey {
  associatedtype Value
  static var defaultValue: Self.Value { get }
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension View {
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public func onDrop(of supportedTypes: [String], isTargeted: Binding<Bool>?, perform action: @escaping ([Foundation.NSItemProvider]) -> Bool) -> some View
  
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public func onDrop(of supportedTypes: [String], isTargeted: Binding<Bool>?, perform action: @escaping ([Foundation.NSItemProvider], CoreGraphics.CGPoint) -> Bool) -> some View
  
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public func onDrop(of supportedTypes: [String], delegate: DropDelegate) -> some View
  
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct DropInfo {
  public var location: CoreGraphics.CGPoint {
    get
  }
  public func hasItemsConforming(to types: [String]) -> Bool
  public func itemProviders(for types: [String]) -> [Foundation.NSItemProvider]
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public protocol DropDelegate {
  func validateDrop(info: DropInfo) -> Bool
  func performDrop(info: DropInfo) -> Bool
  func dropEntered(info: DropInfo)
  func dropUpdated(info: DropInfo) -> DropProposal?
  func dropExited(info: DropInfo)
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension DropDelegate {
  public func validateDrop(info: DropInfo) -> Bool
  public func dropEntered(info: DropInfo)
  public func dropUpdated(info: DropInfo) -> DropProposal?
  public func dropExited(info: DropInfo)
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public enum DropOperation {
  case cancel
  case forbidden
  case copy
  case move
  public static func == (a: DropOperation, b: DropOperation) -> Bool
  public var hashValue: Int {
    get
  }
  public func hash(into hasher: inout Hasher)
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct DropProposal {
  public let operation: DropOperation
  public init(operation: DropOperation)
}
  
@frozen public struct Anchor<Value> {
  fileprivate let box: AnchorValueBoxBase<Value>
  @frozen public struct Source {
    private var box: AnchorBoxBase<Value>
  }
}
@usableFromInline
internal class AnchorBoxBase<T> {
  @objc @usableFromInline
  deinit
}
@usableFromInline
internal class AnchorValueBoxBase<T> {
  @objc @usableFromInline
  deinit
}
  
extension Anchor.Source {
  public init<T>(_ array: [Anchor<T>.Source]) where Value == [T]
}
  
extension Anchor.Source {
  public init<T>(_ anchor: Anchor<T>.Source?) where Value == T?
}
  
public protocol _VectorMath : Animatable {
}
  
extension _VectorMath {
  @inlinable public var magnitude: Double {
    get {
        return animatableData.magnitudeSquared.squareRoot()
    }
  }
  @inlinable mutating public func negate() {
        animatableData = .zero - animatableData
    }
  @inlinable prefix public static func - (operand: Self) -> Self {
        var result = operand
        result.negate()
        return result
    }
  @inlinable public static func += (lhs: inout Self, rhs: Self) {
        lhs.animatableData += rhs.animatableData
    }
  @inlinable public static func + (lhs: Self, rhs: Self) -> Self {
        var result = lhs
        result += rhs
        return result
    }
  @inlinable public static func -= (lhs: inout Self, rhs: Self) {
        lhs.animatableData -= rhs.animatableData
    }
  @inlinable public static func - (lhs: Self, rhs: Self) -> Self {
        var result = lhs
        result -= rhs
        return result
    }
  @inlinable public static func *= (lhs: inout Self, rhs: Double) {
        lhs.animatableData.scale(by: rhs)
    }
  @inlinable public static func * (lhs: Self, rhs: Double) -> Self {
        var result = lhs
        result *= rhs
        return result
    }
  @inlinable public static func /= (lhs: inout Self, rhs: Double) {
        lhs *= 1 / rhs
    }
  @inlinable public static func / (lhs: Self, rhs: Double) -> Self {
        var result = lhs
        result /= rhs
        return result
    }
}
  
@frozen public struct _ProjectionEffect : GeometryEffect, Equatable {
  public var transform: ProjectionTransform
  @inlinable public init(transform: ProjectionTransform) {
        self.transform = transform
    }
  public func effectValue(size: CoreGraphics.CGSize) -> ProjectionTransform
  public typealias Body = Never
  public static func == (a: _ProjectionEffect, b: _ProjectionEffect) -> Bool
  public typealias AnimatableData = EmptyAnimatableData
}
  
extension View {
  @inlinable public func projectionEffect(_ transform: ProjectionTransform) -> some View {
        return modifier(_ProjectionEffect(transform: transform))
    }
  
}
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(OSX, unavailable)
public protocol _PerformanceTest {
  var name: String { get }
  func runTest(host: _BenchmarkHost, options: [AnyHashable : Any])
}
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(OSX, unavailable)
extension __App {
  public static func _registerPerformanceTests(_ tests: [_PerformanceTest])
}
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(OSX, unavailable)
extension _BenchmarkHost {
  public func _started(test: _PerformanceTest)
  public func _finished(test: _PerformanceTest)
  public func _failed(test: _PerformanceTest)
}
  
public struct __SpiralLayout {
  public typealias AnimatableData = Angle.AnimatableData
  public init(spacing: Angle)
  public var animatableData: __SpiralLayout.AnimatableData {
    get
    set
  }
  public typealias Body = Never
}
@usableFromInline
internal enum Log {
  @usableFromInline
  internal static var runtimeIssuesLog: os.OSLog
}
  
public struct _Graph {
}
  
public struct _GraphValue<Value> : Equatable {
  public subscript<U>(keyPath: KeyPath<Value, U>) -> _GraphValue<U> {
    get
  }
  public static func == (a: _GraphValue<Value>, b: _GraphValue<Value>) -> Bool
}
  
@frozen public struct _ConditionalContent<TrueContent, FalseContent> {
  @usableFromInline
  @frozen internal enum Storage {
    case trueContent(TrueContent)
    case falseContent(FalseContent)
  }
  @usableFromInline
  internal let storage: _ConditionalContent<TrueContent, FalseContent>.Storage
}
  
extension _ConditionalContent : View where TrueContent : View, FalseContent : View {
  public typealias Body = Never
  @usableFromInline
  internal init(storage: _ConditionalContent<TrueContent, FalseContent>.Storage)
  public static func _makeView(view: _GraphValue<_ConditionalContent<TrueContent, FalseContent>>, inputs: _ViewInputs) -> _ViewOutputs
  public static func _makeViewList(view: _GraphValue<_ConditionalContent<TrueContent, FalseContent>>, inputs: _ViewListInputs) -> _ViewListOutputs
}
@available(OSX 10.15, tvOS 13.0, *)
@available(iOS, unavailable)
@available(watchOS, unavailable)
public struct BorderedButtonStyle : PrimitiveButtonStyle {
  public init()
  public func makeBody(configuration: BorderedButtonStyle.Configuration) -> some View
  
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI19BorderedButtonStyleV8makeBody13configurationQrAA09PrimitivedE13ConfigurationV_tF", 0) 🦸
}
  
public enum CoordinateSpace {
  case global
  case local
  case named(AnyHashable)
}
  
extension CoordinateSpace {
  public var isGlobal: Bool {
    get
  }
  public var isLocal: Bool {
    get
  }
}
  
extension CoordinateSpace : Equatable, Hashable {
  public func hash(into hasher: inout Hasher)
  public static func == (lhs: CoordinateSpace, rhs: CoordinateSpace) -> Bool
  public var hashValue: Int {
    get
  }
}
  
public struct __RadialLayout {
  public var radius: CoreGraphics.CGFloat
  public var size: CoreGraphics.CGSize
  public init(radius: CoreGraphics.CGFloat, size: CoreGraphics.CGSize)
  public typealias AnimatableData = EmptyAnimatableData
  public typealias Body = Never
}
  
@frozen public struct Animation {
  internal var box: AnimationBoxBase
  public static func == (lhs: Animation, rhs: Animation) -> Bool
}
  
extension Animation : CustomStringConvertible, CustomDebugStringConvertible, CustomReflectable {
  public var description: String {
    get
  }
  public var debugDescription: String {
    get
  }
  public var customMirror: Mirror {
    get
  }
}
@usableFromInline
internal class AnimationBoxBase {
  @objc @usableFromInline
  deinit
}
@available(iOS 13.0, OSX 10.15, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct DatePicker<Label> : View where Label : View {
  public typealias Components = DatePickerComponents
  public var body: some View {
    get
  }
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI10DatePickerV4bodyQrvp", 0) 🦸<Label>
}
@available(iOS 13.0, OSX 10.15, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension DatePicker {
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public init(selection: Binding<Foundation.Date>, displayedComponents: DatePicker<Label>.Components = [.hourAndMinute, .date], @ViewBuilder label: () -> Label)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public init(selection: Binding<Foundation.Date>, in range: ClosedRange<Foundation.Date>, displayedComponents: DatePicker<Label>.Components = [.hourAndMinute, .date], @ViewBuilder label: () -> Label)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public init(selection: Binding<Foundation.Date>, in range: PartialRangeFrom<Foundation.Date>, displayedComponents: DatePicker<Label>.Components = [.hourAndMinute, .date], @ViewBuilder label: () -> Label)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public init(selection: Binding<Foundation.Date>, in range: PartialRangeThrough<Foundation.Date>, displayedComponents: DatePicker<Label>.Components = [.hourAndMinute, .date], @ViewBuilder label: () -> Label)
}
@available(iOS 13.0, OSX 10.15, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension DatePicker where Label == Text {
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public init(_ titleKey: LocalizedStringKey, selection: Binding<Foundation.Date>, displayedComponents: DatePicker<Label>.Components = [.hourAndMinute, .date])
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public init(_ titleKey: LocalizedStringKey, selection: Binding<Foundation.Date>, in range: ClosedRange<Foundation.Date>, displayedComponents: DatePicker<Label>.Components = [.hourAndMinute, .date])
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public init(_ titleKey: LocalizedStringKey, selection: Binding<Foundation.Date>, in range: PartialRangeFrom<Foundation.Date>, displayedComponents: DatePicker<Label>.Components = [.hourAndMinute, .date])
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public init(_ titleKey: LocalizedStringKey, selection: Binding<Foundation.Date>, in range: PartialRangeThrough<Foundation.Date>, displayedComponents: DatePicker<Label>.Components = [.hourAndMinute, .date])
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  @_disfavoredOverload public init<S>(_ title: S, selection: Binding<Foundation.Date>, displayedComponents: DatePicker<Label>.Components = [.hourAndMinute, .date]) where S : StringProtocol
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public init<S>(_ title: S, selection: Binding<Foundation.Date>, in range: ClosedRange<Foundation.Date>, displayedComponents: DatePicker<Label>.Components = [.hourAndMinute, .date]) where S : StringProtocol
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public init<S>(_ title: S, selection: Binding<Foundation.Date>, in range: PartialRangeFrom<Foundation.Date>, displayedComponents: DatePicker<Label>.Components = [.hourAndMinute, .date]) where S : StringProtocol
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public init<S>(_ title: S, selection: Binding<Foundation.Date>, in range: PartialRangeThrough<Foundation.Date>, displayedComponents: DatePicker<Label>.Components = [.hourAndMinute, .date]) where S : StringProtocol
}
@available(iOS 13.0, OSX 10.15, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct DatePickerComponents : OptionSet {
  public let rawValue: UInt
  public init(rawValue: UInt)
  public static let hourAndMinute: DatePickerComponents
  public static let date: DatePickerComponents
  public typealias Element = DatePickerComponents
  public typealias RawValue = UInt
  public typealias ArrayLiteralElement = DatePickerComponents
}
  
@frozen public struct _StrokedShape<S> : Shape where S : Shape {
  public var shape: S
  public var style: StrokeStyle
  @inlinable public init(shape: S, style: StrokeStyle) {
        self.shape = shape
        self.style = style
    }
  public func path(in rect: CoreGraphics.CGRect) -> Path
  public typealias AnimatableData = AnimatablePair<S.AnimatableData, StrokeStyle.AnimatableData>
  public var animatableData: _StrokedShape<S>.AnimatableData {
    get
    set
  }
  public typealias Body = _ShapeView<_StrokedShape<S>, ForegroundStyle>
}
  
extension Shape {
  @inlinable public func stroke(style: StrokeStyle) -> some Shape {
        return _StrokedShape(shape: self, style: style)
    }
  
  @inlinable public func stroke(lineWidth: CoreGraphics.CGFloat = 1) -> some Shape {
        return stroke(style: StrokeStyle(lineWidth: lineWidth))
    }
  
}
@available(iOS 13.0, watchOS 6.0, *)
@available(OSX, unavailable)
@available(tvOS, unavailable)
extension View {
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public func statusBar(hidden: Bool) -> some View
  
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  public func _statusBar(hidden: Bool) -> some View
  
}
  
@frozen @propertyWrapper public struct EnvironmentObject<ObjectType> : DynamicProperty where ObjectType : Combine.ObservableObject {
  @dynamicMemberLookup @frozen public struct Wrapper {
    internal let root: ObjectType
    public subscript<Subject>(dynamicMember keyPath: ReferenceWritableKeyPath<ObjectType, Subject>) -> Binding<Subject> {
      get
    }
  }
  @inlinable public var wrappedValue: ObjectType {
    get {
      guard let store = _store else { error() }
      return store
    }
  }
  @usableFromInline
  internal var _store: ObjectType?
  @usableFromInline
  internal var _seed: Int = 0
  public var projectedValue: EnvironmentObject<ObjectType>.Wrapper {
    get
  }
  @usableFromInline
  internal func error() -> Never
  public init()
  public static func _makeProperty<V>(in buffer: inout _DynamicPropertyBuffer, container: _GraphValue<V>, fieldOffset: Int, inputs: inout _GraphInputs)
}
  
extension View {
  @inlinable public func environmentObject<B>(_ bindable: B) -> some View where B : Combine.ObservableObject {
        return environment(B.environmentStore, bindable)
    }
  
}
extension ObservableObject {
  @usableFromInline
  internal static var environmentStore: WritableKeyPath<EnvironmentValues, Self?> {
    get
  }
}
  
public struct Alert {
  public init(title: Text, message: Text? = nil, dismissButton: Alert.Button? = nil)
  public init(title: Text, message: Text? = nil, primaryButton: Alert.Button, secondaryButton: Alert.Button)
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(OSX, unavailable)
  public static func sideBySideButtons(title: Text, message: Text? = nil, primaryButton: Alert.Button, secondaryButton: Alert.Button) -> Alert
  public struct Button {
    public static func `default`(_ label: Text, action: (() -> Void)? = {}) -> Alert.Button
    public static func cancel(_ label: Text, action: (() -> Void)? = {}) -> Alert.Button
    public static func cancel(_ action: (() -> Void)? = {}) -> Alert.Button
    public static func destructive(_ label: Text, action: (() -> Void)? = {}) -> Alert.Button
  }
}
  
extension View {
  public func alert<Item>(item: Binding<Item?>, content: (Item) -> Alert) -> some View where Item : Identifiable
  
  public func alert(isPresented: Binding<Bool>, content: () -> Alert) -> some View
  
}
  
extension Image {
  public enum ResizingMode {
    case tile
    case stretch
    public static func == (a: Image.ResizingMode, b: Image.ResizingMode) -> Bool
    public var hashValue: Int {
      get
    }
    public func hash(into hasher: inout Hasher)
  }
  public func resizable(capInsets: EdgeInsets = EdgeInsets(), resizingMode: Image.ResizingMode = .stretch) -> Image
}
  
extension ViewBuilder {
  @_alwaysEmitIntoClient public static func buildBlock<C0, C1>(_ c0: C0, _ c1: C1) -> TupleView<(C0, C1)> where C0 : View, C1 : View {
        return .init((c0, c1))
    }
}
  
extension ViewBuilder {
  @_alwaysEmitIntoClient public static func buildBlock<C0, C1, C2>(_ c0: C0, _ c1: C1, _ c2: C2) -> TupleView<(C0, C1, C2)> where C0 : View, C1 : View, C2 : View {
        return .init((c0, c1, c2))
    }
}
  
extension ViewBuilder {
  @_alwaysEmitIntoClient public static func buildBlock<C0, C1, C2, C3>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3) -> TupleView<(C0, C1, C2, C3)> where C0 : View, C1 : View, C2 : View, C3 : View {
        return .init((c0, c1, c2, c3))
    }
}
  
extension ViewBuilder {
  @_alwaysEmitIntoClient public static func buildBlock<C0, C1, C2, C3, C4>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4) -> TupleView<(C0, C1, C2, C3, C4)> where C0 : View, C1 : View, C2 : View, C3 : View, C4 : View {
        return .init((c0, c1, c2, c3, c4))
    }
}
  
extension ViewBuilder {
  @_alwaysEmitIntoClient public static func buildBlock<C0, C1, C2, C3, C4, C5>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5) -> TupleView<(C0, C1, C2, C3, C4, C5)> where C0 : View, C1 : View, C2 : View, C3 : View, C4 : View, C5 : View {
        return .init((c0, c1, c2, c3, c4, c5))
    }
}
  
extension ViewBuilder {
  @_alwaysEmitIntoClient public static func buildBlock<C0, C1, C2, C3, C4, C5, C6>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6) -> TupleView<(C0, C1, C2, C3, C4, C5, C6)> where C0 : View, C1 : View, C2 : View, C3 : View, C4 : View, C5 : View, C6 : View {
        return .init((c0, c1, c2, c3, c4, c5, c6))
    }
}
  
extension ViewBuilder {
  @_alwaysEmitIntoClient public static func buildBlock<C0, C1, C2, C3, C4, C5, C6, C7>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6, _ c7: C7) -> TupleView<(C0, C1, C2, C3, C4, C5, C6, C7)> where C0 : View, C1 : View, C2 : View, C3 : View, C4 : View, C5 : View, C6 : View, C7 : View {
        return .init((c0, c1, c2, c3, c4, c5, c6, c7))
    }
}
  
extension ViewBuilder {
  @_alwaysEmitIntoClient public static func buildBlock<C0, C1, C2, C3, C4, C5, C6, C7, C8>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6, _ c7: C7, _ c8: C8) -> TupleView<(C0, C1, C2, C3, C4, C5, C6, C7, C8)> where C0 : View, C1 : View, C2 : View, C3 : View, C4 : View, C5 : View, C6 : View, C7 : View, C8 : View {
        return .init((c0, c1, c2, c3, c4, c5, c6, c7, c8))
    }
}
  
extension ViewBuilder {
  @_alwaysEmitIntoClient public static func buildBlock<C0, C1, C2, C3, C4, C5, C6, C7, C8, C9>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6, _ c7: C7, _ c8: C8, _ c9: C9) -> TupleView<(C0, C1, C2, C3, C4, C5, C6, C7, C8, C9)> where C0 : View, C1 : View, C2 : View, C3 : View, C4 : View, C5 : View, C6 : View, C7 : View, C8 : View, C9 : View {
        return .init((c0, c1, c2, c3, c4, c5, c6, c7, c8, c9))
    }
}
@available(iOS 13.0, tvOS 13.0, *)
@available(OSX, unavailable)
@available(watchOS, unavailable)
public protocol UIViewControllerRepresentable : View where Self.Body == Never {
  associatedtype UIViewControllerType : UIKit.UIViewController
  func makeUIViewController(context: Self.Context) -> Self.UIViewControllerType
  func updateUIViewController(_ uiViewController: Self.UIViewControllerType, context: Self.Context)
  static func dismantleUIViewController(_ uiViewController: Self.UIViewControllerType, coordinator: Self.Coordinator)
  associatedtype Coordinator = Void
  func makeCoordinator() -> Self.Coordinator
  func _identifiedViewTree(in uiViewController: Self.UIViewControllerType) -> _IdentifiedViewTree
  typealias Context = UIViewControllerRepresentableContext<Self>
}
@available(iOS 13.0, tvOS 13.0, *)
@available(OSX, unavailable)
@available(watchOS, unavailable)
extension UIViewControllerRepresentable where Self.Coordinator == Void {
  public func makeCoordinator() -> Self.Coordinator
}
@available(iOS 13.0, tvOS 13.0, *)
@available(OSX, unavailable)
@available(watchOS, unavailable)
extension UIViewControllerRepresentable {
  public static func dismantleUIViewController(_ uiViewController: Self.UIViewControllerType, coordinator: Self.Coordinator)
  public static func _makeView(view: _GraphValue<Self>, inputs: _ViewInputs) -> _ViewOutputs
  public static func _makeViewList(view: _GraphValue<Self>, inputs: _ViewListInputs) -> _ViewListOutputs
  public func _identifiedViewTree(in uiViewController: Self.UIViewControllerType) -> _IdentifiedViewTree
  public var body: Never {
    get
  }
}
@available(iOS 13.0, tvOS 13.0, *)
@available(OSX, unavailable)
@available(watchOS, unavailable)
public struct UIViewControllerRepresentableContext<Representable> where Representable : UIViewControllerRepresentable {
  public let coordinator: Representable.Coordinator
  public var transaction: Transaction {
    get
    }
  public var environment: EnvironmentValues {
    get
    }
}
@available(iOS 13.0, tvOS 13.0, *)
@available(OSX, unavailable)
@available(watchOS, unavailable)
open class _UIHostingView<Content> : UIKit.UIView where Content : View {
  required public init(rootView: Content)
  @objc required dynamic public init?(coder aDecoder: Foundation.NSCoder)
  @objc deinit
  @objc override dynamic open func didMoveToWindow()
  @objc override dynamic open func didMoveToSuperview()
  @objc override dynamic open func layoutSubviews()
  @objc override dynamic open var frame: CoreGraphics.CGRect {
    @objc get
    @objc set
  }
  @objc override dynamic open var bounds: CoreGraphics.CGRect {
    @objc get
    @objc set
  }
  @objc override dynamic open func tintColorDidChange()
  @objc override dynamic open func traitCollectionDidChange(_ previousTraitCollection: UIKit.UITraitCollection?)
  @objc override dynamic open func safeAreaInsetsDidChange()
  @objc override dynamic open var safeAreaInsets: UIKit.UIEdgeInsets {
    @objc get
  }
  @objc override dynamic open var backgroundColor: UIKit.UIColor? {
    @objc get
    @objc set
  }
  @objc override dynamic open func sizeThatFits(_ size: CoreGraphics.CGSize) -> CoreGraphics.CGSize
  @objc override dynamic open var accessibilityElements: [Any]? {
    @objc get
    @objc set
  }
  @available(iOS 13.0, tvOS 13.0, *)
  @available(OSX, unavailable)
  @available(watchOS, unavailable)
  final public func _viewDebugData() -> [_ViewDebug.Data]
  @objc override dynamic open var canBecomeFirstResponder: Bool {
    @objc get
  }
  @objc override dynamic public init(frame: CoreGraphics.CGRect)
}
@available(iOS 13.0, tvOS 13.0, *)
@available(OSX, unavailable)
@available(watchOS, unavailable)
extension _UIHostingView {
  public func _renderForTest(interval: Double)
  public func _performScrollTest(startOffset: CoreGraphics.CGFloat = 0.0, iterations: Int = 0, delta: CoreGraphics.CGFloat = 0.0, length: CoreGraphics.CGFloat = 0.0, completion: (() -> Void)? = nil)
}
@available(iOS 13.0, tvOS 13.0, *)
@available(OSX, unavailable)
@available(watchOS, unavailable)
open class UIHostingController<Content> : UIKit.UIViewController where Content : View {
  public init(rootView: Content)
  public init?(coder aDecoder: Foundation.NSCoder, rootView: Content)
  @objc required dynamic public init?(coder aDecoder: Foundation.NSCoder)
  @objc override dynamic open func viewWillAppear(_ animated: Bool)
  public var rootView: Content {
    get
    set
  }
  public func sizeThatFits(in size: CoreGraphics.CGSize) -> CoreGraphics.CGSize
  public func _render(seconds: Double)
  public func _forEachIdentifiedView(body: (_IdentifiedViewProxy) -> Void)
  public var _disableSafeArea: Bool {
    get
    set
  }
  @objc override dynamic open var preferredStatusBarStyle: UIKit.UIStatusBarStyle {
    @objc get
  }
  @objc override dynamic open var prefersStatusBarHidden: Bool {
    @objc get
  }
  @objc override dynamic open var preferredStatusBarUpdateAnimation: UIKit.UIStatusBarAnimation {
    @objc get
  }
  @objc override dynamic public init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Foundation.Bundle?)
  @objc deinit
}
  
extension _ButtonGesture : Gesture {}
  
extension _TraitWritingModifier : ViewModifier {}
@available(iOS 13.0, OSX 10.15, watchOS 6.0, *)
@available(tvOS, unavailable)
extension LongPressGesture : Gesture {}
  
extension Color : View {}
  
extension Animation : Equatable {}
  
extension Image : View {}
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(OSX, unavailable)
extension Image.Scale : Equatable {}
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(OSX, unavailable)
extension Image.Scale : Hashable {}
@available(iOS 13.0, *)
@available(OSX, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension UserInterfaceSizeClass : Equatable {}
@available(iOS 13.0, *)
@available(OSX, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension UserInterfaceSizeClass : Hashable {}
  
extension Never : Gesture {}
  
extension EmptyView : View {}
  
extension SubscriptionView : View {}
  
extension SequenceGesture : Gesture {}
@available(iOS 13.0, tvOS 13.0, *)
@available(OSX, unavailable)
@available(watchOS, unavailable)
extension _UIHostingView : _BenchmarkHost {}
  
extension EmptyModifier : ViewModifier {}
  
extension __GridLayout : _VariadicView_UnaryViewRoot {}
  
extension __GridLayout : Animatable {}
  
extension __GridLayout.FillDirection : Equatable {}
  
extension __GridLayout.FillDirection : Hashable {}
  
extension _OverlayLayout : _VariadicView_UnaryViewRoot {}
  
extension _OverlayLayout : Animatable {}
  
extension _OverlayLayout : _VariadicView_ViewRoot {}
  
extension SimultaneousGesture : Gesture {}
  
extension Color.RGBColorSpace : Equatable {}
  
extension Color.RGBColorSpace : Hashable {}
  
extension __BedtimeTickLabelsLayout : _VariadicView_UnaryViewRoot {}
  
extension __BedtimeTickLabelsLayout : Animatable {}
  
extension __ViewRemovalLayout : _VariadicView_UnaryViewRoot {}
  
extension __ViewRemovalLayout : Animatable {}
@available(OSX 10.15, tvOS 13.0, *)
@available(iOS, unavailable)
@available(watchOS, unavailable)
extension MoveCommandDirection : Equatable {}
@available(OSX 10.15, tvOS 13.0, *)
@available(iOS, unavailable)
@available(watchOS, unavailable)
extension MoveCommandDirection : Hashable {}
  
extension _AspectRatioLayout : Animatable {}
  
extension _AspectRatioLayout : ViewModifier {}
extension _FixedSizeLayout : Animatable {}
extension _FixedSizeLayout : ViewModifier {}
  
extension ForegroundStyle : ShapeStyle {}
  
extension __FourUpLayout : _VariadicView_UnaryViewRoot {}
  
extension __FourUpLayout : Animatable {}
  
extension _PaddingLayout : Animatable {}
  
extension _PaddingLayout : ViewModifier {}
  
extension _VAlignment : Equatable {}
  
extension _VAlignment : Hashable {}
  
extension _AlignmentLayout : Animatable {}
  
extension _AlignmentLayout : ViewModifier {}
  
extension _PositionLayout : Animatable {}
  
extension _PositionLayout : ViewModifier {}
  
extension _SafeAreaIgnoringLayout : Animatable {}
  
extension _SafeAreaIgnoringLayout : ViewModifier {}
  
extension __IconLayout : _VariadicView_UnaryViewRoot {}
  
extension __IconLayout : Animatable {}
@available(iOS 13.0, OSX 10.15, watchOS 6.0, *)
@available(tvOS, unavailable)
extension DragGesture : Gesture {}
  
extension _BlurEffect : Animatable {}
  
extension _BlurEffect : ViewModifier {}
  
extension _BrightnessEffect : Animatable {}
  
extension _BrightnessEffect : ViewModifier {}
  
extension _ColorInvertEffect : Animatable {}
  
extension _ColorInvertEffect : ViewModifier {}
  
extension HorizontalAlignment : Equatable {}
  
extension VerticalAlignment : Equatable {}
  
extension Image.Orientation : RawRepresentable {}
  
extension _ColorMultiplyEffect._Resolved : Animatable {}
  
extension _ColorMultiplyEffect._Resolved : ViewModifier {}
  
extension _ContrastEffect : Animatable {}
  
extension _ContrastEffect : ViewModifier {}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
extension DigitalCrownRotationalSensitivity : Equatable {}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
extension DigitalCrownRotationalSensitivity : Hashable {}
  
extension _GrayscaleEffect : Animatable {}
  
extension _GrayscaleEffect : ViewModifier {}
  
extension _HueRotationEffect : Animatable {}
  
extension _HueRotationEffect : ViewModifier {}
  
extension _LuminanceToAlphaEffect : Animatable {}
  
extension _LuminanceToAlphaEffect : ViewModifier {}
  
extension _SaturationEffect : Animatable {}
  
extension _SaturationEffect : ViewModifier {}
  
extension _OpacityEffect : Animatable {}
  
extension _OpacityEffect : ViewModifier {}
  
extension __ResizableImagesExampleLayout : _VariadicView_UnaryViewRoot {}
  
extension __ResizableImagesExampleLayout : Animatable {}
  
extension _BlendModeEffect : Animatable {}
  
extension _BlendModeEffect : ViewModifier {}
  
extension ColorRenderingMode : Equatable {}
  
extension ColorRenderingMode : Hashable {}
  
extension AnyGesture : Gesture {}
  
extension _CompositingGroupEffect : Animatable {}
  
extension _CompositingGroupEffect : ViewModifier {}
  
extension PreviewPlatform : Equatable {}
  
extension PreviewPlatform : Hashable {}
  
extension _ClipEffect : Animatable {}
  
extension _ClipEffect : ViewModifier {}
  
extension _ShadowEffect._Resolved : Animatable {}
  
extension _ShadowEffect._Resolved : ViewModifier {}
  
extension _AligningContentProvider.AligningContentProviderLayout : Animatable {}
  
extension _AligningContentProvider.AligningContentProviderLayout : ViewModifier {}
  
extension _PagingViewConfig.Direction : Equatable {}
  
extension _PagingViewConfig.Direction : Hashable {}
  
extension Image.TemplateRenderingMode : Hashable {}
  
extension ColorScheme : Equatable {}
  
extension ColorScheme : Hashable {}
  
extension ColorSchemeContrast : Equatable {}
  
extension ColorSchemeContrast : Hashable {}
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension ControlActiveState : Hashable {}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
extension _DeviceVariant : Hashable {}
  
extension _FrameLayout : Animatable {}
  
extension _FrameLayout : ViewModifier {}
  
extension _FlexFrameLayout : Animatable {}
  
extension _FlexFrameLayout : ViewModifier {}
  
extension AccessibilityAttachmentModifier : ViewModifier {}
  
extension Edge : Hashable {}
  
extension Edge : RawRepresentable {}
  
extension RoundedCornerStyle : Hashable {}
  
extension BlendMode : Hashable {}
  
extension Image.Interpolation : Hashable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, *)
@available(watchOS, unavailable)
extension _NavigationViewStyleConfiguration.Content : View {}
  
extension TupleView : View {}
  
extension _ViewModifier_Content : View {}
  
extension __FluidSpringTestLayout : _VariadicView_UnaryViewRoot {}
  
extension __FluidSpringTestLayout : Animatable {}
  
extension __SetFrameLayout : Animatable {}
  
extension __SetFrameLayout : ViewModifier {}
  
extension _VStackLayout : _VariadicView_UnaryViewRoot {}
  
extension _VStackLayout : Animatable {}
extension _VStackLayout : _VariadicView_ViewRoot {}
  
extension _EndedGesture : Gesture {}
  
extension _ChangedGesture : Gesture {}
  
extension Spacer : View {}
  
extension _HSpacer : View {}
  
extension _VSpacer : View {}
  
extension _MapGesture : Gesture {}
  
extension ExclusiveGesture : Gesture {}
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(OSX, unavailable)
extension NavigationBarItem.TitleDisplayMode : Equatable {}
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(OSX, unavailable)
extension NavigationBarItem.TitleDisplayMode : Hashable {}
  
extension Text.TruncationMode : Equatable {}
  
extension Text.TruncationMode : Hashable {}
@available(iOS 13.0, OSX 10.15, watchOS 6.0, *)
@available(tvOS, unavailable)
extension TapGesture : Gesture {}
  
extension Axis : Hashable {}
  
extension Axis : RawRepresentable {}
  
extension _ViewDebug.Property : RawRepresentable {}
@available(iOS 13.0, tvOS 13.0, *)
@available(OSX, unavailable)
@available(watchOS, unavailable)
extension EditMode : Hashable {}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension ControlSize : Equatable {}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension ControlSize : Hashable {}
  
extension _IdentifiedViewsKey : PreferenceKey {}
  
extension _ContainedScrollViewKey : PreferenceKey {}
  
extension Font._StylisticAlternative : RawRepresentable {}
  
extension _ScrollViewAnimationMode : Equatable {}
  
extension _ScrollViewAnimationMode : Hashable {}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
extension _CrownHapticsConfiguration.Notch.Strength : Equatable {}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
extension _CrownHapticsConfiguration.Notch.Strength : Hashable {}
  
extension Font.TextStyle : Equatable {}
  
extension Font.TextStyle : Hashable {}
  
extension _CircleLayout : _VariadicView_UnaryViewRoot {}
  
extension _CircleLayout : Animatable {}
  
extension _HStackLayout : _VariadicView_UnaryViewRoot {}
  
extension _HStackLayout : Animatable {}
  
extension _ZStackLayout : _VariadicView_UnaryViewRoot {}
  
extension _ZStackLayout : Animatable {}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
extension _DigitalCrownDecelerationRate : Equatable {}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
extension _DigitalCrownDecelerationRate : Hashable {}
  
extension __SimpleColumnLayout : _VariadicView_UnaryViewRoot {}
  
extension __SimpleColumnLayout : Animatable {}
  
extension AccessibilityAdjustmentDirection : Equatable {}
  
extension AccessibilityAdjustmentDirection : Hashable {}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension DropOperation : Equatable {}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension DropOperation : Hashable {}
  
extension __SpiralLayout : _VariadicView_UnaryViewRoot {}
  
extension __SpiralLayout : Animatable {}
  
extension __RadialLayout : _VariadicView_UnaryViewRoot {}
  
extension __RadialLayout : Animatable {}
  
extension Image.ResizingMode : Hashable {}
