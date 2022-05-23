

public protocol AbstractMap: Map where Self: Object {
  typealias SimpleImmutableEntry = Java.AbstractMapSimpleImmutableEntry

  typealias SimpleEntry = Java.AbstractMapSimpleEntry

  func size() -> Int32

  func isEmpty() -> Bool

  func containsValue(value: Object?) -> Bool

  func containsKey(key: Object?) -> Bool

  func get(key: Object?) -> V?

  func put(key: K?, value: V?) -> V?

  func remove(key: Object?) -> V?

  func putAll<T0, T1, T2>(m: T2?) -> Void where T0: Object, T1: Object, T2: Map, T2.K == T0, T2.V == T1

  func clear() -> Void

  func keySet<R>() -> R? where R: Java.Set, R.E == K

  func values<R>() -> R? where R: Java.Collection, R.E == V
}

public extension AbstractMap {
  func box() -> AbstractMapProxy<K, V> {
    AbstractMapProxy<K, V>(self)
  }
}

public extension AbstractMap where Self: Object {
  func size() -> Int32 {
    self.javaObject.call(method: AbstractMap__method__1, [])
  }

  func isEmpty() -> Bool {
    self.javaObject.call(method: AbstractMap__method__2, [])
  }

  func containsValue(value: Object?) -> Bool {
    self.javaObject.call(method: AbstractMap__method__3, [value.toJavaParameter()])
  }

  func containsKey(key: Object?) -> Bool {
    self.javaObject.call(method: AbstractMap__method__4, [key.toJavaParameter()])
  }

  func get(key: Object?) -> V? {
    self.javaObject.call(method: AbstractMap__method__5, [key.toJavaParameter()])
  }

  func put(key: K?, value: V?) -> V? {
    self.javaObject.call(method: AbstractMap__method__6, [key.toJavaParameter(), value.toJavaParameter()])
  }

  func remove(key: Object?) -> V? {
    self.javaObject.call(method: AbstractMap__method__7, [key.toJavaParameter()])
  }

  func putAll<T0, T1, T2>(m: T2?) -> Void where T0: Object, T1: Object, T2: Map, T2.K == T0, T2.V == T1 {
    self.javaObject.call(method: AbstractMap__method__8, [m.toJavaParameter()])
  }

  func clear() {
    self.javaObject.call(method: AbstractMap__method__9, [])
  }

  func keySet<R>() -> R? where R: Java.Set, R.E == K {
    self.javaObject.call(method: AbstractMap__method__10, [])
  }

  func values<R>() -> R? where R: Java.Collection, R.E == V {
    self.javaObject.call(method: AbstractMap__method__11, [])
  }

  func keySet() -> Java.SetProxy<K>? {
    self.javaObject.call(method: AbstractMap__method__10, [])
  }

  func values() -> Java.CollectionProxy<V>? {
    self.javaObject.call(method: AbstractMap__method__11, [])
  }
}

open class AbstractMapProxy<K: JObjectConvertible, V: JObjectConvertible>: Object, JInterfaceProxy, AbstractMap {
  public typealias Proto = AbstractMap

  override open class var javaClass: JClass {
    AbstractMap__class
  }

  fileprivate convenience init<P: AbstractMap>(_ obj: P) where P.K == K, P.V == V {
    self.init(obj.toJavaObject()!)
  }
}

// ------------------------------------------------------------------------------------

open class AbstractMapSimpleImmutableEntry<K: JObjectConvertible, V: JObjectConvertible>: Object {
  public init(key: K?, value: V?) {
    super.init(ctor: AbstractMapSimpleImmutableEntry__method__0, [key.toJavaParameter(), value.toJavaParameter()])
  }

  open func getKey() -> K? {
    self.javaObject.call(method: AbstractMapSimpleImmutableEntry__method__1, [])
  }

  open func getValue() -> V? {
    self.javaObject.call(method: AbstractMapSimpleImmutableEntry__method__2, [])
  }

  open func setValue(value: V?) -> V? {
    self.javaObject.call(method: AbstractMapSimpleImmutableEntry__method__3, [value.toJavaParameter()])
  }

  public required init(_ obj: JavaObject) {
    super.init(obj)
  }

  public required init(ctor: JavaMethodID, _ args: [JavaParameter]) {
    super.init(ctor: ctor, args)
  }
}

// ------------------------------------------------------------------------------------

