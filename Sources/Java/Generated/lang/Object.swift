

open class Object: ObjectBase {
  public init() {
    super.init(ctor: Object__method__0, [])
  }

  public func getClass<T0>() -> Class<T0>? where T0: Object {
    return self.javaObject.call(method: Object__method__1, [])
  }

  public func hashCode() -> Int32 {
    return self.javaObject.call(method: Object__method__2, [])
  }

  public func equals(obj: Object?) -> Bool {
    return self.javaObject.call(method: Object__method__3, [obj.toJavaParameter()])
  }

  public func toString() -> String {
    return self.javaObject.call(method: Object__method__4, [])
  }

  public func notify() {
    return self.javaObject.call(method: Object__method__5, [])
  }

  public func notifyAll() {
    return self.javaObject.call(method: Object__method__6, [])
  }

  public func wait(millis: Int64) {
    return self.javaObject.call(method: Object__method__7, [millis.toJavaParameter()])
  }

  public func wait(millis: Int64, nanos: Int32) {
    return self.javaObject.call(method: Object__method__8, [millis.toJavaParameter(), nanos.toJavaParameter()])
  }

  public func wait() {
    return self.javaObject.call(method: Object__method__9, [])
  }

  public required init(_ obj: JavaObject) {
    super.init(obj)
  }

  public required init(ctor: JavaMethodID, _ args: [JavaParameter]) {
    super.init(ctor: ctor, args)
  }
}

// ------------------------------------------------------------------------------------

fileprivate let Object__class = findJavaClass(fqn: "java/lang/Object")!

fileprivate let Object__method__0 = Object__class.getMethodID(name: "<init>", sig: "()V")!
fileprivate let Object__method__1 = Object__class.getMethodID(name: "getClass", sig: "()Ljava/lang/Class;")!
fileprivate let Object__method__2 = Object__class.getMethodID(name: "hashCode", sig: "()I")!
fileprivate let Object__method__3 = Object__class.getMethodID(name: "equals", sig: "(Ljava/lang/Object;)Z")!
fileprivate let Object__method__4 = Object__class.getMethodID(name: "toString", sig: "()Ljava/lang/String;")!
fileprivate let Object__method__5 = Object__class.getMethodID(name: "notify", sig: "()V")!
fileprivate let Object__method__6 = Object__class.getMethodID(name: "notifyAll", sig: "()V")!
fileprivate let Object__method__7 = Object__class.getMethodID(name: "wait", sig: "(J)V")!
fileprivate let Object__method__8 = Object__class.getMethodID(name: "wait", sig: "(JI)V")!
fileprivate let Object__method__9 = Object__class.getMethodID(name: "wait", sig: "()V")!
