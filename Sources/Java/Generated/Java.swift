


@_silgen_name("Java_init")
public func Java_init() -> Void {
  registerJavaClass(FileDescriptor.self, fqn: "java/io/FileDescriptor")    
  registerJavaClass(Object.self, fqn: "java/lang/Object")    
  registerJavaClass(URI.self, fqn: "java/net/URI")    
  registerJavaClass(URL.self, fqn: "java/net/URL")    
  registerJavaClass(UUID.self, fqn: "java/util/UUID")    
}

