//
//  JConvertible.swift
//  JavaSupport
//
//  Created by Grigory Markin on 04.06.18.
//

import CJNI

public protocol JParameterConvertible {
  func toJavaParameter()  -> JavaParameter
  func deleteJavaParameter(_ par: JavaParameter)
}


// Converts collection of JParameterConvertible to array of java parameters
public func makeJavaParameterArray(_ args: [JParameterConvertible]) -> [JavaParameter] {
  return args.map{$0.toJavaParameter()}
}

// Deletes all java parameters in array created with makeJavaParameterArray
public func deleteJavaParameterArray(_ args: [JParameterConvertible], _ array: [JavaParameter]) {
  for (index, element) in args.enumerated() {
    element.deleteJavaParameter(array[index])
  }
}


public protocol JConvertible: JParameterConvertible {
  static var javaSignature: String { get }
  
  static func fromMethod(_ method: JavaMethodID, on obj: JavaObject, args: [JavaParameter]) -> Self
  static func fromStaticMethod(_ method: JavaMethodID, on cls: JavaClass, args: [JavaParameter]) -> Self
  
  static func fromField(_ field: JavaFieldID, of obj: JavaObject) -> Self
  func toField(_ field: JavaFieldID, of obj: JavaObject) -> Void
  
  static func fromStaticField(_ field: JavaFieldID, of cls: JavaClass) -> Self
  func toStaticField(_ field: JavaFieldID, of cls: JavaClass) -> Void
  
  static func fromJavaObject(_ obj: JavaObject?) -> Self
  func toJavaObject() -> JavaObject?
  func deleteJavaObject(_ obj: JavaObject?)

//  static func fromJavaArray(_ arr: JavaArray?) -> [Self]
//  static func toJavaArray(_ arr: [Self]) -> JavaArray?
}



public protocol JNullInitializable: JConvertible {
  init()
  static func fromJavaObject(_ obj: JavaObject) -> Self
}


extension JNullInitializable {
  public static func fromJavaObject(_ obj: JavaObject?) -> Self {
    if let _obj = obj {
      return fromJavaObject(_obj)
    } else {
      return Self()
    }
  }
}




public protocol JObjectConvertible: JConvertible {
  static var javaClass: JClass { get }
}


extension JObjectConvertible {
  public static var javaSignature: String {
    return "L\(javaClass.name);"
  }

  public static func fromMethod(_ method: JavaMethodID, on obj: JavaObject, args: [JavaParameter]) -> Self {
    let ret = jni.CallObjectMethod(env, obj, method, args)
    return fromJavaObject(ret)
  }
  
  public static func fromStaticMethod(_ method: JavaMethodID, on cls: JavaClass, args: [JavaParameter]) -> Self {
    let ret = jni.CallStaticObjectMethodA(env, cls, method, args)
    return fromJavaObject(ret)
  }
  
  public static func fromField(_ field: JavaFieldID, of obj: JavaObject) -> Self {
    let ret = jni.GetObjectField(env, obj, field)
    return fromJavaObject(ret)
  }
  
  public func toField(_ field: JavaFieldID, of obj: JavaObject) -> Void {
    let jObj = toJavaObject()
    jni.SetObjectField(env, obj, field, jObj)
    deleteJavaObject(jObj)
  }
  
  public static func fromStaticField(_ field: JavaFieldID, of cls: JavaClass) -> Self {
    let ret = jni.GetStaticObjectField(env, cls, field)
    return fromJavaObject(ret)
  }
  
  public func toStaticField(_ field: JavaFieldID, of cls: JavaClass) -> Void {
    let jObj = toJavaObject()
    jni.SetStaticObjectField(env, cls, field, jObj)
    deleteJavaObject(jObj)
  }
  
//  public static func toJavaArray(_ arr: [Self]) -> JavaArray? {
//    let res = jni.NewObjectArray(env, jsize(arr.count), javaClass.javaObject, nil)
//    for (index, element) in arr.enumerated() {
//      if let obj = element.toJavaObject() {
//        jni.SetObjectArrayElement(env, res, jsize(index), obj)
//        jni.DeleteLocalRef(env, obj)
//      }
//    }
//    return res
//  }
  
//  public static func fromJavaArray(_ arr: JavaArray?) -> [Self] {
//    var res: [Self] = []
//    let count = Int(jni.GetArrayLength(env, arr))
//
//    res.reserveCapacity(count)
//
//    for i in 0 ..< count{
//      let obj = jni.GetObjectArrayElement(env, arr, jsize(i))
//      res.append(fromJavaObject(obj))
//      if obj != nil {
//        jni.DeleteLocalRef(env, obj)
//      }
//    }
//    return res
//  }
  
  public func toJavaParameter() -> JavaParameter {
    return JavaParameter(object: toJavaObject())
  }

  public func deleteJavaParameter(_ par: JavaParameter) {
    deleteJavaObject(par.object)
  }
}


public protocol JInterfaceProxy where Self: Object {
  //TODO: temporarly removed because of bugs in Swift 4.2. with "where Self: SomeClass" constraints
  associatedtype Proto//: JObjectConvertible
}


