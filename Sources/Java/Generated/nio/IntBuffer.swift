

public protocol IntBuffer: Buffer {
  func slice() -> IntBuffer?

  func duplicate() -> IntBuffer?

  func asReadOnlyBuffer() -> IntBuffer?

  func get() -> Int32

  func put(i: Int32) -> IntBuffer?

  func get(index: Int32) -> Int32

  func put(index: Int32, i: Int32) -> IntBuffer?

  func compact() -> IntBuffer?
}

public extension IntBuffer {
  func box() -> IntBufferProxy {
    IntBufferProxy(self)
  }
}

public extension IntBuffer where Self: Object {
  func get(dst: [Int32], offset: Int32, length: Int32) -> IntBuffer? {
    let res = self.javaObject.call(method: IntBuffer__method__10, [dst.toJavaParameter(), offset.toJavaParameter(), length.toJavaParameter()]) as Object?
    return cast(res, to: IntBufferProxy.self) as! IntBuffer?
  }

  func get(dst: [Int32]) -> IntBuffer? {
    let res = self.javaObject.call(method: IntBuffer__method__11, [dst.toJavaParameter()]) as Object?
    return cast(res, to: IntBufferProxy.self) as! IntBuffer?
  }

  func put(src: IntBuffer?) -> IntBuffer? {
    let res = self.javaObject.call(method: IntBuffer__method__12, [JavaParameter(object: src?.toJavaObject())]) as Object?
    return cast(res, to: IntBufferProxy.self) as! IntBuffer?
  }

  func put(src: [Int32], offset: Int32, length: Int32) -> IntBuffer? {
    let res = self.javaObject.call(method: IntBuffer__method__13, [src.toJavaParameter(), offset.toJavaParameter(), length.toJavaParameter()]) as Object?
    return cast(res, to: IntBufferProxy.self) as! IntBuffer?
  }

  func put(src: [Int32]) -> IntBuffer? {
    let res = self.javaObject.call(method: IntBuffer__method__14, [src.toJavaParameter()]) as Object?
    return cast(res, to: IntBufferProxy.self) as! IntBuffer?
  }

  func hasArray() -> Bool {
    self.javaObject.call(method: IntBuffer__method__15, [])
  }

  func array() -> [Int32] {
    self.javaObject.call(method: IntBuffer__method__16, [])
  }

  func arrayOffset() -> Int32 {
    self.javaObject.call(method: IntBuffer__method__17, [])
  }

  func compareTo(that: IntBuffer?) -> Int32 {
    self.javaObject.call(method: IntBuffer__method__20, [JavaParameter(object: that?.toJavaObject())])
  }
}

public final class IntBufferStatic {
  public static func allocate(capacity: Int32) -> IntBuffer? {
    let res = IntBuffer__class.callStatic(method: IntBuffer__method__0, [capacity.toJavaParameter()]) as Object?
    return cast(res, to: IntBufferProxy.self) as! IntBuffer?
  }

  public static func wrap(array: [Int32], offset: Int32, length: Int32) -> IntBuffer? {
    let res = IntBuffer__class.callStatic(method: IntBuffer__method__1, [array.toJavaParameter(), offset.toJavaParameter(), length.toJavaParameter()]) as Object?
    return cast(res, to: IntBufferProxy.self) as! IntBuffer?
  }

  public static func wrap(array: [Int32]) -> IntBuffer? {
    let res = IntBuffer__class.callStatic(method: IntBuffer__method__2, [array.toJavaParameter()]) as Object?
    return cast(res, to: IntBufferProxy.self) as! IntBuffer?
  }
}

open class IntBufferProxy: BufferProxy, IntBuffer {
  public typealias Proto = IntBuffer

  override open class var javaClass: JClass {
    IntBuffer__class
  }

  fileprivate convenience init<P: IntBuffer>(_ obj: P) {
    self.init(obj.toJavaObject()!)
  }

  open func slice() -> IntBuffer? {
    let res = self.javaObject.call(method: IntBuffer__method__3, []) as Object?
    return cast(res, to: IntBufferProxy.self) as! IntBuffer?
  }

  open func duplicate() -> IntBuffer? {
    let res = self.javaObject.call(method: IntBuffer__method__4, []) as Object?
    return cast(res, to: IntBufferProxy.self) as! IntBuffer?
  }

