//
//  Collections+Sequence.swift
//  Java
//
//  Created by Grigory Markin on 29.01.19.
//

public class IteratorWrapper<T: JObjectConvertible>: IteratorProtocol {
  private let it: IteratorProxy<T>?
  
  public init(_ it: IteratorProxy<T>?) {
    self.it = it
  }
  
  public func next() -> T?? {
    guard let _it = self.it else {
      return nil
    }
    if _it.hasNext() {
      return _it.next() as T?
    } else {
      return nil
    }
  }
}

extension Iterable {
  public func makeIterator() -> IteratorWrapper<T> {
    return IteratorWrapper<T>(self.iterator())
  }
}
