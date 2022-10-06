

public protocol Buffer where Self: Object {
  func isReadOnly() -> Bool

  func hasArray() -> Bool

  func array() -> Object?

  func arrayOffset() -> Int32

  func isDirect() -> Bool
}

public extension Buffer {
  func box() -> BufferProxy {
    BufferProxy(self)
  }
}

public extension Buffer where Self: Object {
  func capacity() -> Int32 {
    self.javaObject.call(method: Buffer__method__0, [])
  }

  func position() -> Int32 {
    self.javaObject.call(method: Buffer__method__1, [])
  }

  func position(newPosition: Int32) -> Buffer? {
    let res = self.javaObject.call(method: Buffer__method__2, [newPosition.toJavaParameter()]) as Object?
    return cast(res, to: BufferProxy.self)
  }

  func limit() -> Int32 {
    self.javaObject.call(method: Buffer__method__3, [])
  }

  func limit(newLimit: Int32) -> Buffer? {
    let res = self.javaObject.call(method: Buffer__method__4, [newLimit.toJavaParameter()]) as Object?
    return cast(res, to: BufferProxy.self)
  }

  func mark() -> Buffer? {
    let res = self.javaObject.call(method: Buffer__method__5, []) as Object?
    return cast(res, to: BufferProxy.self)
  }

  func reset() -> Buffer? {
    let res = self.javaObject.call(method: Buffer__method__6, []) as Object?
    return cast(res, to: BufferProxy.self)
  }

  func clear() -> Buffer? {
    let res = self.javaObject.call(method: Buffer__method__7, []) as Object?
    return cast(res, to: BufferProxy.self)
  }

  func flip() -> Buffer? {
    let res = self.javaObject.call(method: Buffer__method__8, []) as Object?
    return cast(res, to: BufferProxy.self)
  }

  func rewind() -> Buffer? {
    let res = self.javaObject.call(method: Buffer__method__9, []) as Object?
    return cast(res, to: BufferProxy.self)
  }

  func remaining() -> Int32 {
    self.javaObject.call(method: Buffer__method__10, [])
  }

  func hasRemaining() -> Bool {
    self.javaObject.call(method: Buffer__method__11, [])
  }
}

open class BufferProxy: Object, JInterfaceProxy, Buffer {
  public typealias Proto = Buffer

  override open class var javaClass: JClass {
    Buffer__class
  }

  fileprivate convenience init<P: Buffer>(_ obj: P) {
    self.init(obj.toJavaObject()!)
  }

  open func isReadOnly() -> Bool {
    self.javaObject.call(method: Buffer__method__12, [])
  }

  open func hasArray() -> Bool {
    self.javaObject.call(method: Buffer__method__13, [])
  }

  open func array() -> Object? {
    self.javaObject.call(method: Buffer__method__14, [])
  }

  open func arrayOffset() -> Int32 {
    self.javaObject.call(method: Buffer__method__15, [])
  }

  open func isDirect() -> Bool {
    self.javaObject.call(method: Buffer__method__16, [])
  }
}

// ------------------------------------------------------------------------------------

private let Buffer__class = findJavaClass(fqn: "java/nio/Buffer")!

private let Buffer__method__0 = Buffer__class.getMethodID(name: "capacity", sig: "()I")!
private let Buffer__method__1 = Buffer__class.getMethodID(name: "position", sig: "()I")!
private let Buffer__method__2 = Buffer__class.getMethodID(name: "position", sig: "(I)Ljava/nio/Buffer;")!
private let Buffer__method__3 = Buffer__class.getMethodID(name: "limit", sig: "()I")!
private let Buffer__method__4 = Buffer__class.getMethodID(name: "limit", sig: "(I)Ljava/nio/Buffer;")!
private let Buffer__method__5 = Buffer__class.getMethodID(name: "mark", sig: "()Ljava/nio/Buffer;")!
private let Buffer__method__6 = Buffer__class.getMethodID(name: "reset", sig: "()Ljava/nio/Buffer;")!
private let Buffer__method__7 = Buffer__class.getMethodID(name: "clear", sig: "()Ljava/nio/Buffer;")!
private let Buffer__method__8 = Buffer__class.getMethodID(name: "flip", sig: "()Ljava/nio/Buffer;")!
private let Buffer__method__9 = Buffer__class.getMethodID(name: "rewind", sig: "()Ljava/nio/Buffer;")!
private let Buffer__method__10 = Buffer__class.getMethodID(name: "remaining", sig: "()I")!
private let Buffer__method__11 = Buffer__class.getMethodID(name: "hasRemaining", sig: "()Z")!
private let Buffer__method__12 = Buffer__class.getMethodID(name: "isReadOnly", sig: "()Z")!
private let Buffer__method__13 = Buffer__class.getMethodID(name: "hasArray", sig: "()Z")!
private let Buffer__method__14 = Buffer__class.getMethodID(name: "array", sig: "()Ljava/lang/Object;")!
private let Buffer__method__15 = Buffer__class.getMethodID(name: "arrayOffset", sig: "()I")!
private let Buffer__method__16 = Buffer__class.getMethodID(name: "isDirect", sig: "()Z")!
