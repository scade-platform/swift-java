

open class Class<T: JObjectConvertible>: Object {
  public static func forName<T0>(className: String) -> Class<T0>? where T0: Object {
    return Class__class.callStatic(method: Class__method__0, [className.toJavaParameter()])
  }

  public func newInstance() -> T? {
    return self.javaObject.call(method: Class__method__1, [])
  }

  public func isInstance(object: Object?) -> Bool {
    return self.javaObject.call(method: Class__method__2, [object.toJavaParameter()])
  }

  public func isAssignableFrom<T0>(c: Class<T0>?) -> Bool where T0: Object {
    return self.javaObject.call(method: Class__method__3, [c.toJavaParameter()])
  }

  public func isInterface() -> Bool {
    return self.javaObject.call(method: Class__method__4, [])
  }

  public func isArray() -> Bool {
    return self.javaObject.call(method: Class__method__5, [])
  }

  public func isPrimitive() -> Bool {
    return self.javaObject.call(method: Class__method__6, [])
  }

  public func isAnnotation() -> Bool {
    return self.javaObject.call(method: Class__method__7, [])
  }

  public func isSynthetic() -> Bool {
    return self.javaObject.call(method: Class__method__8, [])
  }

  public func getName() -> String {
    return self.javaObject.call(method: Class__method__9, [])
  }

  public func getSuperclass<T0>() -> Class<T0>? where T0: Object {
    return self.javaObject.call(method: Class__method__10, [])
  }

  public func getInterfaces<T0>() -> [Class<T0>?] where T0: Object {
    return self.javaObject.call(method: Class__method__11, [])
  }

  public func getComponentType<T0>() -> Class<T0>? where T0: Object {
    return self.javaObject.call(method: Class__method__12, [])
  }

  public func getModifiers() -> Int32 {
    return self.javaObject.call(method: Class__method__13, [])
  }

  public func getSigners() -> [Object?] {
    return self.javaObject.call(method: Class__method__14, [])
  }

  public func getDeclaringClass<T0>() -> Class<T0>? where T0: Object {
    return self.javaObject.call(method: Class__method__15, [])
  }

  public func getEnclosingClass<T0>() -> Class<T0>? where T0: Object {
    return self.javaObject.call(method: Class__method__16, [])
  }

  public func getSimpleName() -> String {
    return self.javaObject.call(method: Class__method__17, [])
  }

  public func getCanonicalName() -> String {
    return self.javaObject.call(method: Class__method__18, [])
  }

  public func isAnonymousClass() -> Bool {
    return self.javaObject.call(method: Class__method__19, [])
  }

  public func isLocalClass() -> Bool {
    return self.javaObject.call(method: Class__method__20, [])
  }

  public func isMemberClass() -> Bool {
    return self.javaObject.call(method: Class__method__21, [])
  }

  public func getClasses<T0>() -> [Class<T0>?] where T0: Object {
    return self.javaObject.call(method: Class__method__22, [])
  }

  public func getDeclaredClasses<T0>() -> [Class<T0>?] where T0: Object {
    return self.javaObject.call(method: Class__method__23, [])
  }

  public func desiredAssertionStatus() -> Bool {
    return self.javaObject.call(method: Class__method__24, [])
  }

  public func isEnum() -> Bool {
    return self.javaObject.call(method: Class__method__25, [])
  }

  public func getEnumConstants() -> [T?] {
    return self.javaObject.call(method: Class__method__26, [])
  }

  public func cast(obj: Object?) -> T? {
    return self.javaObject.call(method: Class__method__27, [obj.toJavaParameter()])
  }

  public func asSubclass<U, T0>(clazz: Class<U>?) -> Class<T0>? where U: Object, T0: Object {
    return self.javaObject.call(method: Class__method__28, [clazz.toJavaParameter()])
  }
}

// ------------------------------------------------------------------------------------

fileprivate let Class__class = findJavaClass(fqn: "java/lang/Class")!

fileprivate let Class__method__0 = Class__class.getStaticMethodID(name: "forName", sig: "(Ljava/lang/String;)Ljava/lang/Class;")!
fileprivate let Class__method__1 = Class__class.getMethodID(name: "newInstance", sig: "()Ljava/lang/Object;")!
fileprivate let Class__method__2 = Class__class.getMethodID(name: "isInstance", sig: "(Ljava/lang/Object;)Z")!
fileprivate let Class__method__3 = Class__class.getMethodID(name: "isAssignableFrom", sig: "(Ljava/lang/Class;)Z")!
fileprivate let Class__method__4 = Class__class.getMethodID(name: "isInterface", sig: "()Z")!
fileprivate let Class__method__5 = Class__class.getMethodID(name: "isArray", sig: "()Z")!
fileprivate let Class__method__6 = Class__class.getMethodID(name: "isPrimitive", sig: "()Z")!
fileprivate let Class__method__7 = Class__class.getMethodID(name: "isAnnotation", sig: "()Z")!
fileprivate let Class__method__8 = Class__class.getMethodID(name: "isSynthetic", sig: "()Z")!
fileprivate let Class__method__9 = Class__class.getMethodID(name: "getName", sig: "()Ljava/lang/String;")!
fileprivate let Class__method__10 = Class__class.getMethodID(name: "getSuperclass", sig: "()Ljava/lang/Class;")!
fileprivate let Class__method__11 = Class__class.getMethodID(name: "getInterfaces", sig: "()[Ljava/lang/Class;")!
fileprivate let Class__method__12 = Class__class.getMethodID(name: "getComponentType", sig: "()Ljava/lang/Class;")!
fileprivate let Class__method__13 = Class__class.getMethodID(name: "getModifiers", sig: "()I")!
fileprivate let Class__method__14 = Class__class.getMethodID(name: "getSigners", sig: "()[Ljava/lang/Object;")!
fileprivate let Class__method__15 = Class__class.getMethodID(name: "getDeclaringClass", sig: "()Ljava/lang/Class;")!
fileprivate let Class__method__16 = Class__class.getMethodID(name: "getEnclosingClass", sig: "()Ljava/lang/Class;")!
fileprivate let Class__method__17 = Class__class.getMethodID(name: "getSimpleName", sig: "()Ljava/lang/String;")!
fileprivate let Class__method__18 = Class__class.getMethodID(name: "getCanonicalName", sig: "()Ljava/lang/String;")!
fileprivate let Class__method__19 = Class__class.getMethodID(name: "isAnonymousClass", sig: "()Z")!
fileprivate let Class__method__20 = Class__class.getMethodID(name: "isLocalClass", sig: "()Z")!
fileprivate let Class__method__21 = Class__class.getMethodID(name: "isMemberClass", sig: "()Z")!
fileprivate let Class__method__22 = Class__class.getMethodID(name: "getClasses", sig: "()[Ljava/lang/Class;")!
fileprivate let Class__method__23 = Class__class.getMethodID(name: "getDeclaredClasses", sig: "()[Ljava/lang/Class;")!
fileprivate let Class__method__24 = Class__class.getMethodID(name: "desiredAssertionStatus", sig: "()Z")!
fileprivate let Class__method__25 = Class__class.getMethodID(name: "isEnum", sig: "()Z")!
fileprivate let Class__method__26 = Class__class.getMethodID(name: "getEnumConstants", sig: "()[Ljava/lang/Object;")!
fileprivate let Class__method__27 = Class__class.getMethodID(name: "cast", sig: "(Ljava/lang/Object;)Ljava/lang/Object;")!
fileprivate let Class__method__28 = Class__class.getMethodID(name: "asSubclass", sig: "(Ljava/lang/Class;)Ljava/lang/Class;")!
