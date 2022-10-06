

public protocol ByteBuffer: Buffer {
  func slice() -> ByteBuffer?

  func duplicate() -> ByteBuffer?

  func asReadOnlyBuffer() -> ByteBuffer?

  func get() -> Int8

  func put(b: Int8) -> ByteBuffer?

  func get(index: Int32) -> Int8

  func put(index: Int32, b: Int8) -> ByteBuffer?

  func compact() -> ByteBuffer?

  func getChar() -> UInt16

  func putChar(value: UInt16) -> ByteBuffer?

  func getChar(index: Int32) -> UInt16

  func putChar(index: Int32, value: UInt16) -> ByteBuffer?

  func getShort() -> Int16

  func putShort(value: Int16) -> ByteBuffer?

  func getShort(index: Int32) -> Int16

  func putShort(index: Int32, value: Int16) -> ByteBuffer?

  func asShortBuffer() -> ShortBuffer?

  func getInt() -> Int32

  func putInt(value: Int32) -> ByteBuffer?

  func getInt(index: Int32) -> Int32

  func putInt(index: Int32, value: Int32) -> ByteBuffer?

  func asIntBuffer() -> IntBuffer?

  func getLong() -> Int64

  func putLong(value: Int64) -> ByteBuffer?

  func getLong(index: Int32) -> Int64

  func putLong(index: Int32, value: Int64) -> ByteBuffer?

  func asLongBuffer() -> LongBuffer?

  func getFloat() -> Float

  func putFloat(value: Float) -> ByteBuffer?

  func getFloat(index: Int32) -> Float

  func putFloat(index: Int32, value: Float) -> ByteBuffer?

  func asFloatBuffer() -> FloatBuffer?

  func getDouble() -> Double

  func putDouble(value: Double) -> ByteBuffer?

  func getDouble(index: Int32) -> Double

  func putDouble(index: Int32, value: Double) -> ByteBuffer?

  func asDoubleBuffer() -> DoubleBuffer?
}

public extension ByteBuffer {
  func box() -> ByteBufferProxy {
    ByteBufferProxy(self)
  }
}

public extension ByteBuffer where Self: Object {
  func get(dst: [Int8], offset: Int32, length: Int32) -> ByteBuffer? {
    let res = self.javaObject.call(method: ByteBuffer__method__11, [dst.toJavaParameter(), offset.toJavaParameter(), length.toJavaParameter()]) as Object?
    return cast(res, to: ByteBufferProxy.self) as! ByteBuffer?
  }

  func get(dst: [Int8]) -> ByteBuffer? {
    let res = self.javaObject.call(method: ByteBuffer__method__12, [dst.toJavaParameter()]) as Object?
    return cast(res, to: ByteBufferProxy.self) as! ByteBuffer?
  }

  func put(src: ByteBuffer?) -> ByteBuffer? {
    let res = self.javaObject.call(method: ByteBuffer__method__13, [JavaParameter(object: src?.toJavaObject())]) as Object?
    return cast(res, to: ByteBufferProxy.self) as! ByteBuffer?
  }

  func put(src: [Int8], offset: Int32, length: Int32) -> ByteBuffer? {
    let res = self.javaObject.call(method: ByteBuffer__method__14, [src.toJavaParameter(), offset.toJavaParameter(), length.toJavaParameter()]) as Object?
    return cast(res, to: ByteBufferProxy.self) as! ByteBuffer?
  }

  func put(src: [Int8]) -> ByteBuffer? {
    let res = self.javaObject.call(method: ByteBuffer__method__15, [src.toJavaParameter()]) as Object?
    return cast(res, to: ByteBufferProxy.self) as! ByteBuffer?
  }

  func hasArray() -> Bool {
    self.javaObject.call(method: ByteBuffer__method__16, [])
  }

  func array() -> [Int8] {
    self.javaObject.call(method: ByteBuffer__method__17, [])
  }

  func arrayOffset() -> Int32 {
    self.javaObject.call(method: ByteBuffer__method__18, [])
  }

  func compareTo(that: ByteBuffer?) -> Int32 {
    self.javaObject.call(method: ByteBuffer__method__21, [JavaParameter(object: that?.toJavaObject())])
  }
}

