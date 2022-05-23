

open class ArrayList<E: JObjectConvertible>: Object, AbstractList, List {
  public typealias T = E

  public init(initialCapacity: Int32) {
    super.init(ctor: ArrayList__method__0, [initialCapacity.toJavaParameter()])
  }

  override public init() {
    super.init(ctor: ArrayList__method__1, [])
  }

  public init<T0, T1>(c: T1?) where T0: Object, T1: Java.Collection, T1.E == T0 {
    super.init(ctor: ArrayList__method__2, [c.toJavaParameter()])
  }

  open func trimToSize() {
    self.javaObject.call(method: ArrayList__method__3, [])
  }

  open func ensureCapacity(minCapacity: Int32) {
    self.javaObject.call(method: ArrayList__method__4, [minCapacity.toJavaParameter()])
  }

  open func size() -> Int32 {
    self.javaObject.call(method: ArrayList__method__5, [])
  }

  open func get(index: Int32) -> E? {
    self.javaObject.call(method: ArrayList__method__6, [index.toJavaParameter()])
  }

  public required init(_ obj: JavaObject) {
    super.init(obj)
  }

  public required init(ctor: JavaMethodID, _ args: [JavaParameter]) {
    super.init(ctor: ctor, args)
  }
}

// ------------------------------------------------------------------------------------

private let ArrayList__class = findJavaClass(fqn: "java/util/ArrayList")!

private let ArrayList__method__0 = ArrayList__class.getMethodID(name: "<init>", sig: "(I)V")!
private let ArrayList__method__1 = ArrayList__class.getMethodID(name: "<init>", sig: "()V")!
private let ArrayList__method__2 = ArrayList__class.getMethodID(name: "<init>", sig: "(Ljava/util/Collection;)V")!
private let ArrayList__method__3 = ArrayList__class.getMethodID(name: "trimToSize", sig: "()V")!
private let ArrayList__method__4 = ArrayList__class.getMethodID(name: "ensureCapacity", sig: "(I)V")!
private let ArrayList__method__5 = ArrayList__class.getMethodID(name: "size", sig: "()I")!
private let ArrayList__method__6 = ArrayList__class.getMethodID(name: "get", sig: "(I)Ljava/lang/Object;")!
