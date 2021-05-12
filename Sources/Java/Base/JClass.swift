//
//  JClass.swift
//  JavaSupport
//
//  Created by Grigory Markin on 01.06.18.
//

import CJNI


public final class JClass : JObject {
  private var _name: String?
  
  public var name: String {
    if let name = _name {
      return name
    }
    
    let name: String = call(method: Class__getName)
    self._name = name
    
    return name
  }
  
  fileprivate convenience init(_ obj: JavaObject, name: String) {
    self.init(obj)
    self._name = name
  }
  
  
  public func getFieldID(name: String, sig: String) -> JavaFieldID? {
    defer {
      checkExceptionAndClear()
    }
    return jni.GetFieldID(env, self.ptr, name, sig)
  }
  
  public func getStaticFieldID(name: String, sig: String) -> JavaFieldID? {
    defer {
      checkExceptionAndClear()
    }
    return jni.GetStaticFieldID(env, self.ptr, name, sig)
  }
  
  
  
  
  public func getMethodID(name: String, sig: String)  -> JavaMethodID? {
    defer {
      checkExceptionAndClear()
    }
    return jni.GetMethodID(env, self.ptr, name, sig)
  }
  
  public func getStaticMethodID(name: String, sig: String)  -> JavaMethodID? {
    defer {
      checkExceptionAndClear()
    }
    return jni.GetStaticMethodID(env, self.ptr, name, sig)
  }
  
  
  
  public func create(ctor: JavaMethodID, _ args: [JavaParameter]) -> JavaObject {
    guard let obj = jni.NewObject(env, self.ptr, ctor, args) else {
      //TODO: check and output exception
      fatalError("Cannot instantiate Java object")
    }
    return obj
  }
  
  public func create(ctor: JavaMethodID, _ params: JavaParameter...) -> JavaObject {
    return create(ctor: ctor, params)
  }
  
  public func create(ctor: JavaMethodID, _ args: JParameterConvertible...) -> JavaObject {
    return create(ctor: ctor, args.map{$0.toJavaParameter()})
  }
  
  public func create(_ args: JConvertible...) -> JavaObject {
    let sig = args.reduce("", { $0 + type(of: $1).javaSignature})
    guard let ctorId = getMethodID(name: "<init>", sig: "(\(sig))V") else {
      fatalError("Cannot find constructor with signature (\(sig))V")
    }
    return create(ctor: ctorId, args.map{$0.toJavaParameter()})
  }
  
  
  
  
  public func getStatic<T: JConvertible>(field: JavaFieldID) -> T {
    return T.fromStaticField(field, of: ptr)
  }
  
  public func getStatic<T: JConvertible>(field: String) -> T {
    guard let fieldId = getStaticFieldID(name: field, sig: T.javaSignature) else {
      fatalError("Cannot find static field \(field) with signature \(T.javaSignature)")
    }
    return self.getStatic(field: fieldId)
  }
  
  
  
  
  public func setStatic<T: JConvertible>(field: JavaFieldID, value: T) {
    value.toStaticField(field, of: self.ptr)
  }
  
  public func setStatic<T: JConvertible>(field: String, value: T) {
    guard let fieldId = getStaticFieldID(name: field, sig: T.javaSignature) else {
      fatalError("Cannot find static field \(field) with signature \(T.javaSignature)")
    }
    value.toStaticField(fieldId, of: self.ptr)
  }
  
  
  
  
  public func callStatic(method: JavaMethodID, _ args : [JavaParameter]) -> Void {
    jni.CallStaticVoidMethodA(env, self.ptr, method, args)
  }

  public func callStatic(method: JavaMethodID, _ args : JParameterConvertible...) -> Void {
    callStatic(method:method, args.map{$0.toJavaParameter()})
  }

  public func callStatic(method: String, _ args : JConvertible...) -> Void {
    callStatic(method: method, args: args)
  }
  
  public func callStatic(method: String, args: [JConvertible]) -> Void {
     let sig = "(\(args.reduce("", { $0 + type(of: $1).javaSignature})))V"
    callStatic(method: method, sig: sig, args: args) as Void
  }
       
