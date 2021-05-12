

public protocol Iterator: JObjectConvertible {
  associatedtype E: JObjectConvertible

  func hasNext() -> Bool

  func next() -> E?

  func remove() -> Void
}

public extension Iterator {
  func box() -> IteratorProxy<E> {
    return IteratorProxy<E>(self)
  }
}

public extension Iterator where Self: Object {
  func remove() {
    return self.javaObject.call(method: Iterator__method__2, [])
  }
}

public protocol IteratorProxyProtocol: Iterator where Self: Object {}

public extension IteratorProxyProtocol {
  func hasNext() -> Bool {
    return self.javaObject.call(method: Iterator__method__0, [])
  }

  func next() -> E? {
    return self.javaObject.call(method: Iterator__method__1, [])
  }
}

public final class IteratorProxy<E: JObjectConvertible>: Object, JInterfaceProxy, IteratorProxyProtocol {
  public typealias Proto = Iterator

  public override class var javaClass: JClass {
    return Iterator__class
  }

  fileprivate convenience init<P: Iterator>(_ obj: P) where P.E == E {
    self.init(obj.toJavaObject()!)
  }
}

// ------------------------------------------------------------------------------------

fileprivate let Iterator__class = findJavaClass(fqn: "java/util/Iterator")!

fileprivate let Iterator__method__0 = Iterator__class.getMethodID(name: "hasNext", sig: "()Z")!
fileprivate let Iterator__method__1 = Iterator__class.getMethodID(name: "next", sig: "()Ljava/lang/Object;")!
fileprivate let Iterator__method__2 = Iterator__class.getMethodID(name: "remove", sig: "()V")!
