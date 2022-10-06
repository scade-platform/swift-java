

open class URI: Object {
  public init(str: String) {
    super.init(ctor: URI__method__0, [str.toJavaParameter()])
  }

  public init(scheme: String, userInfo: String, host: String, port: Int32, path: String, query: String, fragment: String) {
    super.init(ctor: URI__method__1, [scheme.toJavaParameter(), userInfo.toJavaParameter(), host.toJavaParameter(), port.toJavaParameter(), path.toJavaParameter(), query.toJavaParameter(), fragment.toJavaParameter()])
  }

  public init(scheme: String, authority: String, path: String, query: String, fragment: String) {
    super.init(ctor: URI__method__2, [scheme.toJavaParameter(), authority.toJavaParameter(), path.toJavaParameter(), query.toJavaParameter(), fragment.toJavaParameter()])
  }

  public init(scheme: String, host: String, path: String, fragment: String) {
    super.init(ctor: URI__method__3, [scheme.toJavaParameter(), host.toJavaParameter(), path.toJavaParameter(), fragment.toJavaParameter()])
  }

  public init(scheme: String, ssp: String, fragment: String) {
    super.init(ctor: URI__method__4, [scheme.toJavaParameter(), ssp.toJavaParameter(), fragment.toJavaParameter()])
  }

  public static func create(str: String) -> URI? {
    URI__class.callStatic(method: URI__method__5, [str.toJavaParameter()])
  }

  open func parseServerAuthority() -> URI? {
    self.javaObject.call(method: URI__method__6, [])
  }

  open func normalize() -> URI? {
    self.javaObject.call(method: URI__method__7, [])
  }

  open func resolve(uri: URI?) -> URI? {
    self.javaObject.call(method: URI__method__8, [uri.toJavaParameter()])
  }

  open func resolve(str: String) -> URI? {
    self.javaObject.call(method: URI__method__9, [str.toJavaParameter()])
  }

  open func relativize(uri: URI?) -> URI? {
    self.javaObject.call(method: URI__method__10, [uri.toJavaParameter()])
  }

  open func toURL() -> URL? {
    self.javaObject.call(method: URI__method__11, [])
  }

  open func getScheme() -> String {
    self.javaObject.call(method: URI__method__12, [])
  }

  open func isAbsolute() -> Bool {
    self.javaObject.call(method: URI__method__13, [])
  }

  open func isOpaque() -> Bool {
    self.javaObject.call(method: URI__method__14, [])
  }

  open func getRawSchemeSpecificPart() -> String {
    self.javaObject.call(method: URI__method__15, [])
  }

  open func getSchemeSpecificPart() -> String {
    self.javaObject.call(method: URI__method__16, [])
  }

  open func getRawAuthority() -> String {
    self.javaObject.call(method: URI__method__17, [])
  }

  open func getAuthority() -> String {
    self.javaObject.call(method: URI__method__18, [])
  }

  open func getRawUserInfo() -> String {
    self.javaObject.call(method: URI__method__19, [])
  }

  open func getUserInfo() -> String {
    self.javaObject.call(method: URI__method__20, [])
  }

  open func getHost() -> String {
    self.javaObject.call(method: URI__method__21, [])
  }

  open func getPort() -> Int32 {
    self.javaObject.call(method: URI__method__22, [])
  }

  open func getRawPath() -> String {
    self.javaObject.call(method: URI__method__23, [])
  }

  open func getPath() -> String {
    self.javaObject.call(method: URI__method__24, [])
  }

  open func getRawQuery() -> String {
    self.javaObject.call(method: URI__method__25, [])
  }

  open func getQuery() -> String {
    self.javaObject.call(method: URI__method__26, [])
  }

  open func getRawFragment() -> String {
    self.javaObject.call(method: URI__method__27, [])
  }

  open func getFragment() -> String {
    self.javaObject.call(method: URI__method__28, [])
  }

  open func compareTo(that: URI?) -> Int32 {
    self.javaObject.call(method: URI__method__29, [that.toJavaParameter()])
  }

  open func toASCIIString() -> String {
    self.javaObject.call(method: URI__method__30, [])
  }

