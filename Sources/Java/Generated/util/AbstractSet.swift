

public protocol AbstractSet: AbstractCollection, Java.Set {}

public extension AbstractSet {
  func box() -> AbstractSetProxy<E> {
    return AbstractSetProxy<E>(self)
  }
}

open class AbstractSetProxy<E: JObjectConvertible>: AbstractCollectionProxy<E>, AbstractSet {
  public typealias Proto = AbstractSet

  public typealias T = E

  open override class var javaClass: JClass {
    return AbstractSet__class
  }

  fileprivate convenience init<P: AbstractSet>(_ obj: P) where P.E == E {
    self.init(obj.toJavaObject()!)
  }
}

// ------------------------------------------------------------------------------------

fileprivate let AbstractSet__class = findJavaClass(fqn: "java/util/AbstractSet")!