public final class ByteBufferStatic {
  public static func allocateDirect(capacity: Int32) -> ByteBuffer? {
    let res = ByteBuffer__class.callStatic(method: ByteBuffer__method__0, [capacity.toJavaParameter()]) as Object?
    return cast(res, to: ByteBufferProxy.self) as! ByteBuffer?
  }

  public static func allocate(capacity: Int32) -> ByteBuffer? {
    let res = ByteBuffer__class.callStatic(method: ByteBuffer__method__1, [capacity.toJavaParameter()]) as Object?
    return cast(res, to: ByteBufferProxy.self) as! ByteBuffer?
  }

  public static func wrap(array: [Int8], offset: Int32, length: Int32) -> ByteBuffer? {
    let res = ByteBuffer__class.callStatic(method: ByteBuffer__method__2, [array.toJavaParameter(), offset.toJavaParameter(), length.toJavaParameter()]) as Object?
    return cast(res, to: ByteBufferProxy.self) as! ByteBuffer?
  }

  public static func wrap(array: [Int8]) -> ByteBuffer? {
    let res = ByteBuffer__class.callStatic(method: ByteBuffer__method__3, [array.toJavaParameter()]) as Object?
    return cast(res, to: ByteBufferProxy.self) as! ByteBuffer?
  }
}

open class ByteBufferProxy: BufferProxy, ByteBuffer {
  public typealias Proto = ByteBuffer

  override open class var javaClass: JClass {
    ByteBuffer__class
  }

  fileprivate convenience init<P: ByteBuffer>(_ obj: P) {
    self.init(obj.toJavaObject()!)
  }

  open func slice() -> ByteBuffer? {
    let res = self.javaObject.call(method: ByteBuffer__method__4, []) as Object?
    return cast(res, to: ByteBufferProxy.self) as! ByteBuffer?
  }

  open func duplicate() -> ByteBuffer? {
    let res = self.javaObject.call(method: ByteBuffer__method__5, []) as Object?
    return cast(res, to: ByteBufferProxy.self) as! ByteBuffer?
  }

  open func asReadOnlyBuffer() -> ByteBuffer? {
    let res = self.javaObject.call(method: ByteBuffer__method__6, []) as Object?
    return cast(res, to: ByteBufferProxy.self) as! ByteBuffer?
  }

  open func get() -> Int8 {
    self.javaObject.call(method: ByteBuffer__method__7, [])
  }

  open func put(b: Int8) -> ByteBuffer? {
    let res = self.javaObject.call(method: ByteBuffer__method__8, [b.toJavaParameter()]) as Object?
    return cast(res, to: ByteBufferProxy.self) as! ByteBuffer?
  }

  open func get(index: Int32) -> Int8 {
    self.javaObject.call(method: ByteBuffer__method__9, [index.toJavaParameter()])
  }

  open func put(index: Int32, b: Int8) -> ByteBuffer? {
    let res = self.javaObject.call(method: ByteBuffer__method__10, [index.toJavaParameter(), b.toJavaParameter()]) as Object?
    return cast(res, to: ByteBufferProxy.self) as! ByteBuffer?
  }

  open func compact() -> ByteBuffer? {
    let res = self.javaObject.call(method: ByteBuffer__method__19, []) as Object?
    return cast(res, to: ByteBufferProxy.self) as! ByteBuffer?
  }

  open func getChar() -> UInt16 {
    self.javaObject.call(method: ByteBuffer__method__22, [])
  }

  open func putChar(value: UInt16) -> ByteBuffer? {
    let res = self.javaObject.call(method: ByteBuffer__method__23, [value.toJavaParameter()]) as Object?
    return cast(res, to: ByteBufferProxy.self) as! ByteBuffer?
  }

  open func getChar(index: Int32) -> UInt16 {
    self.javaObject.call(method: ByteBuffer__method__24, [index.toJavaParameter()])
  }

  open func putChar(index: Int32, value: UInt16) -> ByteBuffer? {
    let res = self.javaObject.call(method: ByteBuffer__method__25, [index.toJavaParameter(), value.toJavaParameter()]) as Object?
    return cast(res, to: ByteBufferProxy.self) as! ByteBuffer?
  }

  open func getShort() -> Int16 {
    self.javaObject.call(method: ByteBuffer__method__26, [])
  }

