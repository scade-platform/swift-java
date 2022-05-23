

public protocol FloatBuffer: Buffer {
  func slice() -> FloatBuffer?

  func duplicate() -> FloatBuffer?

  func asReadOnlyBuffer() -> FloatBuffer?

  func get() -> Float

  func put(f: Float) -> FloatBuffer?

  func get(index: Int32) -> Float

  func put(index: Int32, f: Float) -> FloatBuffer?

  func get(dst: [Float], offset: Int32, length: Int32) -> FloatBuffer?

  func get(dst: [Float]) -> FloatBuffer?

  func put(src: FloatBuffer?) -> FloatBuffer?

  func put(src: [Float], offset: Int32, length: Int32) -> FloatBuffer?

  func put(src: [Float]) -> FloatBuffer?

  func hasArray() -> Bool

  func array() -> [Float]

  func arrayOffset() -> Int32

  func compact() -> FloatBuffer?

  func isDirect() -> Bool

  func compareTo(that: FloatBuffer?) -> Int32
}

public extension FloatBuffer {
  func box() -> FloatBufferProxy {
    FloatBufferProxy(self)
  }
}

public extension FloatBuffer where Self: Object {
  func get(dst: [Float], offset: Int32, length: Int32) -> FloatBuffer? {
    let res = self.javaObject.call(method: FloatBuffer__method__10, [dst.toJavaParameter(), offset.toJavaParameter(), length.toJavaParameter()]) as Object?
    return cast(res, to: FloatBufferProxy.self) as! FloatBuffer?
  }

  func get(dst: [Float]) -> FloatBuffer? {
    let res = self.javaObject.call(method: FloatBuffer__method__11, [dst.toJavaParameter()]) as Object?
    return cast(res, to: FloatBufferProxy.self) as! FloatBuffer?
  }

  func put(src: FloatBuffer?) -> FloatBuffer? {
    let res = self.javaObject.call(method: FloatBuffer__method__12, [JavaParameter(object: src?.toJavaObject())]) as Object?
    return cast(res, to: FloatBufferProxy.self) as! FloatBuffer?
  }

  func put(src: [Float], offset: Int32, length: Int32) -> FloatBuffer? {
    let res = self.javaObject.call(method: FloatBuffer__method__13, [src.toJavaParameter(), offset.toJavaParameter(), length.toJavaParameter()]) as Object?
    return cast(res, to: FloatBufferProxy.self) as! FloatBuffer?
  }

  func put(src: [Float]) -> FloatBuffer? {
    let res = self.javaObject.call(method: FloatBuffer__method__14, [src.toJavaParameter()]) as Object?
    return cast(res, to: FloatBufferProxy.self) as! FloatBuffer?
  }

  func hasArray() -> Bool {
    self.javaObject.call(method: FloatBuffer__method__15, [])
  }

  func array() -> [Float] {
    self.javaObject.call(method: FloatBuffer__method__16, [])
  }

  func arrayOffset() -> Int32 {
    self.javaObject.call(method: FloatBuffer__method__17, [])
  }

  func compareTo(that: FloatBuffer?) -> Int32 {
    self.javaObject.call(method: FloatBuffer__method__20, [JavaParameter(object: that?.toJavaObject())])
  }
}

public final class FloatBufferStatic {
  public static func allocate(capacity: Int32) -> FloatBuffer? {
    let res = FloatBuffer__class.callStatic(method: FloatBuffer__method__0, [capacity.toJavaParameter()]) as Object?
    return cast(res, to: FloatBufferProxy.self) as! FloatBuffer?
  }

  public static func wrap(array: [Float], offset: Int32, length: Int32) -> FloatBuffer? {
    let res = FloatBuffer__class.callStatic(method: FloatBuffer__method__1, [array.toJavaParameter(), offset.toJavaParameter(), length.toJavaParameter()]) as Object?
    return cast(res, to: FloatBufferProxy.self) as! FloatBuffer?
  }

  public static func wrap(array: [Float]) -> FloatBuffer? {
    let res = FloatBuffer__class.callStatic(method: FloatBuffer__method__2, [array.toJavaParameter()]) as Object?
    return cast(res, to: FloatBufferProxy.self) as! FloatBuffer?
  }
}

open class FloatBufferProxy: BufferProxy, FloatBuffer {
  public typealias Proto = FloatBuffer

  override open class var javaClass: JClass {
    FloatBuffer__class
  }

  fileprivate convenience init<P: FloatBuffer>(_ obj: P) {
    self.init(obj.toJavaObject()!)
  }

  open func slice() -> FloatBuffer? {
    let res = self.javaObject.call(method: FloatBuffer__method__3, []) as Object?
    return cast(res, to: FloatBufferProxy.self) as! FloatBuffer?
  }

