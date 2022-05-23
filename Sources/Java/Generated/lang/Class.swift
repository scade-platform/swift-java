

open class Class<T: JObjectConvertible>: Object {
  public static func forName<T0>(className: String) -> Class<T0>? where T0: Object {
    Class__class.callStatic(method: Class__method__0, [className.toJavaParameter()])
  }

  open func newInstance() -> T? {
    self.javaObject.call(method: Class__method__1, [])
  }

  open func isInstance(object: Object?) -> Bool {
    self.javaObject.call(method: Class__method__2, [object.toJavaParameter()])
  }

  open func isAssignableFrom<T0>(c: Class<T0>?) -> Bool where T0: Object {
    self.javaObject.call(method: Class__method__3, [c.toJavaParameter()])
  }

  open func isInterface() -> Bool {
    self.javaObject.call(method: Class__method__4, [])
  }

  open func isArray() -> Bool {
    self.javaObject.call(method: Class__method__5, [])
  }

  open func isPrimitive() -> Bool {
    self.javaObject.call(method: Class__method__6, [])
  }

  open func isAnnotation() -> Bool {
    self.javaObject.call(method: Class__method__7, [])
  }

  open func isSynthetic() -> Bool {
    self.javaObject.call(method: Class__method__8, [])
  }

  open func getName() -> String {
    self.javaObject.call(method: Class__method__9, [])
  }

  open func getSuperclass<T0>() -> Class<T0>? where T0: Object {
    self.javaObject.call(method: Class__method__10, [])
  }

  open func getInterfaces<T0>() -> [Class<T0>?] where T0: Object {
    self.javaObject.call(method: Class__method__11, [])
  }

  open func getComponentType<T0>() -> Class<T0>? where T0: Object {
    self.javaObject.call(method: Class__method__12, [])
  }

  open func getModifiers() -> Int32 {
    self.javaObject.call(method: Class__method__13, [])
  }

  open func getSigners() -> [Object?] {
    self.javaObject.call(method: Class__method__14, [])
  }

  open func getDeclaringClass<T0>() -> Class<T0>? where T0: Object {
    self.javaObject.call(method: Class__method__15, [])
  }

  open func getEnclosingClass<T0>() -> Class<T0>? where T0: Object {
    self.javaObject.call(method: Class__method__16, [])
  }

  open func getSimpleName() -> String {
    self.javaObject.call(method: Class__method__17, [])
  }

  open func getCanonicalName() -> String {
    self.javaObject.call(method: Class__method__18, [])
  }

  open func isAnonymousClass() -> Bool {
    self.javaObject.call(method: Class__method__19, [])
  }

  open func isLocalClass() -> Bool {
    self.javaObject.call(method: Class__method__20, [])
  }

  open func isMemberClass() -> Bool {
    self.javaObject.call(method: Class__method__21, [])
  }

  open func getClasses<T0>() -> [Class<T0>?] where T0: Object {
    self.javaObject.call(method: Class__method__22, [])
  }

  open func getDeclaredClasses<T0>() -> [Class<T0>?] where T0: Object {
    self.javaObject.call(method: Class__method__23, [])
  }

  open func desiredAssertionStatus() -> Bool {
    self.javaObject.call(method: Class__method__24, [])
  }

  open func isEnum() -> Bool {
    self.javaObject.call(method: Class__method__25, [])
  }

  open func getEnumConstants() -> [T?] {
    self.javaObject.call(method: Class__method__26, [])
  }

  open func cast(obj: Object?) -> T? {
    self.javaObject.call(method: Class__method__27, [obj.toJavaParameter()])
  }

  open func asSubclass<U, T0>(clazz: Class<U>?) -> Class<T0>? where U: Object, T0: Object {
    self.javaObject.call(method: Class__method__28, [clazz.toJavaParameter()])
  }
}

// ------------------------------------------------------------------------------------

private let Class__class = findJavaClass(fqn: "java/lang/Class")!

private let Class__method__0 = Class__class.getStaticMethodID(name: "forName", sig: "(Ljava/lang/String;)Ljava/lang/Class;")!
private let Class__method__1 = Class__class.getMethodID(name: "newInstance", sig: "()Ljava/lang/Object;")!
private let Class__method__2 = Class__class.getMethodID(name: "isInstance", sig: "(Ljava/lang/Object;)Z")!
private let Class__method__3 = Class__class.getMethodID(name: "isAssignableFrom", sig: "(Ljava/lang/Class;)Z")!
private let Class__method__4 = Class__class.getMethodID(name: "isInterface", sig: "()Z")!
private let Class__method__5 = Class__class.getMethodID(name: "isArray", sig: "()Z")!
private let Class__method__6 = Class__class.getMethodID(name: "isPrimitive", sig: "()Z")!
private let Class__method__7 = Class__class.getMethodID(name: "isAnnotation", sig: "()Z")!
private let Class__method__8 = Class__class.getMethodID(name: "isSynthetic", sig: "()Z")!
private let Class__method__9 = Class__class.getMethodID(name: "getName", sig: "()Ljava/lang/String;")!
private let Class__method__10 = Class__class.getMethodID(name: "getSuperclass", sig: "()Ljava/lang/Class;")!
private let Class__method__11 = Class__class.getMethodID(name: "getInterfaces", sig: "()[Ljava/lang/Class;")!
private let Class__method__12 = Class__class.getMethodID(name: "getComponentType", sig: "()Ljava/lang/Class;")!
private let Class__method__13 = Class__class.getMethodID(name: "getModifiers", sig: "()I")!
private let Class__method__14 = Class__class.getMethodID(name: "getSigners", sig: "()[Ljava/lang/Object;")!
private let Class__method__15 = Class__class.getMethodID(name: "getDeclaringClass", sig: "()Ljava/lang/Class;")!
private let Class__method__16 = Class__class.getMethodID(name: "getEnclosingClass", sig: "()Ljava/lang/Class;")!
private let Class__method__17 = Class__class.getMethodID(name: "getSimpleName", sig: "()Ljava/lang/String;")!
private let Class__method__18 = Class__class.getMethodID(name: "getCanonicalName", sig: "()Ljava/lang/String;")!
private let Class__method__19 = Class__class.getMethodID(name: "isAnonymousClass", sig: "()Z")!
private let Class__method__20 = Class__class.getMethodID(name: "isLocalClass", sig: "()Z")!
private let Class__method__21 = Class__class.getMethodID(name: "isMemberClass", sig: "()Z")!
private let Class__method__22 = Class__class.getMethodID(name: "getClasses", sig: "()[Ljava/lang/Class;")!
private let Class__method__23 = Class__class.getMethodID(name: "getDeclaredClasses", sig: "()[Ljava/lang/Class;")!
private let Class__method__24 = Class__class.getMethodID(name: "desiredAssertionStatus", sig: "()Z")!
private let Class__method__25 = Class__class.getMethodID(name: "isEnum", sig: "()Z")!
private let Class__method__26 = Class__class.getMethodID(name: "getEnumConstants", sig: "()[Ljava/lang/Object;")!
private let Class__method__27 = Class__class.getMethodID(name: "cast", sig: "(Ljava/lang/Object;)Ljava/lang/Object;")!
private let Class__method__28 = Class__class.getMethodID(name: "asSubclass", sig: "(Ljava/lang/Class;)Ljava/lang/Class;")!
