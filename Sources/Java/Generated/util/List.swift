

public protocol List: Java.Collection {
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

  func addAll<T0, T1>(index: Int32, c: T1?) -> Bool where T0: Object, T1: Java.Collection, T1.E == T0

  func removeAll<T0, T1>(c: T1?) -> Bool where T0: Object, T1: Java.Collection, T1.E == T0

  func retainAll<T0, T1>(c: T1?) -> Bool where T0: Object, T1: Java.Collection, T1.E == T0

  func clear() -> Void

  func get(index: Int32) -> E?

  func set(index: Int32, element: E?) -> E?

  func add(index: Int32, element: E?) -> Void

  func remove(index: Int32) -> E?

  func indexOf(o: Object?) -> Int32

  func lastIndexOf(o: Object?) -> Int32

  func subList<R>(fromIndex: Int32, toIndex: Int32) -> R? where R: List, R.E == E
}

public extension List {
  func box() -> ListProxy<E> {
    ListProxy<E>(self)
  }
}

public extension List where Self: Object {
  func iterator() -> Java.IteratorProxy<E>? {
    self.javaObject.call(method: List__method__3, [])
  }

  func subList(fromIndex: Int32, toIndex: Int32) -> ListProxy<E>? {
    self.javaObject.call(method: List__method__20, [fromIndex.toJavaParameter(), toIndex.toJavaParameter()])
  }
}

public protocol ListProxyProtocol: List, Java.CollectionProxyProtocol {}

public extension ListProxyProtocol {
  func size() -> Int32 {
    self.javaObject.call(method: List__method__0, [])
  }

  func isEmpty() -> Bool {
    self.javaObject.call(method: List__method__1, [])
  }

  func contains(o: Object?) -> Bool {
    self.javaObject.call(method: List__method__2, [o.toJavaParameter()])
  }

  func iterator<R>() -> R? where R: Java.Iterator, R.E == E {
    self.javaObject.call(method: List__method__3, [])
  }

  func toArray() -> [Object?] {
    self.javaObject.call(method: List__method__4, [])
  }

  func toArray<T>(a: [T?]) -> [T?] where T: Object {
    self.javaObject.call(method: List__method__5, [a.toJavaParameter()])
  }

  func add(e: E?) -> Bool {
    self.javaObject.call(method: List__method__6, [e.toJavaParameter()])
  }

  func remove(o: Object?) -> Bool {
    self.javaObject.call(method: List__method__7, [o.toJavaParameter()])
  }

  func containsAll<T0, T1>(c: T1?) -> Bool where T0: Object, T1: Java.Collection, T1.E == T0 {
    self.javaObject.call(method: List__method__8, [c.toJavaParameter()])
  }

  func addAll<T0, T1>(c: T1?) -> Bool where T0: Object, T1: Java.Collection, T1.E == T0 {
    self.javaObject.call(method: List__method__9, [c.toJavaParameter()])
  }

  func addAll<T0, T1>(index: Int32, c: T1?) -> Bool where T0: Object, T1: Java.Collection, T1.E == T0 {
    self.javaObject.call(method: List__method__10, [index.toJavaParameter(), c.toJavaParameter()])
  }

  func removeAll<T0, T1>(c: T1?) -> Bool where T0: Object, T1: Java.Collection, T1.E == T0 {
    self.javaObject.call(method: List__method__11, [c.toJavaParameter()])
  }

  func retainAll<T0, T1>(c: T1?) -> Bool where T0: Object, T1: Java.Collection, T1.E == T0 {
    self.javaObject.call(method: List__method__12, [c.toJavaParameter()])
  }

  func clear() {
    self.javaObject.call(method: List__method__13, [])
  }

  func get(index: Int32) -> E? {
    self.javaObject.call(method: List__method__14, [index.toJavaParameter()])
  }

  func set(index: Int32, element: E?) -> E? {
    self.javaObject.call(method: List__method__15, [index.toJavaParameter(), element.toJavaParameter()])
  }

  func add(index: Int32, element: E?) {
    self.javaObject.call(method: List__method__16, [index.toJavaParameter(), element.toJavaParameter()])
  }

  func remove(index: Int32) -> E? {
    self.javaObject.call(method: List__method__17, [index.toJavaParameter()])
  }

  func indexOf(o: Object?) -> Int32 {
    self.javaObject.call(method: List__method__18, [o.toJavaParameter()])
  }

  func lastIndexOf(o: Object?) -> Int32 {
    self.javaObject.call(method: List__method__19, [o.toJavaParameter()])
  }

  func subList<R>(fromIndex: Int32, toIndex: Int32) -> R? where R: List, R.E == E {
    self.javaObject.call(method: List__method__20, [fromIndex.toJavaParameter(), toIndex.toJavaParameter()])
  }
}

public final class ListProxy<E: JObjectConvertible>: Object, JInterfaceProxy, ListProxyProtocol {
  public typealias Proto = List

  public typealias T = E

  override public class var javaClass: JClass {
    List__class
  }

  fileprivate convenience init<P: List>(_ obj: P) where P.E == E {
    self.init(obj.toJavaObject()!)
  }
}

// ------------------------------------------------------------------------------------

private let List__class = findJavaClass(fqn: "java/util/List")!

private let List__method__0 = List__class.getMethodID(name: "size", sig: "()I")!
private let List__method__1 = List__class.getMethodID(name: "isEmpty", sig: "()Z")!
private let List__method__2 = List__class.getMethodID(name: "contains", sig: "(Ljava/lang/Object;)Z")!
private let List__method__3 = List__class.getMethodID(name: "iterator", sig: "()Ljava/util/Iterator;")!
private let List__method__4 = List__class.getMethodID(name: "toArray", sig: "()[Ljava/lang/Object;")!
private let List__method__5 = List__class.getMethodID(name: "toArray", sig: "([Ljava/lang/Object;)[Ljava/lang/Object;")!
private let List__method__6 = List__class.getMethodID(name: "add", sig: "(Ljava/lang/Object;)Z")!
private let List__method__7 = List__class.getMethodID(name: "remove", sig: "(Ljava/lang/Object;)Z")!
private let List__method__8 = List__class.getMethodID(name: "containsAll", sig: "(Ljava/util/Collection;)Z")!
private let List__method__9 = List__class.getMethodID(name: "addAll", sig: "(Ljava/util/Collection;)Z")!
private let List__method__10 = List__class.getMethodID(name: "addAll", sig: "(ILjava/util/Collection;)Z")!
private let List__method__11 = List__class.getMethodID(name: "removeAll", sig: "(Ljava/util/Collection;)Z")!
private let List__method__12 = List__class.getMethodID(name: "retainAll", sig: "(Ljava/util/Collection;)Z")!
private let List__method__13 = List__class.getMethodID(name: "clear", sig: "()V")!
private let List__method__14 = List__class.getMethodID(name: "get", sig: "(I)Ljava/lang/Object;")!
private let List__method__15 = List__class.getMethodID(name: "set", sig: "(ILjava/lang/Object;)Ljava/lang/Object;")!
private let List__method__16 = List__class.getMethodID(name: "add", sig: "(ILjava/lang/Object;)V")!
private let List__method__17 = List__class.getMethodID(name: "remove", sig: "(I)Ljava/lang/Object;")!
private let List__method__18 = List__class.getMethodID(name: "indexOf", sig: "(Ljava/lang/Object;)I")!
private let List__method__19 = List__class.getMethodID(name: "lastIndexOf", sig: "(Ljava/lang/Object;)I")!
private let List__method__20 = List__class.getMethodID(name: "subList", sig: "(II)Ljava/util/List;")!
