

public protocol ShortBuffer: Buffer {
  func slice() -> ShortBuffer?

  func duplicate() -> ShortBuffer?

  func asReadOnlyBuffer() -> ShortBuffer?

  func get() -> Int16

  func put(s: Int16) -> ShortBuffer?

  func get(index: Int32) -> Int16

  func put(index: Int32, s: Int16) -> ShortBuffer?

  func get(dst: [Int16], offset: Int32, length: Int32) -> ShortBuffer?

  func get(dst: [Int16]) -> ShortBuffer?

  func put(src: ShortBuffer?) -> ShortBuffer?

  func put(src: [Int16], offset: Int32, length: Int32) -> ShortBuffer?

  func put(src: [Int16]) -> ShortBuffer?

  func hasArray() -> Bool

  func array() -> [Int16]

  func arrayOffset() -> Int32

  func compact() -> ShortBuffer?

  func isDirect() -> Bool

  func compareTo(that: ShortBuffer?) -> Int32
}

public extension ShortBuffer {
  func box() -> ShortBufferProxy {
    ShortBufferProxy(self)
  }
}

public extension ShortBuffer where Self: Object {
  func get(dst: [Int16], offset: Int32, length: Int32) -> ShortBuffer? {
    let res = self.javaObject.call(method: ShortBuffer__method__10, [dst.toJavaParameter(), offset.toJavaParameter(), length.toJavaParameter()]) as Object?
    return cast(res, to: ShortBufferProxy.self) as! ShortBuffer?
  }

  func get(dst: [Int16]) -> ShortBuffer? {
    let res = self.javaObject.call(method: ShortBuffer__method__11, [dst.toJavaParameter()]) as Object?
    return cast(res, to: ShortBufferProxy.self) as! ShortBuffer?
  }

  func put(src: ShortBuffer?) -> ShortBuffer? {
    let res = self.javaObject.call(method: ShortBuffer__method__12, [JavaParameter(object: src?.toJavaObject())]) as Object?
    return cast(res, to: ShortBufferProxy.self) as! ShortBuffer?
  }

  func put(src: [Int16], offset: Int32, length: Int32) -> ShortBuffer? {
    let res = self.javaObject.call(method: ShortBuffer__method__13, [src.toJavaParameter(), offset.toJavaParameter(), length.toJavaParameter()]) as Object?
    return cast(res, to: ShortBufferProxy.self) as! ShortBuffer?
  }

  func put(src: [Int16]) -> ShortBuffer? {
    let res = self.javaObject.call(method: ShortBuffer__method__14, [src.toJavaParameter()]) as Object?
    return cast(res, to: ShortBufferProxy.self) as! ShortBuffer?
  }

  func hasArray() -> Bool {
    self.javaObject.call(method: ShortBuffer__method__15, [])
  }

  func array() -> [Int16] {
    self.javaObject.call(method: ShortBuffer__method__16, [])
  }

  func arrayOffset() -> Int32 {
    self.javaObject.call(method: ShortBuffer__method__17, [])
  }

  func compareTo(that: ShortBuffer?) -> Int32 {
    self.javaObject.call(method: ShortBuffer__method__20, [JavaParameter(object: that?.toJavaObject())])
  }
}

public final class ShortBufferStatic {
  public static func allocate(capacity: Int32) -> ShortBuffer? {
    let res = ShortBuffer__class.callStatic(method: ShortBuffer__method__0, [capacity.toJavaParameter()]) as Object?
    return cast(res, to: ShortBufferProxy.self) as! ShortBuffer?
  }

  public static func wrap(array: [Int16], offset: Int32, length: Int32) -> ShortBuffer? {
    let res = ShortBuffer__class.callStatic(method: ShortBuffer__method__1, [array.toJavaParameter(), offset.toJavaParameter(), length.toJavaParameter()]) as Object?
    return cast(res, to: ShortBufferProxy.self) as! ShortBuffer?
  }

  public static func wrap(array: [Int16]) -> ShortBuffer? {
    let res = ShortBuffer__class.callStatic(method: ShortBuffer__method__2, [array.toJavaParameter()]) as Object?
    return cast(res, to: ShortBufferProxy.self) as! ShortBuffer?
  }
}

open class ShortBufferProxy: BufferProxy, ShortBuffer {
  public typealias Proto = ShortBuffer

  override open class var javaClass: JClass {
    ShortBuffer__class
  }

  fileprivate convenience init<P: ShortBuffer>(_ obj: P) {
    self.init(obj.toJavaObject()!)
  }

  open func slice() -> ShortBuffer? {
    let res = self.javaObject.call(method: ShortBuffer__method__3, []) as Object?
    return cast(res, to: ShortBufferProxy.self) as! ShortBuffer?
  }

