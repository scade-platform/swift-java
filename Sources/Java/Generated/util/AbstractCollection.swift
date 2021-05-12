

public protocol AbstractCollection: Java.Collection where Self: Object {
  func iterator<R>() -> R? where R: Java.Iterator, R.E == E

  func size() -> Int32

  func isEmpty() -> Bool

  func contains(o: Object?) -> Bool

  func toArray() -> [Object?]

  func toArray<T>(a: [T?]) -> [T?] where T: Object

  func add(e: E?) -> Bool

  func remove(o: Object?) -> Bool

  func containsAll<T0, I0>(c: I0?) -> Bool where T0: Object, I0: Java.Collection, I0.E == T0

  func addAll<I0, T0>(c: I0?) -> Bool where I0: Java.Collection, T0: Object, I0.E == T0

  func removeAll<T0, I0>(c: I0?) -> Bool where T0: Object, I0: Java.Collection, I0.E == T0

  func retainAll<T0, I0>(c: I0?) -> Bool where T0: Object, I0: Java.Collection, I0.E == T0

  func clear() -> Void
}

public extension AbstractCollection {
  func box() -> AbstractCollectionProxy<E> {
    return AbstractCollectionProxy<E>(self)
  }
}

public extension AbstractCollection where Self: Object {
  func isEmpty() -> Bool {
    return self.javaObject.call(method: AbstractCollection__method__2, [])
  }

  func contains(o: Object?) -> Bool {
    return self.javaObject.call(method: AbstractCollection__method__3, [o.toJavaParameter()])
  }

  func toArray() -> [Object?] {
    return self.javaObject.call(method: AbstractCollection__method__4, [])
  }

  func toArray<T>(a: [T?]) -> [T?] where T: Object {
    return self.javaObject.call(method: AbstractCollection__method__5, [a.toJavaParameter()])
  }

  func add(e: E?) -> Bool {
    return self.javaObject.call(method: AbstractCollection__method__6, [e.toJavaParameter()])
  }

  func remove(o: Object?) -> Bool {
    return self.javaObject.call(method: AbstractCollection__method__7, [o.toJavaParameter()])
  }

  func containsAll<T0, I0>(c: I0?) -> Bool where T0: Object, I0: Java.Collection, I0.E == T0 {
    return self.javaObject.call(method: AbstractCollection__method__8, [c.toJavaParameter()])
  }

  func addAll<I0, T0>(c: I0?) -> Bool where I0: Java.Collection, T0: Object, I0.E == T0 {
    return self.javaObject.call(method: AbstractCollection__method__9, [c.toJavaParameter()])
  }

  func removeAll<T0, I0>(c: I0?) -> Bool where T0: Object, I0: Java.Collection, I0.E == T0 {
    return self.javaObject.call(method: AbstractCollection__method__10, [c.toJavaParameter()])
  }

  func retainAll<T0, I0>(c: I0?) -> Bool where T0: Object, I0: Java.Collection, I0.E == T0 {
    return self.javaObject.call(method: AbstractCollection__method__11, [c.toJavaParameter()])
  }

  func clear() {
    return self.javaObject.call(method: AbstractCollection__method__12, [])
  }

  func iterator() -> Java.IteratorProxy<E>? {
    return self.javaObject.call(method: AbstractCollection__method__0, [])
  }
}

open class AbstractCollectionProxy<E: JObjectConvertible>: Object, JInterfaceProxy, AbstractCollection {
  public typealias Proto = AbstractCollection

  public typealias T = E

  open override class var javaClass: JClass {
    return AbstractCollection__class
  }

  fileprivate convenience init<P: AbstractCollection>(_ obj: P) where P.E == E {
    self.init(obj.toJavaObject()!)
  }

  public func iterator<R>() -> R? where R: Java.Iterator, R.E == E {
    return self.javaObject.call(method: AbstractCollection__method__0, [])
  }

  public func size() -> Int32 {
    return self.javaObject.call(method: AbstractCollection__method__1, [])
  }
}

// ------------------------------------------------------------------------------------

fileprivate let AbstractCollection__class = findJavaClass(fqn: "java/util/AbstractCollection")!

fileprivate let AbstractCollection__method__0 = AbstractCollection__class.getMethodID(name: "iterator", sig: "()Ljava/util/Iterator;")!
fileprivate let AbstractCollection__method__1 = AbstractCollection__class.getMethodID(name: "size", sig: "()I")!
fileprivate let AbstractCollection__method__2 = AbstractCollection__class.getMethodID(name: "isEmpty", sig: "()Z")!
fileprivate let AbstractCollection__method__3 = AbstractCollection__class.getMethodID(name: "contains", sig: "(Ljava/lang/Object;)Z")!
fileprivate let AbstractCollection__method__4 = AbstractCollection__class.getMethodID(name: "toArray", sig: "()[Ljava/lang/Object;")!
fileprivate let AbstractCollection__method__5 = AbstractCollection__class.getMethodID(name: "toArray", sig: "([Ljava/lang/Object;)[Ljava/lang/Object;")!
fileprivate let AbstractCollection__method__6 = AbstractCollection__class.getMethodID(name: "add", sig: "(Ljava/lang/Object;)Z")!
fileprivate let AbstractCollection__method__7 = AbstractCollection__class.getMethodID(name: "remove", sig: "(Ljava/lang/Object;)Z")!
fileprivate let AbstractCollection__method__8 = AbstractCollection__class.getMethodID(name: "containsAll", sig: "(Ljava/util/Collection;)Z")!
fileprivate let AbstractCollection__method__9 = AbstractCollection__class.getMethodID(name: "addAll", sig: "(Ljava/util/Collection;)Z")!
fileprivate let AbstractCollection__method__10 = AbstractCollection__class.getMethodID(name: "removeAll", sig: "(Ljava/util/Collection;)Z")!
fileprivate let AbstractCollection__method__11 = AbstractCollection__class.getMethodID(name: "retainAll", sig: "(Ljava/util/Collection;)Z")!
fileprivate let AbstractCollection__method__12 = AbstractCollection__class.getMethodID(name: "clear", sig: "()V")!
