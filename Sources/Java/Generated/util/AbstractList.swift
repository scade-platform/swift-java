

public protocol AbstractList: AbstractCollection, List {
  func get(index: Int32) -> E?

  func set(index: Int32, element: E?) -> E?

  func add(index: Int32, element: E?) -> Void

  func remove(index: Int32) -> E?

  func indexOf(o: Object?) -> Int32

  func lastIndexOf(o: Object?) -> Int32

  func addAll<I0, T0>(index: Int32, c: I0?) -> Bool where I0: Java.Collection, T0: Object, I0.E == T0

  func iterator<R>() -> R? where R: Java.Iterator, R.E == E

  func subList<R>(fromIndex: Int32, toIndex: Int32) -> R? where R: List, R.E == E
}

public extension AbstractList {
  func box() -> AbstractListProxy<E> {
    return AbstractListProxy<E>(self)
  }
}

public extension AbstractList where Self: Object {
  func set(index: Int32, element: E?) -> E? {
    return self.javaObject.call(method: AbstractList__method__1, [index.toJavaParameter(), element.toJavaParameter()])
  }

  func add(index: Int32, element: E?) {
    return self.javaObject.call(method: AbstractList__method__2, [index.toJavaParameter(), element.toJavaParameter()])
  }

  func remove(index: Int32) -> E? {
    return self.javaObject.call(method: AbstractList__method__3, [index.toJavaParameter()])
  }

  func indexOf(o: Object?) -> Int32 {
    return self.javaObject.call(method: AbstractList__method__4, [o.toJavaParameter()])
  }

  func lastIndexOf(o: Object?) -> Int32 {
    return self.javaObject.call(method: AbstractList__method__5, [o.toJavaParameter()])
  }

  func addAll<I0, T0>(index: Int32, c: I0?) -> Bool where I0: Java.Collection, T0: Object, I0.E == T0 {
    return self.javaObject.call(method: AbstractList__method__6, [index.toJavaParameter(), c.toJavaParameter()])
  }

  func iterator<R>() -> R? where R: Java.Iterator, R.E == E {
    return self.javaObject.call(method: AbstractList__method__7, [])
  }

  func subList<R>(fromIndex: Int32, toIndex: Int32) -> R? where R: List, R.E == E {
    return self.javaObject.call(method: AbstractList__method__8, [fromIndex.toJavaParameter(), toIndex.toJavaParameter()])
  }

  func iterator() -> Java.IteratorProxy<E>? {
    return self.javaObject.call(method: AbstractList__method__7, [])
  }

  func subList(fromIndex: Int32, toIndex: Int32) -> ListProxy<E>? {
    return self.javaObject.call(method: AbstractList__method__8, [fromIndex.toJavaParameter(), toIndex.toJavaParameter()])
  }
}

open class AbstractListProxy<E: JObjectConvertible>: AbstractCollectionProxy<E>, AbstractList {
  public typealias Proto = AbstractList

  public typealias T = E

  open override class var javaClass: JClass {
    return AbstractList__class
  }

  fileprivate convenience init<P: AbstractList>(_ obj: P) where P.E == E {
    self.init(obj.toJavaObject()!)
  }

  public func get(index: Int32) -> E? {
    return self.javaObject.call(method: AbstractList__method__0, [index.toJavaParameter()])
  }
}

// ------------------------------------------------------------------------------------

fileprivate let AbstractList__class = findJavaClass(fqn: "java/util/AbstractList")!

fileprivate let AbstractList__method__0 = AbstractList__class.getMethodID(name: "get", sig: "(I)Ljava/lang/Object;")!
fileprivate let AbstractList__method__1 = AbstractList__class.getMethodID(name: "set", sig: "(ILjava/lang/Object;)Ljava/lang/Object;")!
fileprivate let AbstractList__method__2 = AbstractList__class.getMethodID(name: "add", sig: "(ILjava/lang/Object;)V")!
fileprivate let AbstractList__method__3 = AbstractList__class.getMethodID(name: "remove", sig: "(I)Ljava/lang/Object;")!
fileprivate let AbstractList__method__4 = AbstractList__class.getMethodID(name: "indexOf", sig: "(Ljava/lang/Object;)I")!
fileprivate let AbstractList__method__5 = AbstractList__class.getMethodID(name: "lastIndexOf", sig: "(Ljava/lang/Object;)I")!
fileprivate let AbstractList__method__6 = AbstractList__class.getMethodID(name: "addAll", sig: "(ILjava/util/Collection;)Z")!
fileprivate let AbstractList__method__7 = AbstractList__class.getMethodID(name: "iterator", sig: "()Ljava/util/Iterator;")!
fileprivate let AbstractList__method__8 = AbstractList__class.getMethodID(name: "subList", sig: "(II)Ljava/util/List;")!