open class AbstractMapSimpleEntry<K: JObjectConvertible, V: JObjectConvertible>: Object {
  public init(key: K?, value: V?) {
    super.init(ctor: AbstractMapSimpleEntry__method__0, [key.toJavaParameter(), value.toJavaParameter()])
  }

  open func getKey() -> K? {
    self.javaObject.call(method: AbstractMapSimpleEntry__method__1, [])
  }

  open func getValue() -> V? {
    self.javaObject.call(method: AbstractMapSimpleEntry__method__2, [])
  }

  open func setValue(value: V?) -> V? {
    self.javaObject.call(method: AbstractMapSimpleEntry__method__3, [value.toJavaParameter()])
  }

  public required init(_ obj: JavaObject) {
    super.init(obj)
  }

  public required init(ctor: JavaMethodID, _ args: [JavaParameter]) {
    super.init(ctor: ctor, args)
  }
}

// ------------------------------------------------------------------------------------

private let AbstractMap__class = findJavaClass(fqn: "java/util/AbstractMap")!

private let AbstractMap__method__1 = AbstractMap__class.getMethodID(name: "size", sig: "()I")!
private let AbstractMap__method__2 = AbstractMap__class.getMethodID(name: "isEmpty", sig: "()Z")!
private let AbstractMap__method__3 = AbstractMap__class.getMethodID(name: "containsValue", sig: "(Ljava/lang/Object;)Z")!
private let AbstractMap__method__4 = AbstractMap__class.getMethodID(name: "containsKey", sig: "(Ljava/lang/Object;)Z")!
private let AbstractMap__method__5 = AbstractMap__class.getMethodID(name: "get", sig: "(Ljava/lang/Object;)Ljava/lang/Object;")!
private let AbstractMap__method__6 = AbstractMap__class.getMethodID(name: "put", sig: "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;")!
private let AbstractMap__method__7 = AbstractMap__class.getMethodID(name: "remove", sig: "(Ljava/lang/Object;)Ljava/lang/Object;")!
private let AbstractMap__method__8 = AbstractMap__class.getMethodID(name: "putAll", sig: "(Ljava/util/Map;)V")!
private let AbstractMap__method__9 = AbstractMap__class.getMethodID(name: "clear", sig: "()V")!
private let AbstractMap__method__10 = AbstractMap__class.getMethodID(name: "keySet", sig: "()Ljava/util/Set;")!
private let AbstractMap__method__11 = AbstractMap__class.getMethodID(name: "values", sig: "()Ljava/util/Collection;")!

// ------------------------------------------------------------------------------------

private let AbstractMapSimpleImmutableEntry__class = findJavaClass(fqn: "java/util/AbstractMap$SimpleImmutableEntry")!

private let AbstractMapSimpleImmutableEntry__method__0 = AbstractMapSimpleImmutableEntry__class.getMethodID(name: "<init>", sig: "(Ljava/lang/Object;Ljava/lang/Object;)V")!
private let AbstractMapSimpleImmutableEntry__method__1 = AbstractMapSimpleImmutableEntry__class.getMethodID(name: "getKey", sig: "()Ljava/lang/Object;")!
private let AbstractMapSimpleImmutableEntry__method__2 = AbstractMapSimpleImmutableEntry__class.getMethodID(name: "getValue", sig: "()Ljava/lang/Object;")!
private let AbstractMapSimpleImmutableEntry__method__3 = AbstractMapSimpleImmutableEntry__class.getMethodID(name: "setValue", sig: "(Ljava/lang/Object;)Ljava/lang/Object;")!

// ------------------------------------------------------------------------------------

private let AbstractMapSimpleEntry__class = findJavaClass(fqn: "java/util/AbstractMap$SimpleEntry")!

private let AbstractMapSimpleEntry__method__0 = AbstractMapSimpleEntry__class.getMethodID(name: "<init>", sig: "(Ljava/lang/Object;Ljava/lang/Object;)V")!
private let AbstractMapSimpleEntry__method__1 = AbstractMapSimpleEntry__class.getMethodID(name: "getKey", sig: "()Ljava/lang/Object;")!
private let AbstractMapSimpleEntry__method__2 = AbstractMapSimpleEntry__class.getMethodID(name: "getValue", sig: "()Ljava/lang/Object;")!
private let AbstractMapSimpleEntry__method__3 = AbstractMapSimpleEntry__class.getMethodID(name: "setValue", sig: "(Ljava/lang/Object;)Ljava/lang/Object;")!
