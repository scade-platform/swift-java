//
//  Base.swift
//  JavaLang
//
//  Created by Grigory Markin on 14.11.18.
//

public protocol ObjectProtocol: class, JObjectConvertible {
  init(_ obj: JavaObject)
  var javaObject: JObject { get }
}

public extension ObjectProtocol {
  func toJavaObject() -> JavaObject? {
    return javaObject.ptr
  }
  
  static func fromJavaObject(_ obj: JavaObject?) -> Self {
    guard let _obj = obj else { fatalError("Cannot instantiate non-null object from nil") }
    return mapJavaObject(_obj)
  }

  func deleteJavaObject(_ obj: JavaObject?) {
    // nothing to do here because toJavaObject returns existing global refernce
    // and we should not delete it
  }
}

//public extension ObjectProtocol {
//  public static var JavaClass: Class<Self> {
//    return Class<Self>(self.javaClass.ptr)
//  }
//}


open class ObjectBase: ObjectProtocol {
  public let javaObject: JObject
  
  open class var javaClass: JClass {
    return getJavaClass(from: self)
  }
  
  public required init(_ obj: JavaObject) {
    javaObject = JObject(obj)
  }
  
  public required init(ctor: JavaMethodID, _ args: [JavaParameter]) {
    //TODO: add checks
    let obj = type(of: self).javaClass.create(ctor: ctor, args)
    javaObject = JObject(obj)
    
    if let ptr_field = javaObject.cls.getFieldID(name: "_ptr", sig: "J") {
      let ptr = unsafeBitCast(self, to: Int.self)
      javaObject.set(field: ptr_field, value: Int64(ptr))
    }
  }
}


extension ObjectBase: Equatable {
  public static func == (lhs: ObjectBase, rhs: ObjectBase) -> Bool {
    return jni.IsSameObject(env, lhs.javaObject.ptr, rhs.javaObject.ptr) != 0
  }
}