  open func asReadOnlyBuffer() -> IntBuffer? {
    let res = self.javaObject.call(method: IntBuffer__method__5, []) as Object?
    return cast(res, to: IntBufferProxy.self) as! IntBuffer?
  }

  open func get() -> Int32 {
    self.javaObject.call(method: IntBuffer__method__6, [])
  }

  open func put(i: Int32) -> IntBuffer? {
    let res = self.javaObject.call(method: IntBuffer__method__7, [i.toJavaParameter()]) as Object?
    return cast(res, to: IntBufferProxy.self) as! IntBuffer?
  }

  open func get(index: Int32) -> Int32 {
    self.javaObject.call(method: IntBuffer__method__8, [index.toJavaParameter()])
  }

  open func put(index: Int32, i: Int32) -> IntBuffer? {
    let res = self.javaObject.call(method: IntBuffer__method__9, [index.toJavaParameter(), i.toJavaParameter()]) as Object?
    return cast(res, to: IntBufferProxy.self) as! IntBuffer?
  }

  open func compact() -> IntBuffer? {
    let res = self.javaObject.call(method: IntBuffer__method__18, []) as Object?
    return cast(res, to: IntBufferProxy.self) as! IntBuffer?
  }
}

// ------------------------------------------------------------------------------------

private let IntBuffer__class = findJavaClass(fqn: "java/nio/IntBuffer")!

private let IntBuffer__method__0 = IntBuffer__class.getStaticMethodID(name: "allocate", sig: "(I)Ljava/nio/IntBuffer;")!
private let IntBuffer__method__1 = IntBuffer__class.getStaticMethodID(name: "wrap", sig: "([III)Ljava/nio/IntBuffer;")!
private let IntBuffer__method__2 = IntBuffer__class.getStaticMethodID(name: "wrap", sig: "([I)Ljava/nio/IntBuffer;")!
private let IntBuffer__method__3 = IntBuffer__class.getMethodID(name: "slice", sig: "()Ljava/nio/IntBuffer;")!
private let IntBuffer__method__4 = IntBuffer__class.getMethodID(name: "duplicate", sig: "()Ljava/nio/IntBuffer;")!
private let IntBuffer__method__5 = IntBuffer__class.getMethodID(name: "asReadOnlyBuffer", sig: "()Ljava/nio/IntBuffer;")!
private let IntBuffer__method__6 = IntBuffer__class.getMethodID(name: "get", sig: "()I")!
private let IntBuffer__method__7 = IntBuffer__class.getMethodID(name: "put", sig: "(I)Ljava/nio/IntBuffer;")!
private let IntBuffer__method__8 = IntBuffer__class.getMethodID(name: "get", sig: "(I)I")!
private let IntBuffer__method__9 = IntBuffer__class.getMethodID(name: "put", sig: "(II)Ljava/nio/IntBuffer;")!
private let IntBuffer__method__10 = IntBuffer__class.getMethodID(name: "get", sig: "([III)Ljava/nio/IntBuffer;")!
private let IntBuffer__method__11 = IntBuffer__class.getMethodID(name: "get", sig: "([I)Ljava/nio/IntBuffer;")!
private let IntBuffer__method__12 = IntBuffer__class.getMethodID(name: "put", sig: "(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;")!
private let IntBuffer__method__13 = IntBuffer__class.getMethodID(name: "put", sig: "([III)Ljava/nio/IntBuffer;")!
private let IntBuffer__method__14 = IntBuffer__class.getMethodID(name: "put", sig: "([I)Ljava/nio/IntBuffer;")!
private let IntBuffer__method__15 = IntBuffer__class.getMethodID(name: "hasArray", sig: "()Z")!
private let IntBuffer__method__16 = IntBuffer__class.getMethodID(name: "array", sig: "()[I")!
private let IntBuffer__method__17 = IntBuffer__class.getMethodID(name: "arrayOffset", sig: "()I")!
private let IntBuffer__method__18 = IntBuffer__class.getMethodID(name: "compact", sig: "()Ljava/nio/IntBuffer;")!
private let IntBuffer__method__19 = IntBuffer__class.getMethodID(name: "isDirect", sig: "()Z")!
private let IntBuffer__method__20 = IntBuffer__class.getMethodID(name: "compareTo", sig: "(Ljava/nio/IntBuffer;)I")!
