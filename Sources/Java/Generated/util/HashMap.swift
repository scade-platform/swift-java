

open class HashMap<K: JObjectConvertible, V: JObjectConvertible>: Object, AbstractMap, Map {
  public init(initialCapacity: Int32, loadFactor: Float) {
    super.init(ctor: HashMap__method__0, [initialCapacity.toJavaParameter(), loadFactor.toJavaParameter()])
  }

  public init(initialCapacity: Int32) {
    super.init(ctor: HashMap__method__1, [initialCapacity.toJavaParameter()])
  }

  public init<T1, T0, I0>(m: I0?) where T1: Object, T0: Object, I0: Map, I0.K == T0, I0.V == T1 {
    super.init(ctor: HashMap__method__2, [m.toJavaParameter()])
  }

  public func putAll<T0, I0, T1>(m: I0?) -> Void where T0: Object, I0: Map, T1: Object, I0.K == T0, I0.V == T1 {
    return self.javaObject.call(method: HashMap__method__3, [m.toJavaParameter()])
  }

  public func keySet<R>() -> R? where R: Java.Set, R.E == K {
    return self.javaObject.call(method: HashMap__method__4, [])
  }

  public func values<R>() -> R? where R: Java.Collection, R.E == V {
    return self.javaObject.call(method: HashMap__method__5, [])
  }

  public func replace(key: K?, oldValue: V?, newValue: V?) -> Bool {
    return self.javaObject.call(method: HashMap__method__6, [key.toJavaParameter(), oldValue.toJavaParameter(), newValue.toJavaParameter()])
  }

  public required init(_ obj: JavaObject) {
    super.init(obj)
  }

  public required init(ctor: JavaMethodID, _ args: [JavaParameter]) {
    super.init(ctor: ctor, args)
  }
}

extension HashMap {
  public func keySet() -> Java.SetProxy<K>? {
    return self.javaObject.call(method: HashMap__method__4, [])
  }

  public func values() -> Java.CollectionProxy<V>? {
    return self.javaObject.call(method: HashMap__method__5, [])
  }
}

// ------------------------------------------------------------------------------------

fileprivate let HashMap__class = findJavaClass(fqn: "java/util/HashMap")!

fileprivate let HashMap__method__0 = HashMap__class.getMethodID(name: "<init>", sig: "(IF)V")!
fileprivate let HashMap__method__1 = HashMap__class.getMethodID(name: "<init>", sig: "(I)V")!
fileprivate let HashMap__method__2 = HashMap__class.getMethodID(name: "<init>", sig: "(Ljava/util/Map;)V")!
fileprivate let HashMap__method__3 = HashMap__class.getMethodID(name: "putAll", sig: "(Ljava/util/Map;)V")!
fileprivate let HashMap__method__4 = HashMap__class.getMethodID(name: "keySet", sig: "()Ljava/util/Set;")!
fileprivate let HashMap__method__5 = HashMap__class.getMethodID(name: "values", sig: "()Ljava/util/Collection;")!
fileprivate let HashMap__method__6 = HashMap__class.getMethodID(name: "replace", sig: "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z")!
