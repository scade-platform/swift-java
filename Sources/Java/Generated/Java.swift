


@_silgen_name("Java_init")
public func Java_init() -> Void {
  registerJavaClass(FileDescriptor.self, fqn: "java/io/FileDescriptor")    
  registerJavaClass(UUID.self, fqn: "java/util/UUID")    
  registerJavaClass(Object.self, fqn: "java/lang/Object")    
}

