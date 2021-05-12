

open class UUID: Object {
  public init(mostSigBits: Int64, leastSigBits: Int64) {
    super.init(ctor: UUID__method__0, [mostSigBits.toJavaParameter(), leastSigBits.toJavaParameter()])
  }

  public static func randomUUID() -> UUID? {
    return UUID__class.callStatic(method: UUID__method__1, [])
  }

  public static func nameUUIDFromBytes(name: [Int8]) -> UUID? {
    return UUID__class.callStatic(method: UUID__method__2, [name.toJavaParameter()])
  }

  public static func fromString(name: String) -> UUID? {
    return UUID__class.callStatic(method: UUID__method__3, [name.toJavaParameter()])
  }

  public func getLeastSignificantBits() -> Int64 {
    return self.javaObject.call(method: UUID__method__4, [])
  }

  public func getMostSignificantBits() -> Int64 {
    return self.javaObject.call(method: UUID__method__5, [])
  }

  public func version() -> Int32 {
    return self.javaObject.call(method: UUID__method__6, [])
  }

  public func variant() -> Int32 {
    return self.javaObject.call(method: UUID__method__7, [])
  }

  public func timestamp() -> Int64 {
    return self.javaObject.call(method: UUID__method__8, [])
  }

  public func clockSequence() -> Int32 {
    return self.javaObject.call(method: UUID__method__9, [])
  }

  public func node() -> Int64 {
    return self.javaObject.call(method: UUID__method__10, [])
  }

  public func compareTo(o: UUID?) -> Int32 {
    return self.javaObject.call(method: UUID__method__11, [o.toJavaParameter()])
  }

  public required init(_ obj: JavaObject) {
    super.init(obj)
  }

  public required init(ctor: JavaMethodID, _ args: [JavaParameter]) {
    super.init(ctor: ctor, args)
  }
}

// ------------------------------------------------------------------------------------

fileprivate let UUID__class = findJavaClass(fqn: "java/util/UUID")!

fileprivate let UUID__method__0 = UUID__class.getMethodID(name: "<init>", sig: "(JJ)V")!
fileprivate let UUID__method__1 = UUID__class.getStaticMethodID(name: "randomUUID", sig: "()Ljava/util/UUID;")!
fileprivate let UUID__method__2 = UUID__class.getStaticMethodID(name: "nameUUIDFromBytes", sig: "([B)Ljava/util/UUID;")!
fileprivate let UUID__method__3 = UUID__class.getStaticMethodID(name: "fromString", sig: "(Ljava/lang/String;)Ljava/util/UUID;")!
fileprivate let UUID__method__4 = UUID__class.getMethodID(name: "getLeastSignificantBits", sig: "()J")!
fileprivate let UUID__method__5 = UUID__class.getMethodID(name: "getMostSignificantBits", sig: "()J")!
fileprivate let UUID__method__6 = UUID__class.getMethodID(name: "version", sig: "()I")!
fileprivate let UUID__method__7 = UUID__class.getMethodID(name: "variant", sig: "()I")!
fileprivate let UUID__method__8 = UUID__class.getMethodID(name: "timestamp", sig: "()J")!
fileprivate let UUID__method__9 = UUID__class.getMethodID(name: "clockSequence", sig: "()I")!
fileprivate let UUID__method__10 = UUID__class.getMethodID(name: "node", sig: "()J")!
fileprivate let UUID__method__11 = UUID__class.getMethodID(name: "compareTo", sig: "(Ljava/util/UUID;)I")!
