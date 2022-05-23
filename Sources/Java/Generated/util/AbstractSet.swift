

public protocol AbstractSet: AbstractCollection, Java.Set {}

public extension AbstractSet {
  func box() -> AbstractSetProxy<E> {
    AbstractSetProxy<E>(self)
  }
}

open class AbstractSetProxy<E: JObjectConvertible>: AbstractCollectionProxy<E>, AbstractSet {
  public typealias Proto = AbstractSet

  public typealias T = E

  override open class var javaClass: JClass {
    AbstractSet__class
  }

  fileprivate convenience init<P: AbstractSet>(_ obj: P) where P.E == E {
    self.init(obj.toJavaObject()!)
  }
}

// ------------------------------------------------------------------------------------

private let AbstractSet__class = findJavaClass(fqn: "java/util/AbstractSet")!
