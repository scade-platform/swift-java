

open class Object: ObjectBase {
  public init() {
    super.init(ctor: Object__method__0, [])
  }

  public func getClass<T0>() -> Class<T0>? where T0: Object {
    self.javaObject.call(method: Object__method__1, [])
  }

  open func hashCode() -> Int32 {
    self.javaObject.call(method: Object__method__2, [])
  }

  open func equals(obj: Object?) -> Bool {
    self.javaObject.call(method: Object__method__3, [obj.toJavaParameter()])
  }

  open func clone() -> Object? {
    self.javaObject.call(method: Object__method__4, [])
  }

  open func toString() -> String {
    self.javaObject.call(method: Object__method__5, [])
  }

  public func notify() {
    self.javaObject.call(method: Object__method__6, [])
  }

  public func notifyAll() {
    self.javaObject.call(method: Object__method__7, [])
  }

  public func wait(millis: Int64) {
    self.javaObject.call(method: Object__method__8, [millis.toJavaParameter()])
  }

  public func wait(millis: Int64, nanos: Int32) {
    self.javaObject.call(method: Object__method__9, [millis.toJavaParameter(), nanos.toJavaParameter()])
  }

  public func wait() {
    self.javaObject.call(method: Object__method__10, [])
  }

  open func finalize() {
    self.javaObject.call(method: Object__method__11, [])
  }

  public required init(_ obj: JavaObject) {
    super.init(obj)
  }

  public required init(ctor: JavaMethodID, _ args: [JavaParameter]) {
    super.init(ctor: ctor, args)
  }
}

// ------------------------------------------------------------------------------------

private let Object__class = findJavaClass(fqn: "java/lang/Object")!

private let Object__method__0 = Object__class.getMethodID(name: "<init>", sig: "()V")!
private let Object__method__1 = Object__class.getMethodID(name: "getClass", sig: "()Ljava/lang/Class;")!
private let Object__method__2 = Object__class.getMethodID(name: "hashCode", sig: "()I")!
private let Object__method__3 = Object__class.getMethodID(name: "equals", sig: "(Ljava/lang/Object;)Z")!
private let Object__method__4 = Object__class.getMethodID(name: "clone", sig: "()Ljava/lang/Object;")!
private let Object__method__5 = Object__class.getMethodID(name: "toString", sig: "()Ljava/lang/String;")!
private let Object__method__6 = Object__class.getMethodID(name: "notify", sig: "()V")!
private let Object__method__7 = Object__class.getMethodID(name: "notifyAll", sig: "()V")!
private let Object__method__8 = Object__class.getMethodID(name: "wait", sig: "(J)V")!
private let Object__method__9 = Object__class.getMethodID(name: "wait", sig: "(JI)V")!
private let Object__method__10 = Object__class.getMethodID(name: "wait", sig: "()V")!
private let Object__method__11 = Object__class.getMethodID(name: "finalize", sig: "()V")!
