

public protocol DoubleBuffer: Buffer {
  func slice() -> DoubleBuffer?

  func duplicate() -> DoubleBuffer?

  func asReadOnlyBuffer() -> DoubleBuffer?

  func get() -> Double

  func put(d: Double) -> DoubleBuffer?

  func get(index: Int32) -> Double

  func put(index: Int32, d: Double) -> DoubleBuffer?

  func compact() -> DoubleBuffer?
}

public extension DoubleBuffer {
  func box() -> DoubleBufferProxy {
    DoubleBufferProxy(self)
  }
}

public extension DoubleBuffer where Self: Object {
  func get(dst: [Double], offset: Int32, length: Int32) -> DoubleBuffer? {
    let res = self.javaObject.call(method: DoubleBuffer__method__10, [dst.toJavaParameter(), offset.toJavaParameter(), length.toJavaParameter()]) as Object?
    return cast(res, to: DoubleBufferProxy.self) as! DoubleBuffer?
  }

  func get(dst: [Double]) -> DoubleBuffer? {
    let res = self.javaObject.call(method: DoubleBuffer__method__11, [dst.toJavaParameter()]) as Object?
    return cast(res, to: DoubleBufferProxy.self) as! DoubleBuffer?
  }

  func put(src: DoubleBuffer?) -> DoubleBuffer? {
    let res = self.javaObject.call(method: DoubleBuffer__method__12, [JavaParameter(object: src?.toJavaObject())]) as Object?
    return cast(res, to: DoubleBufferProxy.self) as! DoubleBuffer?
  }

  func put(src: [Double], offset: Int32, length: Int32) -> DoubleBuffer? {
    let res = self.javaObject.call(method: DoubleBuffer__method__13, [src.toJavaParameter(), offset.toJavaParameter(), length.toJavaParameter()]) as Object?
    return cast(res, to: DoubleBufferProxy.self) as! DoubleBuffer?
  }

  func put(src: [Double]) -> DoubleBuffer? {
    let res = self.javaObject.call(method: DoubleBuffer__method__14, [src.toJavaParameter()]) as Object?
    return cast(res, to: DoubleBufferProxy.self) as! DoubleBuffer?
  }

  func hasArray() -> Bool {
    self.javaObject.call(method: DoubleBuffer__method__15, [])
  }

  func array() -> [Double] {
    self.javaObject.call(method: DoubleBuffer__method__16, [])
  }

  func arrayOffset() -> Int32 {
    self.javaObject.call(method: DoubleBuffer__method__17, [])
  }

  func compareTo(that: DoubleBuffer?) -> Int32 {
    self.javaObject.call(method: DoubleBuffer__method__20, [JavaParameter(object: that?.toJavaObject())])
  }
}

public final class DoubleBufferStatic {
  public static func allocate(capacity: Int32) -> DoubleBuffer? {
    let res = DoubleBuffer__class.callStatic(method: DoubleBuffer__method__0, [capacity.toJavaParameter()]) as Object?
    return cast(res, to: DoubleBufferProxy.self) as! DoubleBuffer?
  }

  public static func wrap(array: [Double], offset: Int32, length: Int32) -> DoubleBuffer? {
    let res = DoubleBuffer__class.callStatic(method: DoubleBuffer__method__1, [array.toJavaParameter(), offset.toJavaParameter(), length.toJavaParameter()]) as Object?
    return cast(res, to: DoubleBufferProxy.self) as! DoubleBuffer?
  }

  public static func wrap(array: [Double]) -> DoubleBuffer? {
    let res = DoubleBuffer__class.callStatic(method: DoubleBuffer__method__2, [array.toJavaParameter()]) as Object?
    return cast(res, to: DoubleBufferProxy.self) as! DoubleBuffer?
  }
}

open class DoubleBufferProxy: BufferProxy, DoubleBuffer {
  public typealias Proto = DoubleBuffer

  override open class var javaClass: JClass {
    DoubleBuffer__class
  }

  fileprivate convenience init<P: DoubleBuffer>(_ obj: P) {
    self.init(obj.toJavaObject()!)
  }

  open func slice() -> DoubleBuffer? {
    let res = self.javaObject.call(method: DoubleBuffer__method__3, []) as Object?
    return cast(res, to: DoubleBufferProxy.self) as! DoubleBuffer?
  }

  open func duplicate() -> DoubleBuffer? {
    let res = self.javaObject.call(method: DoubleBuffer__method__4, []) as Object?
    return cast(res, to: DoubleBufferProxy.self) as! DoubleBuffer?
  }

