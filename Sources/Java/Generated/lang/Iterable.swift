

public protocol Iterable: JObjectConvertible, Sequence {
  associatedtype T: JObjectConvertible

  func iterator<R>() -> R? where R: Java.Iterator, R.E == T
}

public extension Iterable {
  func box() -> IterableProxy<T> {
    IterableProxy<T>(self)
  }
}

public extension Iterable where Self: Object {
  func iterator() -> Java.IteratorProxy<T>? {
    self.javaObject.call(method: Iterable__method__0, [])
  }
}

public protocol IterableProxyProtocol: Iterable where Self: Object {}

public extension IterableProxyProtocol {
  func iterator<R>() -> R? where R: Java.Iterator, R.E == T {
    self.javaObject.call(method: Iterable__method__0, [])
  }
}

public final class IterableProxy<T: JObjectConvertible>: Object, JInterfaceProxy, IterableProxyProtocol {
  public typealias Proto = Iterable

  override public class var javaClass: JClass {
    Iterable__class
  }

  fileprivate convenience init<P: Iterable>(_ obj: P) where P.T == T {
    self.init(obj.toJavaObject()!)
  }
}

// ------------------------------------------------------------------------------------

private let Iterable__class = findJavaClass(fqn: "java/lang/Iterable")!

private let Iterable__method__0 = Iterable__class.getMethodID(name: "iterator", sig: "()Ljava/util/Iterator;")!
