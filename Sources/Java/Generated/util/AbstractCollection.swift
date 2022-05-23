

public protocol AbstractCollection: Java.Collection where Self: Object {
  func iterator<R>() -> R? where R: Java.Iterator, R.E == E

  func size() -> Int32

  func isEmpty() -> Bool

  func contains(o: Object?) -> Bool

  func toArray() -> [Object?]

  func toArray<T>(a: [T?]) -> [T?] where T: Object

  func add(e: E?) -> Bool

  func remove(o: Object?) -> Bool

  func containsAll<T0, T1>(c: T1?) -> Bool where T0: Object, T1: Java.Collection, T1.E == T0

  func addAll<T0, T1>(c: T1?) -> Bool where T0: Object, T1: Java.Collection, T1.E == T0

  func removeAll<T0, T1>(c: T1?) -> Bool where T0: Object, T1: Java.Collection, T1.E == T0

  func retainAll<T0, T1>(c: T1?) -> Bool where T0: Object, T1: Java.Collection, T1.E == T0

  func clear() -> Void
}

public extension AbstractCollection {
  func box() -> AbstractCollectionProxy<E> {
    AbstractCollectionProxy<E>(self)
  }
}

public extension AbstractCollection where Self: Object {
  func isEmpty() -> Bool {
    self.javaObject.call(method: AbstractCollection__method__3, [])
  }

  func contains(o: Object?) -> Bool {
    self.javaObject.call(method: AbstractCollection__method__4, [o.toJavaParameter()])
  }

  func toArray() -> [Object?] {
    self.javaObject.call(method: AbstractCollection__method__5, [])
  }

  func toArray<T>(a: [T?]) -> [T?] where T: Object {
    self.javaObject.call(method: AbstractCollection__method__6, [a.toJavaParameter()])
  }

  func add(e: E?) -> Bool {
    self.javaObject.call(method: AbstractCollection__method__7, [e.toJavaParameter()])
  }

  func remove(o: Object?) -> Bool {
    self.javaObject.call(method: AbstractCollection__method__8, [o.toJavaParameter()])
  }

  func containsAll<T0, T1>(c: T1?) -> Bool where T0: Object, T1: Java.Collection, T1.E == T0 {
    self.javaObject.call(method: AbstractCollection__method__9, [c.toJavaParameter()])
  }

  func addAll<T0, T1>(c: T1?) -> Bool where T0: Object, T1: Java.Collection, T1.E == T0 {
    self.javaObject.call(method: AbstractCollection__method__10, [c.toJavaParameter()])
  }

  func removeAll<T0, T1>(c: T1?) -> Bool where T0: Object, T1: Java.Collection, T1.E == T0 {
    self.javaObject.call(method: AbstractCollection__method__11, [c.toJavaParameter()])
  }

  func retainAll<T0, T1>(c: T1?) -> Bool where T0: Object, T1: Java.Collection, T1.E == T0 {
    self.javaObject.call(method: AbstractCollection__method__12, [c.toJavaParameter()])
  }

  func clear() {
    self.javaObject.call(method: AbstractCollection__method__13, [])
  }

  func iterator() -> Java.IteratorProxy<E>? {
    self.javaObject.call(method: AbstractCollection__method__1, [])
  }
}

open class AbstractCollectionProxy<E: JObjectConvertible>: Object, JInterfaceProxy, AbstractCollection {
  public typealias Proto = AbstractCollection

  public typealias T = E

  override open class var javaClass: JClass {
    AbstractCollection__class
  }

  fileprivate convenience init<P: AbstractCollection>(_ obj: P) where P.E == E {
    self.init(obj.toJavaObject()!)
  }

  open func iterator<R>() -> R? where R: Java.Iterator, R.E == E {
    self.javaObject.call(method: AbstractCollection__method__1, [])
  }

  open func size() -> Int32 {
    self.javaObject.call(method: AbstractCollection__method__2, [])
  }
}

// ------------------------------------------------------------------------------------

private let AbstractCollection__class = findJavaClass(fqn: "java/util/AbstractCollection")!

private let AbstractCollection__method__1 = AbstractCollection__class.getMethodID(name: "iterator", sig: "()Ljava/util/Iterator;")!
private let AbstractCollection__method__2 = AbstractCollection__class.getMethodID(name: "size", sig: "()I")!
private let AbstractCollection__method__3 = AbstractCollection__class.getMethodID(name: "isEmpty", sig: "()Z")!
private let AbstractCollection__method__4 = AbstractCollection__class.getMethodID(name: "contains", sig: "(Ljava/lang/Object;)Z")!
private let AbstractCollection__method__5 = AbstractCollection__class.getMethodID(name: "toArray", sig: "()[Ljava/lang/Object;")!
private let AbstractCollection__method__6 = AbstractCollection__class.getMethodID(name: "toArray", sig: "([Ljava/lang/Object;)[Ljava/lang/Object;")!
private let AbstractCollection__method__7 = AbstractCollection__class.getMethodID(name: "add", sig: "(Ljava/lang/Object;)Z")!
private let AbstractCollection__method__8 = AbstractCollection__class.getMethodID(name: "remove", sig: "(Ljava/lang/Object;)Z")!
private let AbstractCollection__method__9 = AbstractCollection__class.getMethodID(name: "containsAll", sig: "(Ljava/util/Collection;)Z")!
private let AbstractCollection__method__10 = AbstractCollection__class.getMethodID(name: "addAll", sig: "(Ljava/util/Collection;)Z")!
private let AbstractCollection__method__11 = AbstractCollection__class.getMethodID(name: "removeAll", sig: "(Ljava/util/Collection;)Z")!
private let AbstractCollection__method__12 = AbstractCollection__class.getMethodID(name: "retainAll", sig: "(Ljava/util/Collection;)Z")!
private let AbstractCollection__method__13 = AbstractCollection__class.getMethodID(name: "clear", sig: "()V")!
private let Iterable__method__0 = AbstractCollection__class.getMethodID(name: "iterator", sig: "()Ljava/util/Iterator;")!
