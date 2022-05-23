

open class FileDescriptor: Object {
  public static let err: FileDescriptor? = FileDescriptor__class.getStatic(field: FileDescriptor__field__0)

  public static let _in: FileDescriptor? = FileDescriptor__class.getStatic(field: FileDescriptor__field__1)

  public static let out: FileDescriptor? = FileDescriptor__class.getStatic(field: FileDescriptor__field__2)

  override public init() {
    super.init(ctor: FileDescriptor__method__0, [])
  }

  open func valid() -> Bool {
    self.javaObject.call(method: FileDescriptor__method__1, [])
  }

  open func sync() {
    self.javaObject.call(method: FileDescriptor__method__2, [])
  }

  public required init(_ obj: JavaObject) {
    super.init(obj)
  }

  public required init(ctor: JavaMethodID, _ args: [JavaParameter]) {
    super.init(ctor: ctor, args)
  }
}

// ------------------------------------------------------------------------------------

private let FileDescriptor__class = findJavaClass(fqn: "java/io/FileDescriptor")!

private let FileDescriptor__method__0 = FileDescriptor__class.getMethodID(name: "<init>", sig: "()V")!
private let FileDescriptor__method__1 = FileDescriptor__class.getMethodID(name: "valid", sig: "()Z")!
private let FileDescriptor__method__2 = FileDescriptor__class.getMethodID(name: "sync", sig: "()V")!

private let FileDescriptor__field__0 = FileDescriptor__class.getStaticFieldID(name: "err", sig: "Ljava/io/FileDescriptor;")!
private let FileDescriptor__field__1 = FileDescriptor__class.getStaticFieldID(name: "in", sig: "Ljava/io/FileDescriptor;")!
private let FileDescriptor__field__2 = FileDescriptor__class.getStaticFieldID(name: "out", sig: "Ljava/io/FileDescriptor;")!