  open func asReadOnlyBuffer() -> DoubleBuffer? {
    let res = self.javaObject.call(method: DoubleBuffer__method__5, []) as Object?
    return cast(res, to: DoubleBufferProxy.self) as! DoubleBuffer?
  }

  open func get() -> Double {
    self.javaObject.call(method: DoubleBuffer__method__6, [])
  }

  open func put(d: Double) -> DoubleBuffer? {
    let res = self.javaObject.call(method: DoubleBuffer__method__7, [d.toJavaParameter()]) as Object?
    return cast(res, to: DoubleBufferProxy.self) as! DoubleBuffer?
  }

  open func get(index: Int32) -> Double {
    self.javaObject.call(method: DoubleBuffer__method__8, [index.toJavaParameter()])
  }

  open func put(index: Int32, d: Double) -> DoubleBuffer? {
    let res = self.javaObject.call(method: DoubleBuffer__method__9, [index.toJavaParameter(), d.toJavaParameter()]) as Object?
    return cast(res, to: DoubleBufferProxy.self) as! DoubleBuffer?
  }

  open func compact() -> DoubleBuffer? {
    let res = self.javaObject.call(method: DoubleBuffer__method__18, []) as Object?
    return cast(res, to: DoubleBufferProxy.self) as! DoubleBuffer?
  }
}

// ------------------------------------------------------------------------------------

private let DoubleBuffer__class = findJavaClass(fqn: "java/nio/DoubleBuffer")!

private let DoubleBuffer__method__0 = DoubleBuffer__class.getStaticMethodID(name: "allocate", sig: "(I)Ljava/nio/DoubleBuffer;")!
private let DoubleBuffer__method__1 = DoubleBuffer__class.getStaticMethodID(name: "wrap", sig: "([DII)Ljava/nio/DoubleBuffer;")!
private let DoubleBuffer__method__2 = DoubleBuffer__class.getStaticMethodID(name: "wrap", sig: "([D)Ljava/nio/DoubleBuffer;")!
private let DoubleBuffer__method__3 = DoubleBuffer__class.getMethodID(name: "slice", sig: "()Ljava/nio/DoubleBuffer;")!
private let DoubleBuffer__method__4 = DoubleBuffer__class.getMethodID(name: "duplicate", sig: "()Ljava/nio/DoubleBuffer;")!
private let DoubleBuffer__method__5 = DoubleBuffer__class.getMethodID(name: "asReadOnlyBuffer", sig: "()Ljava/nio/DoubleBuffer;")!
private let DoubleBuffer__method__6 = DoubleBuffer__class.getMethodID(name: "get", sig: "()D")!
private let DoubleBuffer__method__7 = DoubleBuffer__class.getMethodID(name: "put", sig: "(D)Ljava/nio/DoubleBuffer;")!
private let DoubleBuffer__method__8 = DoubleBuffer__class.getMethodID(name: "get", sig: "(I)D")!
private let DoubleBuffer__method__9 = DoubleBuffer__class.getMethodID(name: "put", sig: "(ID)Ljava/nio/DoubleBuffer;")!
private let DoubleBuffer__method__10 = DoubleBuffer__class.getMethodID(name: "get", sig: "([DII)Ljava/nio/DoubleBuffer;")!
private let DoubleBuffer__method__11 = DoubleBuffer__class.getMethodID(name: "get", sig: "([D)Ljava/nio/DoubleBuffer;")!
private let DoubleBuffer__method__12 = DoubleBuffer__class.getMethodID(name: "put", sig: "(Ljava/nio/DoubleBuffer;)Ljava/nio/DoubleBuffer;")!
private let DoubleBuffer__method__13 = DoubleBuffer__class.getMethodID(name: "put", sig: "([DII)Ljava/nio/DoubleBuffer;")!
private let DoubleBuffer__method__14 = DoubleBuffer__class.getMethodID(name: "put", sig: "([D)Ljava/nio/DoubleBuffer;")!
private let DoubleBuffer__method__15 = DoubleBuffer__class.getMethodID(name: "hasArray", sig: "()Z")!
private let DoubleBuffer__method__16 = DoubleBuffer__class.getMethodID(name: "array", sig: "()[D")!
private let DoubleBuffer__method__17 = DoubleBuffer__class.getMethodID(name: "arrayOffset", sig: "()I")!
private let DoubleBuffer__method__18 = DoubleBuffer__class.getMethodID(name: "compact", sig: "()Ljava/nio/DoubleBuffer;")!
private let DoubleBuffer__method__19 = DoubleBuffer__class.getMethodID(name: "isDirect", sig: "()Z")!
private let DoubleBuffer__method__20 = DoubleBuffer__class.getMethodID(name: "compareTo", sig: "(Ljava/nio/DoubleBuffer;)I")!
