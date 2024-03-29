

public protocol Set: Java.Collection {
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

  func retainAll<T0, T1>(c: T1?) -> Bool where T0: Object, T1: Java.Collection, T1.E == T0

  func removeAll<T0, T1>(c: T1?) -> Bool where T0: Object, T1: Java.Collection, T1.E == T0

  func clear() -> Void
}

public extension Set {
  func box() -> SetProxy<E> {
    SetProxy<E>(self)
  }
}

public extension Set where Self: Object {
  func iterator() -> Java.IteratorProxy<E>? {
    self.javaObject.call(method: Set__method__3, [])
  }
}

public protocol SetProxyProtocol: Set, Java.CollectionProxyProtocol {}

public extension SetProxyProtocol {
  func size() -> Int32 {
    self.javaObject.call(method: Set__method__0, [])
  }

  func isEmpty() -> Bool {
    self.javaObject.call(method: Set__method__1, [])
  }

  func contains(o: Object?) -> Bool {
    self.javaObject.call(method: Set__method__2, [o.toJavaParameter()])
  }

  func iterator<R>() -> R? where R: Java.Iterator, R.E == E {
    self.javaObject.call(method: Set__method__3, [])
  }

  func toArray() -> [Object?] {
    self.javaObject.call(method: Set__method__4, [])
  }

  func toArray<T>(a: [T?]) -> [T?] where T: Object {
    self.javaObject.call(method: Set__method__5, [a.toJavaParameter()])
  }

  func add(e: E?) -> Bool {
    self.javaObject.call(method: Set__method__6, [e.toJavaParameter()])
  }

  func remove(o: Object?) -> Bool {
    self.javaObject.call(method: Set__method__7, [o.toJavaParameter()])
  }

  func containsAll<T0, T1>(c: T1?) -> Bool where T0: Object, T1: Java.Collection, T1.E == T0 {
    self.javaObject.call(method: Set__method__8, [c.toJavaParameter()])
  }

  func addAll<T0, T1>(c: T1?) -> Bool where T0: Object, T1: Java.Collection, T1.E == T0 {
    self.javaObject.call(method: Set__method__9, [c.toJavaParameter()])
  }

  func retainAll<T0, T1>(c: T1?) -> Bool where T0: Object, T1: Java.Collection, T1.E == T0 {
    self.javaObject.call(method: Set__method__10, [c.toJavaParameter()])
  }

  func removeAll<T0, T1>(c: T1?) -> Bool where T0: Object, T1: Java.Collection, T1.E == T0 {
    self.javaObject.call(method: Set__method__11, [c.toJavaParameter()])
  }

  func clear() {
    self.javaObject.call(method: Set__method__12, [])
  }
}

public final class SetProxy<E: JObjectConvertible>: Object, JInterfaceProxy, SetProxyProtocol {
  public typealias Proto = Set

  public typealias T = E

  override public class var javaClass: JClass {
    Set__class
  }

  fileprivate convenience init<P: Set>(_ obj: P) where P.E == E {
    self.init(obj.toJavaObject()!)
  }
}

// ------------------------------------------------------------------------------------

private let Set__class = findJavaClass(fqn: "java/util/Set")!

private let Set__method__0 = Set__class.getMethodID(name: "size", sig: "()I")!
private let Set__method__1 = Set__class.getMethodID(name: "isEmpty", sig: "()Z")!
private let Set__method__2 = Set__class.getMethodID(name: "contains", sig: "(Ljava/lang/Object;)Z")!
private let Set__method__3 = Set__class.getMethodID(name: "iterator", sig: "()Ljava/util/Iterator;")!
private let Set__method__4 = Set__class.getMethodID(name: "toArray", sig: "()[Ljava/lang/Object;")!
private let Set__method__5 = Set__class.getMethodID(name: "toArray", sig: "([Ljava/lang/Object;)[Ljava/lang/Object;")!
private let Set__method__6 = Set__class.getMethodID(name: "add", sig: "(Ljava/lang/Object;)Z")!
private let Set__method__7 = Set__class.getMethodID(name: "remove", sig: "(Ljava/lang/Object;)Z")!
private let Set__method__8 = Set__class.getMethodID(name: "containsAll", sig: "(Ljava/util/Collection;)Z")!
private let Set__method__9 = Set__class.getMethodID(name: "addAll", sig: "(Ljava/util/Collection;)Z")!
private let Set__method__10 = Set__class.getMethodID(name: "retainAll", sig: "(Ljava/util/Collection;)Z")!
private let Set__method__11 = Set__class.getMethodID(name: "removeAll", sig: "(Ljava/util/Collection;)Z")!
private let Set__method__12 = Set__class.getMethodID(name: "clear", sig: "()V")!
