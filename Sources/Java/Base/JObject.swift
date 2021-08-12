//
//  JObject.swift
//  JavaSupport
//
//  Created by Grigory Markin on 01.06.18.
//

import CJNI


public class JObject {
  public let ptr: JavaObject
  
  public lazy var cls: JClass = {
    let obj = jni.CallObjectMethod(env, ptr, Object__getClass, [])!
    return JClass(obj)
  }()
  
  public init(_ ptr: JavaObject) {
    self.ptr = jni.NewGlobalRef(env, ptr)!
  }
  
  public convenience init?(_ ptr: JavaObject?) {
    if let _ptr = ptr {
      self.init(_ptr as JavaObject)
    } else {
      return nil
    }
  }
  
  deinit {
    jni.DeleteGlobalRef(env, ptr)
  }
  

  public func get<T: JConvertible>(field: JavaFieldID) -> T {
    return T.fromField(field, of: ptr)
  }
    
  public func get<T: JConvertible>(field: String, sig: String) -> T {
    guard let fieldId = cls.getFieldID(name: field, sig: sig) else {
      fatalError("Cannot find field \(field) with signature \(sig)")
    }
    return self.get(field: fieldId)
  }
  
  public func get<T: JConvertible>(field: String) -> T {
    return self.get(field: field, sig: T.javaSignature)  
  }
  
  
  
  public func set<T: JConvertible>(field: JavaFieldID, value: T) {
    value.toField(field, of: ptr)
  }
    
  public func set<T: JConvertible>(field: String, sig: String, value: T) {
    guard let fieldId = cls.getFieldID(name: field, sig: sig) else {
      fatalError("Cannot find field \(field) with signature \(sig)")
    }
    value.toField(fieldId, of: ptr)
  }
  
  public func set<T: JConvertible>(field: String, value: T) {
    self.set(field: field, sig: T.javaSignature, value: value)
  }
  
      
  
  public func call(method: JavaMethodID, _ args : [JavaParameter]) -> Void {
    jni.CallVoidMethod(env, ptr, method, args)
  }
  
  public func call(method: JavaMethodID, _ args : JParameterConvertible...) -> Void {
    let params = makeJavaParameterArray(args)
    call(method: method, params) as Void
    deleteJavaParameterArray(args, params)
  }
  
  public func call(method: String, _ args : JConvertible...) -> Void {
    let sig = "(\(args.reduce("", { $0 + type(of: $1).javaSignature})))V"
    guard let methodId = cls.getMethodID(name: method, sig: sig) else  {
      fatalError("Cannot find method \(method) with signature \(sig)")
    }

    let params = makeJavaParameterArray(args)
    call(method: methodId, params) as Void
    deleteJavaParameterArray(args, params)
  }
  
  
  
  
  public func call<T>(method: JavaMethodID, _ args: [JavaParameter]) -> T where T: JConvertible {
    return T.fromMethod(method, on: ptr, args: args)
  }
  
  public func call<T>(method: JavaMethodID, _ args: JParameterConvertible...) -> T where T: JConvertible {
    let params = makeJavaParameterArray(args)
    let res = call(method: method, params) as T
    deleteJavaParameterArray(args, params)
    return res
  }
  
  public func call<T>(method: String, _ args : JConvertible...) -> T where T: JConvertible {
    let sig = "(\(args.reduce("", { $0 + type(of: $1).javaSignature})))\(T.javaSignature)"
    guard let methodId = cls.getMethodID(name: method, sig: sig) else  {
      fatalError("Cannot find method \(method) with signature \(sig)")
    }

    let params = makeJavaParameterArray(args)
    let res = call(method: methodId, params) as T
    deleteJavaParameterArray(args, params)
    return res
  }
}



fileprivate let Object__class = JClass(jni.FindClass(env, "java/lang/Object")!)
fileprivate let Object__getClass = Object__class.getMethodID(name: "getClass", sig: "()Ljava/lang/Class;")!

//fileprivate let Object__hashcode = jni.GetMethodID(env, Object__class, "hashCode", "()I")!


//fileprivate func hashCode(_ obj: JavaObject) -> Int32 {
//  return Int32.fromMethod(Object__hashcode, on: obj, args: [])
//}







