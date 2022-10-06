

open class URL: Object {
  public init(_protocol: String, host: String, port: Int32, file: String) {
    super.init(ctor: URL__method__0, [_protocol.toJavaParameter(), host.toJavaParameter(), port.toJavaParameter(), file.toJavaParameter()])
  }

  public init(_protocol: String, host: String, file: String) {
    super.init(ctor: URL__method__1, [_protocol.toJavaParameter(), host.toJavaParameter(), file.toJavaParameter()])
  }

  public init(spec: String) {
    super.init(ctor: URL__method__2, [spec.toJavaParameter()])
  }

  public init(context: URL?, spec: String) {
    super.init(ctor: URL__method__3, [context.toJavaParameter(), spec.toJavaParameter()])
  }

  open func set(_protocol: String, host: String, port: Int32, file: String, ref: String) {
    self.javaObject.call(method: URL__method__4, [_protocol.toJavaParameter(), host.toJavaParameter(), port.toJavaParameter(), file.toJavaParameter(), ref.toJavaParameter()])
  }

  open func set(_protocol: String, host: String, port: Int32, authority: String, userInfo: String, path: String, query: String, ref: String) {
    self.javaObject.call(method: URL__method__5, [_protocol.toJavaParameter(), host.toJavaParameter(), port.toJavaParameter(), authority.toJavaParameter(), userInfo.toJavaParameter(), path.toJavaParameter(), query.toJavaParameter(), ref.toJavaParameter()])
  }

  open func getQuery() -> String {
    self.javaObject.call(method: URL__method__6, [])
  }

  open func getPath() -> String {
    self.javaObject.call(method: URL__method__7, [])
  }

  open func getUserInfo() -> String {
    self.javaObject.call(method: URL__method__8, [])
  }

  open func getAuthority() -> String {
    self.javaObject.call(method: URL__method__9, [])
  }

  open func getPort() -> Int32 {
    self.javaObject.call(method: URL__method__10, [])
  }

  open func getDefaultPort() -> Int32 {
    self.javaObject.call(method: URL__method__11, [])
  }

  open func getProtocol() -> String {
    self.javaObject.call(method: URL__method__12, [])
  }

  open func getHost() -> String {
    self.javaObject.call(method: URL__method__13, [])
  }

  open func getFile() -> String {
    self.javaObject.call(method: URL__method__14, [])
  }

  open func getRef() -> String {
    self.javaObject.call(method: URL__method__15, [])
  }

  open func sameFile(other: URL?) -> Bool {
    self.javaObject.call(method: URL__method__16, [other.toJavaParameter()])
  }

  open func toExternalForm() -> String {
    self.javaObject.call(method: URL__method__17, [])
  }

  open func toURI() -> URI? {
    self.javaObject.call(method: URL__method__18, [])
  }

  public func getContent() -> Object? {
    self.javaObject.call(method: URL__method__19, [])
  }

  public func getContent<T0>(classes: [Class<T0>?]) -> Object? where T0: Object {
    self.javaObject.call(method: URL__method__20, [classes.toJavaParameter()])
  }

  public required init(_ obj: JavaObject) {
    super.init(obj)
  }

  public required init(ctor: JavaMethodID, _ args: [JavaParameter]) {
    super.init(ctor: ctor, args)
  }
}

// ------------------------------------------------------------------------------------

private let URL__class = findJavaClass(fqn: "java/net/URL")!

private let URL__method__0 = URL__class.getMethodID(name: "<init>", sig: "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V")!
private let URL__method__1 = URL__class.getMethodID(name: "<init>", sig: "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V")!
private let URL__method__2 = URL__class.getMethodID(name: "<init>", sig: "(Ljava/lang/String;)V")!
private let URL__method__3 = URL__class.getMethodID(name: "<init>", sig: "(Ljava/net/URL;Ljava/lang/String;)V")!
private let URL__method__4 = URL__class.getMethodID(name: "set", sig: "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V")!
private let URL__method__5 = URL__class.getMethodID(name: "set", sig: "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V")!
private let URL__method__6 = URL__class.getMethodID(name: "getQuery", sig: "()Ljava/lang/String;")!
private let URL__method__7 = URL__class.getMethodID(name: "getPath", sig: "()Ljava/lang/String;")!
private let URL__method__8 = URL__class.getMethodID(name: "getUserInfo", sig: "()Ljava/lang/String;")!
private let URL__method__9 = URL__class.getMethodID(name: "getAuthority", sig: "()Ljava/lang/String;")!
private let URL__method__10 = URL__class.getMethodID(name: "getPort", sig: "()I")!
private let URL__method__11 = URL__class.getMethodID(name: "getDefaultPort", sig: "()I")!
private let URL__method__12 = URL__class.getMethodID(name: "getProtocol", sig: "()Ljava/lang/String;")!
private let URL__method__13 = URL__class.getMethodID(name: "getHost", sig: "()Ljava/lang/String;")!
private let URL__method__14 = URL__class.getMethodID(name: "getFile", sig: "()Ljava/lang/String;")!
private let URL__method__15 = URL__class.getMethodID(name: "getRef", sig: "()Ljava/lang/String;")!
private let URL__method__16 = URL__class.getMethodID(name: "sameFile", sig: "(Ljava/net/URL;)Z")!
private let URL__method__17 = URL__class.getMethodID(name: "toExternalForm", sig: "()Ljava/lang/String;")!
private let URL__method__18 = URL__class.getMethodID(name: "toURI", sig: "()Ljava/net/URI;")!
private let URL__method__19 = URL__class.getMethodID(name: "getContent", sig: "()Ljava/lang/Object;")!
private let URL__method__20 = URL__class.getMethodID(name: "getContent", sig: "([Ljava/lang/Class;)Ljava/lang/Object;")!