  public func callStatic(method: String, sig: String, _ args : JConvertible...) -> Void {
    callStatic(method: method, sig: sig, args: args)
  }
    
  public func callStatic(method: String, sig: String, args : [JConvertible]) -> Void {
    guard let methodId = getStaticMethodID(name: method, sig: sig) else  {
      fatalError("Cannot find static method \(method) with signature \(sig)")
    }
    callStatic(method: methodId, args.map{$0.toJavaParameter()}) as Void      
  }
      


  
  public func callStatic<T: JConvertible>(method: JavaMethodID, _ args: [JavaParameter]) -> T {
    return T.fromStaticMethod(method, on: self.ptr, args: args)
  }

  public func callStatic<T: JConvertible>(method: JavaMethodID, _ args: JParameterConvertible...) -> T {
    return callStatic(method: method, args.map{$0.toJavaParameter()})
  }

  public func callStatic<T>(method: String, _ args : JConvertible...) -> T where T: JConvertible {
    return callStatic(method: method, args: args)
  }
      
  public func callStatic<T>(method: String, args: [JConvertible]) -> T where T: JConvertible {
    let sig = "(\(args.reduce("", { $0 + type(of: $1).javaSignature})))\(T.javaSignature)"
    return callStatic(method: method, sig: sig, args: args)
  }
  
  public func callStatic<T>(method: String, sig: String, _ args : JConvertible...) -> T where T: JConvertible {    
    return callStatic(method: method, sig: sig, args: args)
  }
    
  public func callStatic<T>(method: String, sig: String, args : [JConvertible]) -> T where T: JConvertible {
    guard let methodId = getStaticMethodID(name: method, sig: sig) else  {
      fatalError("Cannot find static method \(method) with signature \(sig)")
    }
    return callStatic(method: methodId, args.map{$0.toJavaParameter()})        
  }         
}


public func registerJavaClass<T: ObjectProtocol>(_ type: T.Type, fqn: String) -> Void {
  __classnameToSwiftClass[fqn] = type
  __swiftClassToClassname[ObjectIdentifier(type)] = fqn
}


public func findJavaClass(fqn: String) -> JClass? {
  if let cls = __javaClasses[fqn] {
    return cls
  }
    
  if let jcls = jni.FindClass(env, fqn) {  
    let cls = JClass(jcls, name: fqn)
    __javaClasses[fqn] = cls
    return cls
  } else {
    checkExceptionAndClear()    
  }
  
  return nil
}



internal func getJavaClass<T: ObjectProtocol>(from type: T.Type) -> JClass {
  let typeId = ObjectIdentifier(type)
  guard let fqn = __swiftClassToClassname[typeId] else {
    let fqn = String(String(reflecting: type).map {
      $0 == "." ? "/" : $0
    })
    print("Looking for Java class \(fqn)")
    guard let cls = findJavaClass(fqn: fqn) else {
      fatalError("Cannot find Java class '\(fqn)'")
    }
    __swiftClassToClassname[typeId] = fqn
    __classnameToSwiftClass[fqn] = type
    
    return cls
  }
  
  guard let cls = findJavaClass(fqn: fqn) else {
    fatalError("Cannot find Java class '\(fqn)'")
  }
  
  return cls
}


internal func mapJavaObject<T: ObjectProtocol>(_ obj: JavaObject) -> T {
  guard let jcls = jni.GetObjectClass(env, obj) else {
    fatalError("Cannot get Java class from Java object")
  }
  
  let cls = JClass(jcls)
  let fqn = String(cls.name.map{($0 == ".") ? "/" : $0})
  
  if let clazz = __classnameToSwiftClass[fqn] {
    return (clazz as! T.Type).init(obj)
  } else {
    return T.init(obj)
  }
}




fileprivate let Class__class = findJavaClass(fqn: "java/lang/Class")!
fileprivate let Class__getName = Class__class.getMethodID(name: "getName", sig: "()Ljava/lang/String;")!


fileprivate var __javaClasses = Dictionary<String, JClass>()
fileprivate var __classnameToSwiftClass = Dictionary<String, AnyClass>()
fileprivate var __swiftClassToClassname = Dictionary<ObjectIdentifier, String>()
