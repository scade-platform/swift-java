

open class HashMap<K: JObjectConvertible, V: JObjectConvertible>: Object, AbstractMap, Map {
  public init(initialCapacity: Int32, loadFactor: Float) {
    super.init(ctor: HashMap__method__0, [initialCapacity.toJavaParameter(), loadFactor.toJavaParameter()])
  }

  public init(initialCapacity: Int32) {
    super.init(ctor: HashMap__method__1, [initialCapacity.toJavaParameter()])
  }

  override public init() {
    super.init(ctor: HashMap__method__2, [])
  }

  public init<T0, T1, T2>(m: T2?) where T0: Object, T1: Object, T2: Map, T2.K == T0, T2.V == T1 {
    super.init(ctor: HashMap__method__3, [m.toJavaParameter()])
  }

  open func replace(key: K?, oldValue: V?, newValue: V?) -> Bool {
    self.javaObject.call(method: HashMap__method__4, [key.toJavaParameter(), oldValue.toJavaParameter(), newValue.toJavaParameter()])
  }

  public required init(_ obj: JavaObject) {
    super.init(obj)
  }

  public required init(ctor: JavaMethodID, _ args: [JavaParameter]) {
    super.init(ctor: ctor, args)
  }
}

// ------------------------------------------------------------------------------------

private let HashMap__class = findJavaClass(fqn: "java/util/HashMap")!

private let HashMap__method__0 = HashMap__class.getMethodID(name: "<init>", sig: "(IF)V")!
private let HashMap__method__1 = HashMap__class.getMethodID(name: "<init>", sig: "(I)V")!
private let HashMap__method__2 = HashMap__class.getMethodID(name: "<init>", sig: "()V")!
private let HashMap__method__3 = HashMap__class.getMethodID(name: "<init>", sig: "(Ljava/util/Map;)V")!
private let HashMap__method__4 = HashMap__class.getMethodID(name: "replace", sig: "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z")!
