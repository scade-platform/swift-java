

open class UUID: Object {
  public init(mostSigBits: Int64, leastSigBits: Int64) {
    super.init(ctor: UUID__method__0, [mostSigBits.toJavaParameter(), leastSigBits.toJavaParameter()])
  }

  public static func randomUUID() -> UUID? {
    UUID__class.callStatic(method: UUID__method__1, [])
  }

  public static func nameUUIDFromBytes(name: [Int8]) -> UUID? {
    UUID__class.callStatic(method: UUID__method__2, [name.toJavaParameter()])
  }

  public static func fromString(name: String) -> UUID? {
    UUID__class.callStatic(method: UUID__method__3, [name.toJavaParameter()])
  }

  open func getLeastSignificantBits() -> Int64 {
    self.javaObject.call(method: UUID__method__4, [])
  }

  open func getMostSignificantBits() -> Int64 {
    self.javaObject.call(method: UUID__method__5, [])
  }

  open func version() -> Int32 {
    self.javaObject.call(method: UUID__method__6, [])
  }

  open func variant() -> Int32 {
    self.javaObject.call(method: UUID__method__7, [])
  }

  open func timestamp() -> Int64 {
    self.javaObject.call(method: UUID__method__8, [])
  }

  open func clockSequence() -> Int32 {
    self.javaObject.call(method: UUID__method__9, [])
  }

  open func node() -> Int64 {
    self.javaObject.call(method: UUID__method__10, [])
  }

  open func compareTo(val: UUID?) -> Int32 {
    self.javaObject.call(method: UUID__method__11, [val.toJavaParameter()])
  }

  public required init(_ obj: JavaObject) {
    super.init(obj)
  }

  public required init(ctor: JavaMethodID, _ args: [JavaParameter]) {
    super.init(ctor: ctor, args)
  }
}

// ------------------------------------------------------------------------------------

private let UUID__class = findJavaClass(fqn: "java/util/UUID")!

private let UUID__method__0 = UUID__class.getMethodID(name: "<init>", sig: "(JJ)V")!
private let UUID__method__1 = UUID__class.getStaticMethodID(name: "randomUUID", sig: "()Ljava/util/UUID;")!
private let UUID__method__2 = UUID__class.getStaticMethodID(name: "nameUUIDFromBytes", sig: "([B)Ljava/util/UUID;")!
private let UUID__method__3 = UUID__class.getStaticMethodID(name: "fromString", sig: "(Ljava/lang/String;)Ljava/util/UUID;")!
private let UUID__method__4 = UUID__class.getMethodID(name: "getLeastSignificantBits", sig: "()J")!
private let UUID__method__5 = UUID__class.getMethodID(name: "getMostSignificantBits", sig: "()J")!
private let UUID__method__6 = UUID__class.getMethodID(name: "version", sig: "()I")!
private let UUID__method__7 = UUID__class.getMethodID(name: "variant", sig: "()I")!
private let UUID__method__8 = UUID__class.getMethodID(name: "timestamp", sig: "()J")!
private let UUID__method__9 = UUID__class.getMethodID(name: "clockSequence", sig: "()I")!
private let UUID__method__10 = UUID__class.getMethodID(name: "node", sig: "()J")!
private let UUID__method__11 = UUID__class.getMethodID(name: "compareTo", sig: "(Ljava/util/UUID;)I")!