  open func duplicate() -> ShortBuffer? {
    let res = self.javaObject.call(method: ShortBuffer__method__4, []) as Object?
    return cast(res, to: ShortBufferProxy.self) as! ShortBuffer?
  }

  open func asReadOnlyBuffer() -> ShortBuffer? {
    let res = self.javaObject.call(method: ShortBuffer__method__5, []) as Object?
    return cast(res, to: ShortBufferProxy.self) as! ShortBuffer?
  }

  open func get() -> Int16 {
    self.javaObject.call(method: ShortBuffer__method__6, [])
  }

  open func put(s: Int16) -> ShortBuffer? {
    let res = self.javaObject.call(method: ShortBuffer__method__7, [s.toJavaParameter()]) as Object?
    return cast(res, to: ShortBufferProxy.self) as! ShortBuffer?
  }

  open func get(index: Int32) -> Int16 {
    self.javaObject.call(method: ShortBuffer__method__8, [index.toJavaParameter()])
  }

  open func put(index: Int32, s: Int16) -> ShortBuffer? {
    let res = self.javaObject.call(method: ShortBuffer__method__9, [index.toJavaParameter(), s.toJavaParameter()]) as Object?
    return cast(res, to: ShortBufferProxy.self) as! ShortBuffer?
  }

  open func compact() -> ShortBuffer? {
    let res = self.javaObject.call(method: ShortBuffer__method__18, []) as Object?
    return cast(res, to: ShortBufferProxy.self) as! ShortBuffer?
  }
}

// ------------------------------------------------------------------------------------

private let ShortBuffer__class = findJavaClass(fqn: "java/nio/ShortBuffer")!

private let ShortBuffer__method__0 = ShortBuffer__class.getStaticMethodID(name: "allocate", sig: "(I)Ljava/nio/ShortBuffer;")!
private let ShortBuffer__method__1 = ShortBuffer__class.getStaticMethodID(name: "wrap", sig: "([SII)Ljava/nio/ShortBuffer;")!
private let ShortBuffer__method__2 = ShortBuffer__class.getStaticMethodID(name: "wrap", sig: "([S)Ljava/nio/ShortBuffer;")!
private let ShortBuffer__method__3 = ShortBuffer__class.getMethodID(name: "slice", sig: "()Ljava/nio/ShortBuffer;")!
private let ShortBuffer__method__4 = ShortBuffer__class.getMethodID(name: "duplicate", sig: "()Ljava/nio/ShortBuffer;")!
private let ShortBuffer__method__5 = ShortBuffer__class.getMethodID(name: "asReadOnlyBuffer", sig: "()Ljava/nio/ShortBuffer;")!
private let ShortBuffer__method__6 = ShortBuffer__class.getMethodID(name: "get", sig: "()S")!
private let ShortBuffer__method__7 = ShortBuffer__class.getMethodID(name: "put", sig: "(S)Ljava/nio/ShortBuffer;")!
private let ShortBuffer__method__8 = ShortBuffer__class.getMethodID(name: "get", sig: "(I)S")!
private let ShortBuffer__method__9 = ShortBuffer__class.getMethodID(name: "put", sig: "(IS)Ljava/nio/ShortBuffer;")!
private let ShortBuffer__method__10 = ShortBuffer__class.getMethodID(name: "get", sig: "([SII)Ljava/nio/ShortBuffer;")!
private let ShortBuffer__method__11 = ShortBuffer__class.getMethodID(name: "get", sig: "([S)Ljava/nio/ShortBuffer;")!
private let ShortBuffer__method__12 = ShortBuffer__class.getMethodID(name: "put", sig: "(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;")!
private let ShortBuffer__method__13 = ShortBuffer__class.getMethodID(name: "put", sig: "([SII)Ljava/nio/ShortBuffer;")!
private let ShortBuffer__method__14 = ShortBuffer__class.getMethodID(name: "put", sig: "([S)Ljava/nio/ShortBuffer;")!
private let ShortBuffer__method__15 = ShortBuffer__class.getMethodID(name: "hasArray", sig: "()Z")!
private let ShortBuffer__method__16 = ShortBuffer__class.getMethodID(name: "array", sig: "()[S")!
private let ShortBuffer__method__17 = ShortBuffer__class.getMethodID(name: "arrayOffset", sig: "()I")!
private let ShortBuffer__method__18 = ShortBuffer__class.getMethodID(name: "compact", sig: "()Ljava/nio/ShortBuffer;")!
private let ShortBuffer__method__19 = ShortBuffer__class.getMethodID(name: "isDirect", sig: "()Z")!
private let ShortBuffer__method__20 = ShortBuffer__class.getMethodID(name: "compareTo", sig: "(Ljava/nio/ShortBuffer;)I")!