  open func duplicate() -> FloatBuffer? {
    let res = self.javaObject.call(method: FloatBuffer__method__4, []) as Object?
    return cast(res, to: FloatBufferProxy.self) as! FloatBuffer?
  }

  open func asReadOnlyBuffer() -> FloatBuffer? {
    let res = self.javaObject.call(method: FloatBuffer__method__5, []) as Object?
    return cast(res, to: FloatBufferProxy.self) as! FloatBuffer?
  }

  open func get() -> Float {
    self.javaObject.call(method: FloatBuffer__method__6, [])
  }

  open func put(f: Float) -> FloatBuffer? {
    let res = self.javaObject.call(method: FloatBuffer__method__7, [f.toJavaParameter()]) as Object?
    return cast(res, to: FloatBufferProxy.self) as! FloatBuffer?
  }

  open func get(index: Int32) -> Float {
    self.javaObject.call(method: FloatBuffer__method__8, [index.toJavaParameter()])
  }

  open func put(index: Int32, f: Float) -> FloatBuffer? {
    let res = self.javaObject.call(method: FloatBuffer__method__9, [index.toJavaParameter(), f.toJavaParameter()]) as Object?
    return cast(res, to: FloatBufferProxy.self) as! FloatBuffer?
  }

  open func compact() -> FloatBuffer? {
    let res = self.javaObject.call(method: FloatBuffer__method__18, []) as Object?
    return cast(res, to: FloatBufferProxy.self) as! FloatBuffer?
  }
}

// ------------------------------------------------------------------------------------

private let FloatBuffer__class = findJavaClass(fqn: "java/nio/FloatBuffer")!

private let FloatBuffer__method__0 = FloatBuffer__class.getStaticMethodID(name: "allocate", sig: "(I)Ljava/nio/FloatBuffer;")!
private let FloatBuffer__method__1 = FloatBuffer__class.getStaticMethodID(name: "wrap", sig: "([FII)Ljava/nio/FloatBuffer;")!
private let FloatBuffer__method__2 = FloatBuffer__class.getStaticMethodID(name: "wrap", sig: "([F)Ljava/nio/FloatBuffer;")!
private let FloatBuffer__method__3 = FloatBuffer__class.getMethodID(name: "slice", sig: "()Ljava/nio/FloatBuffer;")!
private let FloatBuffer__method__4 = FloatBuffer__class.getMethodID(name: "duplicate", sig: "()Ljava/nio/FloatBuffer;")!
private let FloatBuffer__method__5 = FloatBuffer__class.getMethodID(name: "asReadOnlyBuffer", sig: "()Ljava/nio/FloatBuffer;")!
private let FloatBuffer__method__6 = FloatBuffer__class.getMethodID(name: "get", sig: "()F")!
private let FloatBuffer__method__7 = FloatBuffer__class.getMethodID(name: "put", sig: "(F)Ljava/nio/FloatBuffer;")!
private let FloatBuffer__method__8 = FloatBuffer__class.getMethodID(name: "get", sig: "(I)F")!
private let FloatBuffer__method__9 = FloatBuffer__class.getMethodID(name: "put", sig: "(IF)Ljava/nio/FloatBuffer;")!
private let FloatBuffer__method__10 = FloatBuffer__class.getMethodID(name: "get", sig: "([FII)Ljava/nio/FloatBuffer;")!
private let FloatBuffer__method__11 = FloatBuffer__class.getMethodID(name: "get", sig: "([F)Ljava/nio/FloatBuffer;")!
private let FloatBuffer__method__12 = FloatBuffer__class.getMethodID(name: "put", sig: "(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;")!
private let FloatBuffer__method__13 = FloatBuffer__class.getMethodID(name: "put", sig: "([FII)Ljava/nio/FloatBuffer;")!
private let FloatBuffer__method__14 = FloatBuffer__class.getMethodID(name: "put", sig: "([F)Ljava/nio/FloatBuffer;")!
private let FloatBuffer__method__15 = FloatBuffer__class.getMethodID(name: "hasArray", sig: "()Z")!
private let FloatBuffer__method__16 = FloatBuffer__class.getMethodID(name: "array", sig: "()[F")!
private let FloatBuffer__method__17 = FloatBuffer__class.getMethodID(name: "arrayOffset", sig: "()I")!
private let FloatBuffer__method__18 = FloatBuffer__class.getMethodID(name: "compact", sig: "()Ljava/nio/FloatBuffer;")!
private let FloatBuffer__method__19 = FloatBuffer__class.getMethodID(name: "isDirect", sig: "()Z")!
private let FloatBuffer__method__20 = FloatBuffer__class.getMethodID(name: "compareTo", sig: "(Ljava/nio/FloatBuffer;)I")!