  open func putShort(value: Int16) -> ByteBuffer? {
    let res = self.javaObject.call(method: ByteBuffer__method__27, [value.toJavaParameter()]) as Object?
    return cast(res, to: ByteBufferProxy.self) as! ByteBuffer?
  }

  open func getShort(index: Int32) -> Int16 {
    self.javaObject.call(method: ByteBuffer__method__28, [index.toJavaParameter()])
  }

  open func putShort(index: Int32, value: Int16) -> ByteBuffer? {
    let res = self.javaObject.call(method: ByteBuffer__method__29, [index.toJavaParameter(), value.toJavaParameter()]) as Object?
    return cast(res, to: ByteBufferProxy.self) as! ByteBuffer?
  }

  open func asShortBuffer() -> ShortBuffer? {
    let res = self.javaObject.call(method: ByteBuffer__method__30, []) as Object?
    return cast(res, to: ShortBufferProxy.self) as! ShortBuffer?
  }

  open func getInt() -> Int32 {
    self.javaObject.call(method: ByteBuffer__method__31, [])
  }

  open func putInt(value: Int32) -> ByteBuffer? {
    let res = self.javaObject.call(method: ByteBuffer__method__32, [value.toJavaParameter()]) as Object?
    return cast(res, to: ByteBufferProxy.self) as! ByteBuffer?
  }

  open func getInt(index: Int32) -> Int32 {
    self.javaObject.call(method: ByteBuffer__method__33, [index.toJavaParameter()])
  }

  open func putInt(index: Int32, value: Int32) -> ByteBuffer? {
    let res = self.javaObject.call(method: ByteBuffer__method__34, [index.toJavaParameter(), value.toJavaParameter()]) as Object?
    return cast(res, to: ByteBufferProxy.self) as! ByteBuffer?
  }

  open func asIntBuffer() -> IntBuffer? {
    let res = self.javaObject.call(method: ByteBuffer__method__35, []) as Object?
    return cast(res, to: IntBufferProxy.self) as! IntBuffer?
  }

  open func getLong() -> Int64 {
    self.javaObject.call(method: ByteBuffer__method__36, [])
  }

  open func putLong(value: Int64) -> ByteBuffer? {
    let res = self.javaObject.call(method: ByteBuffer__method__37, [value.toJavaParameter()]) as Object?
    return cast(res, to: ByteBufferProxy.self) as! ByteBuffer?
  }

  open func getLong(index: Int32) -> Int64 {
    self.javaObject.call(method: ByteBuffer__method__38, [index.toJavaParameter()])
  }

  open func putLong(index: Int32, value: Int64) -> ByteBuffer? {
    let res = self.javaObject.call(method: ByteBuffer__method__39, [index.toJavaParameter(), value.toJavaParameter()]) as Object?
    return cast(res, to: ByteBufferProxy.self) as! ByteBuffer?
  }

  open func asLongBuffer() -> LongBuffer? {
    let res = self.javaObject.call(method: ByteBuffer__method__40, []) as Object?
    return cast(res, to: LongBufferProxy.self) as! LongBuffer?
  }

  open func getFloat() -> Float {
    self.javaObject.call(method: ByteBuffer__method__41, [])
  }

  open func putFloat(value: Float) -> ByteBuffer? {
    let res = self.javaObject.call(method: ByteBuffer__method__42, [value.toJavaParameter()]) as Object?
    return cast(res, to: ByteBufferProxy.self) as! ByteBuffer?
  }

  open func getFloat(index: Int32) -> Float {
    self.javaObject.call(method: ByteBuffer__method__43, [index.toJavaParameter()])
  }

  open func putFloat(index: Int32, value: Float) -> ByteBuffer? {
    let res = self.javaObject.call(method: ByteBuffer__method__44, [index.toJavaParameter(), value.toJavaParameter()]) as Object?
    return cast(res, to: ByteBufferProxy.self) as! ByteBuffer?
  }

  open func asFloatBuffer() -> FloatBuffer? {
    let res = self.javaObject.call(method: ByteBuffer__method__45, []) as Object?
    return cast(res, to: FloatBufferProxy.self) as! FloatBuffer?
  }

  open func getDouble() -> Double {
    self.javaObject.call(method: ByteBuffer__method__46, [])
  }

