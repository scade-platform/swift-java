

open class FileDescriptor: Object {
  public static let err: FileDescriptor = FileDescriptor__class.getStatic(field: FileDescriptor__field__0)

  public static let _in: FileDescriptor = FileDescriptor__class.getStatic(field: FileDescriptor__field__1)

  public static let _out: FileDescriptor = FileDescriptor__class.getStatic(field: FileDescriptor__field__2)

  public func valid() -> Bool {
    return self.javaObject.call(method: FileDescriptor__method__0, [])
  }

  public func sync() {
    return self.javaObject.call(method: FileDescriptor__method__1, [])
  }
}

// ------------------------------------------------------------------------------------

fileprivate let FileDescriptor__class = findJavaClass(fqn: "java/io/FileDescriptor")!

fileprivate let FileDescriptor__method__0 = FileDescriptor__class.getMethodID(name: "valid", sig: "()Z")!
fileprivate let FileDescriptor__method__1 = FileDescriptor__class.getMethodID(name: "sync", sig: "()V")!

fileprivate let FileDescriptor__field__0 = FileDescriptor__class.getStaticFieldID(name: "err", sig: "Ljava/io/FileDescriptor;")!
fileprivate let FileDescriptor__field__1 = FileDescriptor__class.getStaticFieldID(name: "in", sig: "Ljava/io/FileDescriptor;")!
fileprivate let FileDescriptor__field__2 = FileDescriptor__class.getStaticFieldID(name: "out", sig: "Ljava/io/FileDescriptor;")!
