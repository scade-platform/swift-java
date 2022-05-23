

public protocol Map: JObjectConvertible {
  associatedtype K: JObjectConvertible
  associatedtype V: JObjectConvertible

  typealias Entry = Java.MapEntry
  typealias EntryProxy = Java.MapEntryProxy

  func size() -> Int32

  func isEmpty() -> Bool

  func containsKey(key: Object?) -> Bool

  func containsValue(value: Object?) -> Bool

  func get(key: Object?) -> V?

  func put(key: K?, value: V?) -> V?

  func remove(key: Object?) -> V?

  func putAll<T0, T1, T2>(m: T2?) -> Void where T0: Object, T1: Object, T2: Map, T2.K == T0, T2.V == T1

  func clear() -> Void

  func keySet<R>() -> R? where R: Java.Set, R.E == K

  func values<R>() -> R? where R: Java.Collection, R.E == V

  func getOrDefault(key: Object?, defaultValue: V?) -> V?

  func putIfAbsent(key: K?, value: V?) -> V?

  func remove(key: Object?, value: Object?) -> Bool

  func replace(key: K?, oldValue: V?, newValue: V?) -> Bool

  func replace(key: K?, value: V?) -> V?
}

public extension Map {
  func box() -> MapProxy<K, V> {
    MapProxy<K, V>(self)
  }
}

public extension Map where Self: Object {
  func getOrDefault(key: Object?, defaultValue: V?) -> V? {
    self.javaObject.call(method: Map__method__11, [key.toJavaParameter(), defaultValue.toJavaParameter()])
  }

  func putIfAbsent(key: K?, value: V?) -> V? {
    self.javaObject.call(method: Map__method__12, [key.toJavaParameter(), value.toJavaParameter()])
  }

  func remove(key: Object?, value: Object?) -> Bool {
    self.javaObject.call(method: Map__method__13, [key.toJavaParameter(), value.toJavaParameter()])
  }

  func replace(key: K?, oldValue: V?, newValue: V?) -> Bool {
    self.javaObject.call(method: Map__method__14, [key.toJavaParameter(), oldValue.toJavaParameter(), newValue.toJavaParameter()])
  }

  func replace(key: K?, value: V?) -> V? {
    self.javaObject.call(method: Map__method__15, [key.toJavaParameter(), value.toJavaParameter()])
  }

  func keySet() -> Java.SetProxy<K>? {
    self.javaObject.call(method: Map__method__9, [])
  }

  func values() -> Java.CollectionProxy<V>? {
    self.javaObject.call(method: Map__method__10, [])
  }
}

public protocol MapProxyProtocol: Map where Self: Object {}

public extension MapProxyProtocol {
  func size() -> Int32 {
    self.javaObject.call(method: Map__method__0, [])
  }

  func isEmpty() -> Bool {
    self.javaObject.call(method: Map__method__1, [])
  }

  func containsKey(key: Object?) -> Bool {
    self.javaObject.call(method: Map__method__2, [key.toJavaParameter()])
  }

  func containsValue(value: Object?) -> Bool {
    self.javaObject.call(method: Map__method__3, [value.toJavaParameter()])
  }

  func get(key: Object?) -> V? {
    self.javaObject.call(method: Map__method__4, [key.toJavaParameter()])
  }

  func put(key: K?, value: V?) -> V? {
    self.javaObject.call(method: Map__method__5, [key.toJavaParameter(), value.toJavaParameter()])
  }

  func remove(key: Object?) -> V? {
    self.javaObject.call(method: Map__method__6, [key.toJavaParameter()])
  }

  func putAll<T0, T1, T2>(m: T2?) -> Void where T0: Object, T1: Object, T2: Map, T2.K == T0, T2.V == T1 {
    self.javaObject.call(method: Map__method__7, [m.toJavaParameter()])
  }

  func clear() {
    self.javaObject.call(method: Map__method__8, [])
  }

  func keySet<R>() -> R? where R: Java.Set, R.E == K {
    self.javaObject.call(method: Map__method__9, [])
  }

  func values<R>() -> R? where R: Java.Collection, R.E == V {
    self.javaObject.call(method: Map__method__10, [])
  }
}