  open func putDouble(value: Double) -> ByteBuffer? {
    let res = self.javaObject.call(method: ByteBuffer__method__47, [value.toJavaParameter()]) as Object?
    return cast(res, to: ByteBufferProxy.self) as! ByteBuffer?
  }

  open func getDouble(index: Int32) -> Double {
    self.javaObject.call(method: ByteBuffer__method__48, [index.toJavaParameter()])
  }

  open func putDouble(index: Int32, value: Double) -> ByteBuffer? {
    let res = self.javaObject.call(method: ByteBuffer__method__49, [index.toJavaParameter(), value.toJavaParameter()]) as Object?
    return cast(res, to: ByteBufferProxy.self) as! ByteBuffer?
  }

  open func asDoubleBuffer() -> DoubleBuffer? {
    let res = self.javaObject.call(method: ByteBuffer__method__50, []) as Object?
    return cast(res, to: DoubleBufferProxy.self) as! DoubleBuffer?
  }
}

// ------------------------------------------------------------------------------------

private let ByteBuffer__class = findJavaClass(fqn: "java/nio/ByteBuffer")!

private let ByteBuffer__method__0 = ByteBuffer__class.getStaticMethodID(name: "allocateDirect", sig: "(I)Ljava/nio/ByteBuffer;")!
private let ByteBuffer__method__1 = ByteBuffer__class.getStaticMethodID(name: "allocate", sig: "(I)Ljava/nio/ByteBuffer;")!
private let ByteBuffer__method__2 = ByteBuffer__class.getStaticMethodID(name: "wrap", sig: "([BII)Ljava/nio/ByteBuffer;")!
private let ByteBuffer__method__3 = ByteBuffer__class.getStaticMethodID(name: "wrap", sig: "([B)Ljava/nio/ByteBuffer;")!
private let ByteBuffer__method__4 = ByteBuffer__class.getMethodID(name: "slice", sig: "()Ljava/nio/ByteBuffer;")!
private let ByteBuffer__method__5 = ByteBuffer__class.getMethodID(name: "duplicate", sig: "()Ljava/nio/ByteBuffer;")!
private let ByteBuffer__method__6 = ByteBuffer__class.getMethodID(name: "asReadOnlyBuffer", sig: "()Ljava/nio/ByteBuffer;")!
private let ByteBuffer__method__7 = ByteBuffer__class.getMethodID(name: "get", sig: "()B")!
private let ByteBuffer__method__8 = ByteBuffer__class.getMethodID(name: "put", sig: "(B)Ljava/nio/ByteBuffer;")!
private let ByteBuffer__method__9 = ByteBuffer__class.getMethodID(name: "get", sig: "(I)B")!
private let ByteBuffer__method__10 = ByteBuffer__class.getMethodID(name: "put", sig: "(IB)Ljava/nio/ByteBuffer;")!
private let ByteBuffer__method__11 = ByteBuffer__class.getMethodID(name: "get", sig: "([BII)Ljava/nio/ByteBuffer;")!
private let ByteBuffer__method__12 = ByteBuffer__class.getMethodID(name: "get", sig: "([B)Ljava/nio/ByteBuffer;")!
private let ByteBuffer__method__13 = ByteBuffer__class.getMethodID(name: "put", sig: "(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;")!
private let ByteBuffer__method__14 = ByteBuffer__class.getMethodID(name: "put", sig: "([BII)Ljava/nio/ByteBuffer;")!
private let ByteBuffer__method__15 = ByteBuffer__class.getMethodID(name: "put", sig: "([B)Ljava/nio/ByteBuffer;")!
private let ByteBuffer__method__16 = ByteBuffer__class.getMethodID(name: "hasArray", sig: "()Z")!
private let ByteBuffer__method__17 = ByteBuffer__class.getMethodID(name: "array", sig: "()[B")!
private let ByteBuffer__method__18 = ByteBuffer__class.getMethodID(name: "arrayOffset", sig: "()I")!
private let ByteBuffer__method__19 = ByteBuffer__class.getMethodID(name: "compact", sig: "()Ljava/nio/ByteBuffer;")!
private let ByteBuffer__method__20 = ByteBuffer__class.getMethodID(name: "isDirect", sig: "()Z")!
private let ByteBuffer__method__21 = ByteBuffer__class.getMethodID(name: "compareTo", sig: "(Ljava/nio/ByteBuffer;)I")!
private let ByteBuffer__method__22 = ByteBuffer__class.getMethodID(name: "getChar", sig: "()C")!
private let ByteBuffer__method__23 = ByteBuffer__class.getMethodID(name: "putChar", sig: "(C)Ljava/nio/ByteBuffer;")!
private let ByteBuffer__method__24 = ByteBuffer__class.getMethodID(name: "getChar", sig: "(I)C")!
private let ByteBuffer__method__25 = ByteBuffer__class.getMethodID(name: "putChar", sig: "(IC)Ljava/nio/ByteBuffer;")!
private let ByteBuffer__method__26 = ByteBuffer__class.getMethodID(name: "getShort", sig: "()S")!
private let ByteBuffer__method__27 = ByteBuffer__class.getMethodID(name: "putShort", sig: "(S)Ljava/nio/ByteBuffer;")!
private let ByteBuffer__method__28 = ByteBuffer__class.getMethodID(name: "getShort", sig: "(I)S")!
private let ByteBuffer__method__29 = ByteBuffer__class.getMethodID(name: "putShort", sig: "(IS)Ljava/nio/ByteBuffer;")!
private let ByteBuffer__method__30 = ByteBuffer__class.getMethodID(name: "asShortBuffer", sig: "()Ljava/nio/ShortBuffer;")!
private let ByteBuffer__method__31 = ByteBuffer__class.getMethodID(name: "getInt", sig: "()I")!
private let ByteBuffer__method__32 = ByteBuffer__class.getMethodID(name: "putInt", sig: "(I)Ljava/nio/ByteBuffer;")!
private let ByteBuffer__method__33 = ByteBuffer__class.getMethodID(name: "getInt", sig: "(I)I")!
private let ByteBuffer__method__34 = ByteBuffer__class.getMethodID(name: "putInt", sig: "(II)Ljava/nio/ByteBuffer;")!
private let ByteBuffer__method__35 = ByteBuffer__class.getMethodID(name: "asIntBuffer", sig: "()Ljava/nio/IntBuffer;")!
private let ByteBuffer__method__36 = ByteBuffer__class.getMethodID(name: "getLong", sig: "()J")!
private let ByteBuffer__method__37 = ByteBuffer__class.getMethodID(name: "putLong", sig: "(J)Ljava/nio/ByteBuffer;")!
private let ByteBuffer__method__38 = ByteBuffer__class.getMethodID(name: "getLong", sig: "(I)J")!
private let ByteBuffer__method__39 = ByteBuffer__class.getMethodID(name: "putLong", sig: "(IJ)Ljava/nio/ByteBuffer;")!
private let ByteBuffer__method__40 = ByteBuffer__class.getMethodID(name: "asLongBuffer", sig: "()Ljava/nio/LongBuffer;")!
private let ByteBuffer__method__41 = ByteBuffer__class.getMethodID(name: "getFloat", sig: "()F")!
private let ByteBuffer__method__42 = ByteBuffer__class.getMethodID(name: "putFloat", sig: "(F)Ljava/nio/ByteBuffer;")!
private let ByteBuffer__method__43 = ByteBuffer__class.getMethodID(name: "getFloat", sig: "(I)F")!
private let ByteBuffer__method__44 = ByteBuffer__class.getMethodID(name: "putFloat", sig: "(IF)Ljava/nio/ByteBuffer;")!
private let ByteBuffer__method__45 = ByteBuffer__class.getMethodID(name: "asFloatBuffer", sig: "()Ljava/nio/FloatBuffer;")!
private let ByteBuffer__method__46 = ByteBuffer__class.getMethodID(name: "getDouble", sig: "()D")!
private let ByteBuffer__method__47 = ByteBuffer__class.getMethodID(name: "putDouble", sig: "(D)Ljava/nio/ByteBuffer;")!
private let ByteBuffer__method__48 = ByteBuffer__class.getMethodID(name: "getDouble", sig: "(I)D")!
private let ByteBuffer__method__49 = ByteBuffer__class.getMethodID(name: "putDouble", sig: "(ID)Ljava/nio/ByteBuffer;")!
private let ByteBuffer__method__50 = ByteBuffer__class.getMethodID(name: "asDoubleBuffer", sig: "()Ljava/nio/DoubleBuffer;")!
