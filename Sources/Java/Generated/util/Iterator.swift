

public protocol Iterator: JObjectConvertible {
  associatedtype E: JObjectConvertible

  func hasNext() -> Bool

  func next() -> E?

  func remove() -> Void
}

public extension Iterator {
  func box() -> IteratorProxy<E> {
    IteratorProxy<E>(self)
  }
}

public extension Iterator where Self: Object {
  func remove() {
    self.javaObject.call(method: Iterator__method__2, [])
  }
}

public protocol IteratorProxyProtocol: Iterator where Self: Object {}

public extension IteratorProxyProtocol {
  func hasNext() -> Bool {
    self.javaObject.call(method: Iterator__method__0, [])
  }

  func next() -> E? {
    self.javaObject.call(method: Iterator__method__1, [])
  }
}

public final class IteratorProxy<E: JObjectConvertible>: Object, JInterfaceProxy, IteratorProxyProtocol {
  public typealias Proto = Iterator

  override public class var javaClass: JClass {
    Iterator__class
  }

  fileprivate convenience init<P: Iterator>(_ obj: P) where P.E == E {
    self.init(obj.toJavaObject()!)
  }
}

// ------------------------------------------------------------------------------------

private let Iterator__class = findJavaClass(fqn: "java/util/Iterator")!

private let Iterator__method__0 = Iterator__class.getMethodID(name: "hasNext", sig: "()Z")!
private let Iterator__method__1 = Iterator__class.getMethodID(name: "next", sig: "()Ljava/lang/Object;")!
private let Iterator__method__2 = Iterator__class.getMethodID(name: "remove", sig: "()V")!