  public required init(_ obj: JavaObject) {
    super.init(obj)
  }

  public required init(ctor: JavaMethodID, _ args: [JavaParameter]) {
    super.init(ctor: ctor, args)
  }
}

// ------------------------------------------------------------------------------------

private let URI__class = findJavaClass(fqn: "java/net/URI")!

private let URI__method__0 = URI__class.getMethodID(name: "<init>", sig: "(Ljava/lang/String;)V")!
private let URI__method__1 = URI__class.getMethodID(name: "<init>", sig: "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V")!
private let URI__method__2 = URI__class.getMethodID(name: "<init>", sig: "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V")!
private let URI__method__3 = URI__class.getMethodID(name: "<init>", sig: "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V")!
private let URI__method__4 = URI__class.getMethodID(name: "<init>", sig: "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V")!
private let URI__method__5 = URI__class.getStaticMethodID(name: "create", sig: "(Ljava/lang/String;)Ljava/net/URI;")!
private let URI__method__6 = URI__class.getMethodID(name: "parseServerAuthority", sig: "()Ljava/net/URI;")!
private let URI__method__7 = URI__class.getMethodID(name: "normalize", sig: "()Ljava/net/URI;")!
private let URI__method__8 = URI__class.getMethodID(name: "resolve", sig: "(Ljava/net/URI;)Ljava/net/URI;")!
private let URI__method__9 = URI__class.getMethodID(name: "resolve", sig: "(Ljava/lang/String;)Ljava/net/URI;")!
private let URI__method__10 = URI__class.getMethodID(name: "relativize", sig: "(Ljava/net/URI;)Ljava/net/URI;")!
private let URI__method__11 = URI__class.getMethodID(name: "toURL", sig: "()Ljava/net/URL;")!
private let URI__method__12 = URI__class.getMethodID(name: "getScheme", sig: "()Ljava/lang/String;")!
private let URI__method__13 = URI__class.getMethodID(name: "isAbsolute", sig: "()Z")!
private let URI__method__14 = URI__class.getMethodID(name: "isOpaque", sig: "()Z")!
private let URI__method__15 = URI__class.getMethodID(name: "getRawSchemeSpecificPart", sig: "()Ljava/lang/String;")!
private let URI__method__16 = URI__class.getMethodID(name: "getSchemeSpecificPart", sig: "()Ljava/lang/String;")!
private let URI__method__17 = URI__class.getMethodID(name: "getRawAuthority", sig: "()Ljava/lang/String;")!
private let URI__method__18 = URI__class.getMethodID(name: "getAuthority", sig: "()Ljava/lang/String;")!
private let URI__method__19 = URI__class.getMethodID(name: "getRawUserInfo", sig: "()Ljava/lang/String;")!
private let URI__method__20 = URI__class.getMethodID(name: "getUserInfo", sig: "()Ljava/lang/String;")!
private let URI__method__21 = URI__class.getMethodID(name: "getHost", sig: "()Ljava/lang/String;")!
private let URI__method__22 = URI__class.getMethodID(name: "getPort", sig: "()I")!
private let URI__method__23 = URI__class.getMethodID(name: "getRawPath", sig: "()Ljava/lang/String;")!
private let URI__method__24 = URI__class.getMethodID(name: "getPath", sig: "()Ljava/lang/String;")!
private let URI__method__25 = URI__class.getMethodID(name: "getRawQuery", sig: "()Ljava/lang/String;")!
private let URI__method__26 = URI__class.getMethodID(name: "getQuery", sig: "()Ljava/lang/String;")!
private let URI__method__27 = URI__class.getMethodID(name: "getRawFragment", sig: "()Ljava/lang/String;")!
private let URI__method__28 = URI__class.getMethodID(name: "getFragment", sig: "()Ljava/lang/String;")!
private let URI__method__29 = URI__class.getMethodID(name: "compareTo", sig: "(Ljava/net/URI;)I")!
private let URI__method__30 = URI__class.getMethodID(name: "toASCIIString", sig: "()Ljava/lang/String;")!
