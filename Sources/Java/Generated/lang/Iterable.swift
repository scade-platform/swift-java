

public protocol Iterable: JObjectConvertible, Sequence {
  associatedtype T: JObjectConvertible

  func iterator<R>() -> R? where R: Java.Iterator, R.E == T
}

public extension Iterable {
  func box() -> IterableProxy<T> {
    return IterableProxy<T>(self)
  }
}

public extension Iterable where Self: Object {
  func iterator() -> Java.IteratorProxy<T>? {
    return self.javaObject.call(method: Iterable__method__0, [])
  }
}

public protocol IterableProxyProtocol: Iterable where Self: Object {}

public extension IterableProxyProtocol {
  func iterator<R>() -> R? where R: Java.Iterator, R.E == T {
    return self.javaObject.call(method: Iterable__method__0, [])
  }
}

public final class IterableProxy<T: JObjectConvertible>: Object, JInterfaceProxy, IterableProxyProtocol {
  public typealias Proto = Iterable

  public override class var javaClass: JClass {
    return Iterable__class
  }

  fileprivate convenience init<P: Iterable>(_ obj: P) where P.T == T {
    self.init(obj.toJavaObject()!)
  }
}

// ------------------------------------------------------------------------------------

fileprivate let Iterable__class = findJavaClass(fqn: "java/lang/Iterable")!

fileprivate let Iterable__method__0 = Iterable__class.getMethodID(name: "iterator", sig: "()Ljava/util/Iterator;")!
