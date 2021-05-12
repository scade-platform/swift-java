

open class ArrayList<E: JObjectConvertible>: Object, AbstractList, List {
  public typealias T = E

  public init(initialCapacity: Int32) {
    super.init(ctor: ArrayList__method__0, [initialCapacity.toJavaParameter()])
  }

  public init<T0, I0>(c: I0?) where T0: Object, I0: Java.Collection, I0.E == T0 {
    super.init(ctor: ArrayList__method__1, [c.toJavaParameter()])
  }

  public func trimToSize() {
    return self.javaObject.call(method: ArrayList__method__2, [])
  }

  public func ensureCapacity(minCapacity: Int32) {
    return self.javaObject.call(method: ArrayList__method__3, [minCapacity.toJavaParameter()])
  }

  public func size() -> Int32 {
    return self.javaObject.call(method: ArrayList__method__4, [])
  }

  public func toArray<T>(a: [T?]) -> [T?] where T: Object {
    return self.javaObject.call(method: ArrayList__method__5, [a.toJavaParameter()])
  }

  public func get(index: Int32) -> E? {
    return self.javaObject.call(method: ArrayList__method__6, [index.toJavaParameter()])
  }

  public func addAll<I0, T0>(c: I0?) -> Bool where I0: Java.Collection, T0: Object, I0.E == T0 {
    return self.javaObject.call(method: ArrayList__method__7, [c.toJavaParameter()])
  }

  public func addAll<I0, T0>(index: Int32, c: I0?) -> Bool where I0: Java.Collection, T0: Object, I0.E == T0 {
    return self.javaObject.call(method: ArrayList__method__8, [index.toJavaParameter(), c.toJavaParameter()])
  }

  public func iterator<R>() -> R? where R: Java.Iterator, R.E == E {
    return self.javaObject.call(method: ArrayList__method__9, [])
  }

  public func subList<R>(fromIndex: Int32, toIndex: Int32) -> R? where R: List, R.E == E {
    return self.javaObject.call(method: ArrayList__method__10, [fromIndex.toJavaParameter(), toIndex.toJavaParameter()])
  }

  public required init(_ obj: JavaObject) {
    super.init(obj)
  }

  public required init(ctor: JavaMethodID, _ args: [JavaParameter]) {
    super.init(ctor: ctor, args)
  }
}

extension ArrayList {
  public func iterator() -> Java.IteratorProxy<E>? {
    return self.javaObject.call(method: ArrayList__method__9, [])
  }

  public func subList(fromIndex: Int32, toIndex: Int32) -> ListProxy<E>? {
    return self.javaObject.call(method: ArrayList__method__10, [fromIndex.toJavaParameter(), toIndex.toJavaParameter()])
  }
}

// ------------------------------------------------------------------------------------

fileprivate let ArrayList__class = findJavaClass(fqn: "java/util/ArrayList")!

fileprivate let ArrayList__method__0 = ArrayList__class.getMethodID(name: "<init>", sig: "(I)V")!
fileprivate let ArrayList__method__1 = ArrayList__class.getMethodID(name: "<init>", sig: "(Ljava/util/Collection;)V")!
fileprivate let ArrayList__method__2 = ArrayList__class.getMethodID(name: "trimToSize", sig: "()V")!
fileprivate let ArrayList__method__3 = ArrayList__class.getMethodID(name: "ensureCapacity", sig: "(I)V")!
fileprivate let ArrayList__method__4 = ArrayList__class.getMethodID(name: "size", sig: "()I")!
fileprivate let ArrayList__method__5 = ArrayList__class.getMethodID(name: "toArray", sig: "([Ljava/lang/Object;)[Ljava/lang/Object;")!
fileprivate let ArrayList__method__6 = ArrayList__class.getMethodID(name: "get", sig: "(I)Ljava/lang/Object;")!
fileprivate let ArrayList__method__7 = ArrayList__class.getMethodID(name: "addAll", sig: "(Ljava/util/Collection;)Z")!
fileprivate let ArrayList__method__8 = ArrayList__class.getMethodID(name: "addAll", sig: "(ILjava/util/Collection;)Z")!
fileprivate let ArrayList__method__9 = ArrayList__class.getMethodID(name: "iterator", sig: "()Ljava/util/Iterator;")!
fileprivate let ArrayList__method__10 = ArrayList__class.getMethodID(name: "subList", sig: "(II)Ljava/util/List;")!
