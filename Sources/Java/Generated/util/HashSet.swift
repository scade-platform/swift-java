

open class HashSet<E: JObjectConvertible>: Object, AbstractSet, Java.Set {
  public typealias T = E

  public init<I0, T0>(c: I0?) where I0: Java.Collection, T0: Object, I0.E == T0 {
    super.init(ctor: HashSet__method__0, [c.toJavaParameter()])
  }

  public init(initialCapacity: Int32, loadFactor: Float) {
    super.init(ctor: HashSet__method__1, [initialCapacity.toJavaParameter(), loadFactor.toJavaParameter()])
  }

  public init(initialCapacity: Int32) {
    super.init(ctor: HashSet__method__2, [initialCapacity.toJavaParameter()])
  }

  public func iterator<R>() -> R? where R: Java.Iterator, R.E == E {
    return self.javaObject.call(method: HashSet__method__3, [])
  }

  public func size() -> Int32 {
    return self.javaObject.call(method: HashSet__method__4, [])
  }

  public required init(_ obj: JavaObject) {
    super.init(obj)
  }

  public required init(ctor: JavaMethodID, _ args: [JavaParameter]) {
    super.init(ctor: ctor, args)
  }
}

extension HashSet {
  public func iterator() -> Java.IteratorProxy<E>? {
    return self.javaObject.call(method: HashSet__method__3, [])
  }
}

// ------------------------------------------------------------------------------------

fileprivate let HashSet__class = findJavaClass(fqn: "java/util/HashSet")!

fileprivate let HashSet__method__0 = HashSet__class.getMethodID(name: "<init>", sig: "(Ljava/util/Collection;)V")!
fileprivate let HashSet__method__1 = HashSet__class.getMethodID(name: "<init>", sig: "(IF)V")!
fileprivate let HashSet__method__2 = HashSet__class.getMethodID(name: "<init>", sig: "(I)V")!
fileprivate let HashSet__method__3 = HashSet__class.getMethodID(name: "iterator", sig: "()Ljava/util/Iterator;")!
fileprivate let HashSet__method__4 = HashSet__class.getMethodID(name: "size", sig: "()I")!
