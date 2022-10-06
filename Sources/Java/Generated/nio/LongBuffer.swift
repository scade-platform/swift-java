

public protocol LongBuffer: Buffer {
  func slice() -> LongBuffer?

  func duplicate() -> LongBuffer?

  func asReadOnlyBuffer() -> LongBuffer?

  func get() -> Int64

  func put(l: Int64) -> LongBuffer?

  func get(index: Int32) -> Int64

  func put(index: Int32, l: Int64) -> LongBuffer?

  func compact() -> LongBuffer?
}

public extension LongBuffer {
  func box() -> LongBufferProxy {
    LongBufferProxy(self)
  }
}

public extension LongBuffer where Self: Object {
  func get(dst: [Int64], offset: Int32, length: Int32) -> LongBuffer? {
    let res = self.javaObject.call(method: LongBuffer__method__10, [dst.toJavaParameter(), offset.toJavaParameter(), length.toJavaParameter()]) as Object?
    return cast(res, to: LongBufferProxy.self) as! LongBuffer?
  }

  func get(dst: [Int64]) -> LongBuffer? {
    let res = self.javaObject.call(method: LongBuffer__method__11, [dst.toJavaParameter()]) as Object?
    return cast(res, to: LongBufferProxy.self) as! LongBuffer?
  }

  func put(src: LongBuffer?) -> LongBuffer? {
    let res = self.javaObject.call(method: LongBuffer__method__12, [JavaParameter(object: src?.toJavaObject())]) as Object?
    return cast(res, to: LongBufferProxy.self) as! LongBuffer?
  }

  func put(src: [Int64], offset: Int32, length: Int32) -> LongBuffer? {
    let res = self.javaObject.call(method: LongBuffer__method__13, [src.toJavaParameter(), offset.toJavaParameter(), length.toJavaParameter()]) as Object?
    return cast(res, to: LongBufferProxy.self) as! LongBuffer?
  }

  func put(src: [Int64]) -> LongBuffer? {
    let res = self.javaObject.call(method: LongBuffer__method__14, [src.toJavaParameter()]) as Object?
    return cast(res, to: LongBufferProxy.self) as! LongBuffer?
  }

  func hasArray() -> Bool {
    self.javaObject.call(method: LongBuffer__method__15, [])
  }

  func array() -> [Int64] {
    self.javaObject.call(method: LongBuffer__method__16, [])
  }

  func arrayOffset() -> Int32 {
    self.javaObject.call(method: LongBuffer__method__17, [])
  }

  func compareTo(that: LongBuffer?) -> Int32 {
    self.javaObject.call(method: LongBuffer__method__20, [JavaParameter(object: that?.toJavaObject())])
  }
}

public final class LongBufferStatic {
  public static func allocate(capacity: Int32) -> LongBuffer? {
    let res = LongBuffer__class.callStatic(method: LongBuffer__method__0, [capacity.toJavaParameter()]) as Object?
    return cast(res, to: LongBufferProxy.self) as! LongBuffer?
  }

  public static func wrap(array: [Int64], offset: Int32, length: Int32) -> LongBuffer? {
    let res = LongBuffer__class.callStatic(method: LongBuffer__method__1, [array.toJavaParameter(), offset.toJavaParameter(), length.toJavaParameter()]) as Object?
    return cast(res, to: LongBufferProxy.self) as! LongBuffer?
  }

  public static func wrap(array: [Int64]) -> LongBuffer? {
    let res = LongBuffer__class.callStatic(method: LongBuffer__method__2, [array.toJavaParameter()]) as Object?
    return cast(res, to: LongBufferProxy.self) as! LongBuffer?
  }
}

open class LongBufferProxy: BufferProxy, LongBuffer {
  public typealias Proto = LongBuffer

  override open class var javaClass: JClass {
    LongBuffer__class
  }

  fileprivate convenience init<P: LongBuffer>(_ obj: P) {
    self.init(obj.toJavaObject()!)
  }

  open func slice() -> LongBuffer? {
    let res = self.javaObject.call(method: LongBuffer__method__3, []) as Object?
    return cast(res, to: LongBufferProxy.self) as! LongBuffer?
  }

  open func duplicate() -> LongBuffer? {
    let res = self.javaObject.call(method: LongBuffer__method__4, []) as Object?
    return cast(res, to: LongBufferProxy.self) as! LongBuffer?
  }

