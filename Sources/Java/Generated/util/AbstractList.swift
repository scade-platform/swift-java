

public protocol AbstractList: AbstractCollection, List {
  func get(index: Int32) -> E?
}

public extension AbstractList {
  func box() -> AbstractListProxy<E> {
    AbstractListProxy<E>(self)
  }
}

public extension AbstractList where Self: Object {
  func set(index: Int32, element: E?) -> E? {
    self.javaObject.call(method: AbstractList__method__2, [index.toJavaParameter(), element.toJavaParameter()])
  }

  func add(index: Int32, element: E?) {
    self.javaObject.call(method: AbstractList__method__3, [index.toJavaParameter(), element.toJavaParameter()])
  }

  func remove(index: Int32) -> E? {
    self.javaObject.call(method: AbstractList__method__4, [index.toJavaParameter()])
  }

  func indexOf(o: Object?) -> Int32 {
    self.javaObject.call(method: AbstractList__method__5, [o.toJavaParameter()])
  }

  func lastIndexOf(o: Object?) -> Int32 {
    self.javaObject.call(method: AbstractList__method__6, [o.toJavaParameter()])
  }

  func addAll<T0, T1>(index: Int32, c: T1?) -> Bool where T0: Object, T1: Java.Collection, T1.E == T0 {
    self.javaObject.call(method: AbstractList__method__7, [index.toJavaParameter(), c.toJavaParameter()])
  }

  func iterator<R>() -> R? where R: Java.Iterator, R.E == E {
    self.javaObject.call(method: AbstractList__method__8, [])
  }

  func subList<R>(fromIndex: Int32, toIndex: Int32) -> R? where R: List, R.E == E {
    self.javaObject.call(method: AbstractList__method__9, [fromIndex.toJavaParameter(), toIndex.toJavaParameter()])
  }

  func removeRange(fromIndex: Int32, toIndex: Int32) {
    self.javaObject.call(method: AbstractList__method__10, [fromIndex.toJavaParameter(), toIndex.toJavaParameter()])
  }

  func iterator() -> Java.IteratorProxy<E>? {
    self.javaObject.call(method: AbstractList__method__8, [])
  }

  func subList(fromIndex: Int32, toIndex: Int32) -> ListProxy<E>? {
    self.javaObject.call(method: AbstractList__method__9, [fromIndex.toJavaParameter(), toIndex.toJavaParameter()])
  }
}

open class AbstractListProxy<E: JObjectConvertible>: AbstractCollectionProxy<E>, AbstractList {
  public typealias Proto = AbstractList

  public typealias T = E

  override open class var javaClass: JClass {
    AbstractList__class
  }

  fileprivate convenience init<P: AbstractList>(_ obj: P) where P.E == E {
    self.init(obj.toJavaObject()!)
  }

  open func get(index: Int32) -> E? {
    self.javaObject.call(method: AbstractList__method__1, [index.toJavaParameter()])
  }
}

// ------------------------------------------------------------------------------------

private let AbstractList__class = findJavaClass(fqn: "java/util/AbstractList")!

private let AbstractList__method__1 = AbstractList__class.getMethodID(name: "get", sig: "(I)Ljava/lang/Object;")!
private let AbstractList__method__2 = AbstractList__class.getMethodID(name: "set", sig: "(ILjava/lang/Object;)Ljava/lang/Object;")!
private let AbstractList__method__3 = AbstractList__class.getMethodID(name: "add", sig: "(ILjava/lang/Object;)V")!
private let AbstractList__method__4 = AbstractList__class.getMethodID(name: "remove", sig: "(I)Ljava/lang/Object;")!
private let AbstractList__method__5 = AbstractList__class.getMethodID(name: "indexOf", sig: "(Ljava/lang/Object;)I")!
private let AbstractList__method__6 = AbstractList__class.getMethodID(name: "lastIndexOf", sig: "(Ljava/lang/Object;)I")!
private let AbstractList__method__7 = AbstractList__class.getMethodID(name: "addAll", sig: "(ILjava/util/Collection;)Z")!
private let AbstractList__method__8 = AbstractList__class.getMethodID(name: "iterator", sig: "()Ljava/util/Iterator;")!
private let AbstractList__method__9 = AbstractList__class.getMethodID(name: "subList", sig: "(II)Ljava/util/List;")!
private let AbstractList__method__10 = AbstractList__class.getMethodID(name: "removeRange", sig: "(II)V")!
