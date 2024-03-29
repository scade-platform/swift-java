

public protocol Collection: Iterable where T == E {
  associatedtype E

  func size() -> Int32

  func isEmpty() -> Bool

  func contains(o: Object?) -> Bool

  func iterator<R>() -> R? where R: Java.Iterator, R.E == E

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

public extension Collection {
  func box() -> CollectionProxy<E> {
    CollectionProxy<E>(self)
  }
}

public extension Collection where Self: Object {
  func iterator() -> Java.IteratorProxy<E>? {
    self.javaObject.call(method: Collection__method__3, [])
  }
}

public protocol CollectionProxyProtocol: Collection, IterableProxyProtocol {}

public extension CollectionProxyProtocol {
  func size() -> Int32 {
    self.javaObject.call(method: Collection__method__0, [])
  }

  func isEmpty() -> Bool {
    self.javaObject.call(method: Collection__method__1, [])
  }

  func contains(o: Object?) -> Bool {
    self.javaObject.call(method: Collection__method__2, [o.toJavaParameter()])
  }

  func iterator<R>() -> R? where R: Java.Iterator, R.E == E {
    self.javaObject.call(method: Collection__method__3, [])
  }

  func toArray() -> [Object?] {
    self.javaObject.call(method: Collection__method__4, [])
  }

  func toArray<T>(a: [T?]) -> [T?] where T: Object {
    self.javaObject.call(method: Collection__method__5, [a.toJavaParameter()])
  }

  func add(e: E?) -> Bool {
    self.javaObject.call(method: Collection__method__6, [e.toJavaParameter()])
  }

  func remove(o: Object?) -> Bool {
    self.javaObject.call(method: Collection__method__7, [o.toJavaParameter()])
  }

  func containsAll<T0, T1>(c: T1?) -> Bool where T0: Object, T1: Java.Collection, T1.E == T0 {
    self.javaObject.call(method: Collection__method__8, [c.toJavaParameter()])
  }

  func addAll<T0, T1>(c: T1?) -> Bool where T0: Object, T1: Java.Collection, T1.E == T0 {
    self.javaObject.call(method: Collection__method__9, [c.toJavaParameter()])
  }

  func removeAll<T0, T1>(c: T1?) -> Bool where T0: Object, T1: Java.Collection, T1.E == T0 {
    self.javaObject.call(method: Collection__method__10, [c.toJavaParameter()])
  }

  func retainAll<T0, T1>(c: T1?) -> Bool where T0: Object, T1: Java.Collection, T1.E == T0 {
    self.javaObject.call(method: Collection__method__11, [c.toJavaParameter()])
  }

  func clear() {
    self.javaObject.call(method: Collection__method__12, [])
  }
}

public final class CollectionProxy<E: JObjectConvertible>: Object, JInterfaceProxy, CollectionProxyProtocol {
  public typealias Proto = Collection

  public typealias T = E

  override public class var javaClass: JClass {
    Collection__class
  }

  fileprivate convenience init<P: Collection>(_ obj: P) where P.E == E {
    self.init(obj.toJavaObject()!)
  }
}

// ------------------------------------------------------------------------------------

private let Collection__class = findJavaClass(fqn: "java/util/Collection")!

private let Collection__method__0 = Collection__class.getMethodID(name: "size", sig: "()I")!
private let Collection__method__1 = Collection__class.getMethodID(name: "isEmpty", sig: "()Z")!
private let Collection__method__2 = Collection__class.getMethodID(name: "contains", sig: "(Ljava/lang/Object;)Z")!
private let Collection__method__3 = Collection__class.getMethodID(name: "iterator", sig: "()Ljava/util/Iterator;")!
private let Collection__method__4 = Collection__class.getMethodID(name: "toArray", sig: "()[Ljava/lang/Object;")!
private let Collection__method__5 = Collection__class.getMethodID(name: "toArray", sig: "([Ljava/lang/Object;)[Ljava/lang/Object;")!
private let Collection__method__6 = Collection__class.getMethodID(name: "add", sig: "(Ljava/lang/Object;)Z")!
private let Collection__method__7 = Collection__class.getMethodID(name: "remove", sig: "(Ljava/lang/Object;)Z")!
private let Collection__method__8 = Collection__class.getMethodID(name: "containsAll", sig: "(Ljava/util/Collection;)Z")!
private let Collection__method__9 = Collection__class.getMethodID(name: "addAll", sig: "(Ljava/util/Collection;)Z")!
private let Collection__method__10 = Collection__class.getMethodID(name: "removeAll", sig: "(Ljava/util/Collection;)Z")!
private let Collection__method__11 = Collection__class.getMethodID(name: "retainAll", sig: "(Ljava/util/Collection;)Z")!
private let Collection__method__12 = Collection__class.getMethodID(name: "clear", sig: "()V")!