  open func asReadOnlyBuffer() -> LongBuffer? {
    let res = self.javaObject.call(method: LongBuffer__method__5, []) as Object?
    return cast(res, to: LongBufferProxy.self) as! LongBuffer?
  }

  open func get() -> Int64 {
    self.javaObject.call(method: LongBuffer__method__6, [])
  }

  open func put(l: Int64) -> LongBuffer? {
    let res = self.javaObject.call(method: LongBuffer__method__7, [l.toJavaParameter()]) as Object?
    return cast(res, to: LongBufferProxy.self) as! LongBuffer?
  }

  open func get(index: Int32) -> Int64 {
    self.javaObject.call(method: LongBuffer__method__8, [index.toJavaParameter()])
  }

  open func put(index: Int32, l: Int64) -> LongBuffer? {
    let res = self.javaObject.call(method: LongBuffer__method__9, [index.toJavaParameter(), l.toJavaParameter()]) as Object?
    return cast(res, to: LongBufferProxy.self) as! LongBuffer?
  }

  open func compact() -> LongBuffer? {
    let res = self.javaObject.call(method: LongBuffer__method__18, []) as Object?
    return cast(res, to: LongBufferProxy.self) as! LongBuffer?
  }
}

// ------------------------------------------------------------------------------------

private let LongBuffer__class = findJavaClass(fqn: "java/nio/LongBuffer")!

private let LongBuffer__method__0 = LongBuffer__class.getStaticMethodID(name: "allocate", sig: "(I)Ljava/nio/LongBuffer;")!
private let LongBuffer__method__1 = LongBuffer__class.getStaticMethodID(name: "wrap", sig: "([JII)Ljava/nio/LongBuffer;")!
private let LongBuffer__method__2 = LongBuffer__class.getStaticMethodID(name: "wrap", sig: "([J)Ljava/nio/LongBuffer;")!
private let LongBuffer__method__3 = LongBuffer__class.getMethodID(name: "slice", sig: "()Ljava/nio/LongBuffer;")!
private let LongBuffer__method__4 = LongBuffer__class.getMethodID(name: "duplicate", sig: "()Ljava/nio/LongBuffer;")!
private let LongBuffer__method__5 = LongBuffer__class.getMethodID(name: "asReadOnlyBuffer", sig: "()Ljava/nio/LongBuffer;")!
private let LongBuffer__method__6 = LongBuffer__class.getMethodID(name: "get", sig: "()J")!
private let LongBuffer__method__7 = LongBuffer__class.getMethodID(name: "put", sig: "(J)Ljava/nio/LongBuffer;")!
private let LongBuffer__method__8 = LongBuffer__class.getMethodID(name: "get", sig: "(I)J")!
private let LongBuffer__method__9 = LongBuffer__class.getMethodID(name: "put", sig: "(IJ)Ljava/nio/LongBuffer;")!
private let LongBuffer__method__10 = LongBuffer__class.getMethodID(name: "get", sig: "([JII)Ljava/nio/LongBuffer;")!
private let LongBuffer__method__11 = LongBuffer__class.getMethodID(name: "get", sig: "([J)Ljava/nio/LongBuffer;")!
private let LongBuffer__method__12 = LongBuffer__class.getMethodID(name: "put", sig: "(Ljava/nio/LongBuffer;)Ljava/nio/LongBuffer;")!
private let LongBuffer__method__13 = LongBuffer__class.getMethodID(name: "put", sig: "([JII)Ljava/nio/LongBuffer;")!
private let LongBuffer__method__14 = LongBuffer__class.getMethodID(name: "put", sig: "([J)Ljava/nio/LongBuffer;")!
private let LongBuffer__method__15 = LongBuffer__class.getMethodID(name: "hasArray", sig: "()Z")!
private let LongBuffer__method__16 = LongBuffer__class.getMethodID(name: "array", sig: "()[J")!
private let LongBuffer__method__17 = LongBuffer__class.getMethodID(name: "arrayOffset", sig: "()I")!
private let LongBuffer__method__18 = LongBuffer__class.getMethodID(name: "compact", sig: "()Ljava/nio/LongBuffer;")!
private let LongBuffer__method__19 = LongBuffer__class.getMethodID(name: "isDirect", sig: "()Z")!
private let LongBuffer__method__20 = LongBuffer__class.getMethodID(name: "compareTo", sig: "(Ljava/nio/LongBuffer;)I")!
