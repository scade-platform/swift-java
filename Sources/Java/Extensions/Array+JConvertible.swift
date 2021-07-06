
import CJNI


extension Array: JParameterConvertible, JConvertible, JNullInitializable, JObjectConvertible where Element: JConvertible {

  public static var javaSignature : String {
    return "[\(Element.javaSignature)"
  }
  
  
  public static var javaClass: JClass {
    return findJavaClass(fqn: javaSignature)!
  }

  
  public func toJavaObject() -> JavaObject? {
    let jcount = jsize(count)

    if Element.self == Bool.self {
      let arr = jni.NewBooleanArray(env, jcount)
      let elements = (self as! [Bool]).map { JavaBoolean($0 ? 1 : 0) }
      jni.SetArrayRegion(env, arr, jsize(0), jcount, elements)
      return arr

    } else if Element.self == Int8.self {
      let arr = jni.NewByteArray(env, jcount)
      jni.SetArrayRegion(env, arr, jsize(0), jcount, self as! [Int8])
      return arr

    } else if Element.self == Int16.self {
      let arr = jni.NewShortArray(env, jcount)
      jni.SetArrayRegion(env, arr, jsize(0), jcount, self as! [Int16])
      return arr

    } else if Element.self == Int32.self {
      let arr = jni.NewIntArray(env, jcount)
      jni.SetArrayRegion(env, arr, jsize(0), jcount, self as! [Int32])
      return arr

    } else if Element.self == Int64.self {
      let arr = jni.NewLongArray(env, jcount)
      jni.SetArrayRegion(env, arr, jsize(0), jcount, self as! [Int64])
      return arr

    } else if Element.self == Float.self {
      let arr = jni.NewFloatArray(env, jcount)
      jni.SetArrayRegion(env, arr, jsize(0), jcount, self as! [Float])
      return arr

    } else if Element.self == Double.self {
      let arr = jni.NewDoubleArray(env, jcount)
      jni.SetArrayRegion(env, arr, jsize(0), jcount, self as! [Double])
      return arr

    } else if let elementClass = (Element.self as? JObjectConvertible.Type)?.javaClass {
      let res = jni.NewObjectArray(env, jcount, elementClass.ptr, nil)
      for (index, element) in self.enumerated() {
        if let obj = element.toJavaObject() {
          jni.SetObjectArrayElement(env, res, jsize(index), obj)
          if jni.GetObjectRefType(env, obj).rawValue == 1 {
            jni.DeleteLocalRef(env, obj)
          }
        }
      }
      return res
      
    } else {
      fatalError()
    }
  }
  
  public static func fromJavaObject(_ obj: JavaObject) -> Array<Element> {
    let count = Int(jni.GetArrayLength(env, obj))
    
    if Element.self == Bool.self {
      var arr = [JavaBoolean](repeating: 0, count: count)
      jni.GetBooleanArrayRegion(env, obj, jsize(0), jsize(count), &arr)
      return arr.map { Bool($0 != 0) } as! [Element]
      
    } else if Element.self == Int8.self {
      var arr = [Int8](repeating: 0, count: count)
      jni.GetByteArrayRegion(env, obj, jsize(0), jsize(count), &arr)
      return arr as! [Element]

    } else if Element.self == Int16.self {
      var arr = [Int16](repeating: 0, count: count)
      jni.GetShortArrayRegion(env, obj, jsize(0), jsize(count), &arr)
      return arr as! [Element]

    } else if Element.self == Int32.self {
      var arr = [Int32](repeating: 0, count: count)
      jni.GetIntArrayRegion(env, obj, jsize(0), jsize(count), &arr)
      return arr as! [Element]

    } else if Element.self == Int64.self {
      var arr = [Int64](repeating: 0, count: count)
      jni.GetLongArrayRegion(env, obj, jsize(0), jsize(count), &arr)
      return arr as! [Element]

    } else if Element.self == Float.self {
      var arr = [Float](repeating: 0, count: count)
      jni.GetFloatArrayRegion(env, obj, jsize(0), jsize(count), &arr)
      return arr as! [Element]

    } else if Element.self == Double.self {
      var arr = [Double](repeating: 0, count: count)
      jni.GetDoubleArrayRegion(env, obj, jsize(0), jsize(count), &arr)
      return arr as! [Element]

    } else if Element.self is JObjectConvertible.Type {
      var arr: [Element] = []
      let count = Int(jni.GetArrayLength(env, obj))
      
      arr.reserveCapacity(count)
      
      for i in 0 ..< count{
        let _obj = jni.GetObjectArrayElement(env, obj, jsize(i))
        arr.append(Element.fromJavaObject(_obj))
        if _obj != nil {
          if jni.GetObjectRefType(env, _obj).rawValue == 1 {
            jni.DeleteLocalRef(env, _obj)
          }
        }
      }
      
      return arr

    } else {
      fatalError()
    }
  }
  
}