public final class MapProxy<K: JObjectConvertible, V: JObjectConvertible>: Object, JInterfaceProxy, MapProxyProtocol {
  public typealias Proto = Map

  override public class var javaClass: JClass {
    Map__class
  }

  fileprivate convenience init<P: Map>(_ obj: P) where P.K == K, P.V == V {
    self.init(obj.toJavaObject()!)
  }
}

// ------------------------------------------------------------------------------------

public protocol MapEntry: JObjectConvertible {
  associatedtype K: JObjectConvertible
  associatedtype V: JObjectConvertible

  func getKey() -> K?

  func getValue() -> V?

  func setValue(value: V?) -> V?
}

public extension MapEntry {
  func box() -> MapEntryProxy<K, V> {
    MapEntryProxy<K, V>(self)
  }
}

public protocol MapEntryProxyProtocol: MapEntry where Self: Object {}

public extension MapEntryProxyProtocol {
  func getKey() -> K? {
    self.javaObject.call(method: MapEntry__method__0, [])
  }

  func getValue() -> V? {
    self.javaObject.call(method: MapEntry__method__1, [])
  }

  func setValue(value: V?) -> V? {
    self.javaObject.call(method: MapEntry__method__2, [value.toJavaParameter()])
  }
}

public final class MapEntryProxy<K: JObjectConvertible, V: JObjectConvertible>: Object, JInterfaceProxy, MapEntryProxyProtocol {
  public typealias Proto = MapEntry

  override public class var javaClass: JClass {
    MapEntry__class
  }

  fileprivate convenience init<P: MapEntry>(_ obj: P) where P.K == K, P.V == V {
    self.init(obj.toJavaObject()!)
  }
}

// ------------------------------------------------------------------------------------

private let Map__class = findJavaClass(fqn: "java/util/Map")!

private let Map__method__0 = Map__class.getMethodID(name: "size", sig: "()I")!
private let Map__method__1 = Map__class.getMethodID(name: "isEmpty", sig: "()Z")!
private let Map__method__2 = Map__class.getMethodID(name: "containsKey", sig: "(Ljava/lang/Object;)Z")!
private let Map__method__3 = Map__class.getMethodID(name: "containsValue", sig: "(Ljava/lang/Object;)Z")!
private let Map__method__4 = Map__class.getMethodID(name: "get", sig: "(Ljava/lang/Object;)Ljava/lang/Object;")!
private let Map__method__5 = Map__class.getMethodID(name: "put", sig: "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;")!
private let Map__method__6 = Map__class.getMethodID(name: "remove", sig: "(Ljava/lang/Object;)Ljava/lang/Object;")!
private let Map__method__7 = Map__class.getMethodID(name: "putAll", sig: "(Ljava/util/Map;)V")!
private let Map__method__8 = Map__class.getMethodID(name: "clear", sig: "()V")!
private let Map__method__9 = Map__class.getMethodID(name: "keySet", sig: "()Ljava/util/Set;")!
private let Map__method__10 = Map__class.getMethodID(name: "values", sig: "()Ljava/util/Collection;")!
private let Map__method__11 = Map__class.getMethodID(name: "getOrDefault", sig: "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;")!
private let Map__method__12 = Map__class.getMethodID(name: "putIfAbsent", sig: "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;")!
private let Map__method__13 = Map__class.getMethodID(name: "remove", sig: "(Ljava/lang/Object;Ljava/lang/Object;)Z")!
private let Map__method__14 = Map__class.getMethodID(name: "replace", sig: "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z")!
private let Map__method__15 = Map__class.getMethodID(name: "replace", sig: "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;")!

// ------------------------------------------------------------------------------------

private let MapEntry__class = findJavaClass(fqn: "java/util/Map$Entry")!

private let MapEntry__method__0 = MapEntry__class.getMethodID(name: "getKey", sig: "()Ljava/lang/Object;")!
private let MapEntry__method__1 = MapEntry__class.getMethodID(name: "getValue", sig: "()Ljava/lang/Object;")!
private let MapEntry__method__2 = MapEntry__class.getMethodID(name: "setValue", sig: "(Ljava/lang/Object;)Ljava/lang/Object;")!
