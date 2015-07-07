//
//  CYSystemVersion.swift
//  CYSystemVersion
//
//  Created by YuriJou on 7/7/15.
//  Copyright (c) 2015 YuriJou. All rights reserved.

//  Base On iOS 8 new feature

import Foundation

class CYSystemVersion
{
  let operatingSystemVersion = NSProcessInfo().operatingSystemVersion
  
  typealias Comparator = NSOperatingSystemVersion -> Bool
  
  init(){}
  
  class func majorVersion() -> Int
  {
    return NSProcessInfo().operatingSystemVersion.majorVersion
  }
  
  class func minorVersion() -> Int
  {
    return NSProcessInfo().operatingSystemVersion.minorVersion
  }
  
  class func patchVersion() -> Int
  {
    return NSProcessInfo().operatingSystemVersion.patchVersion
  }
  
  func biggerThanSystemVersion() -> Comparator
  {
    return
      {
        version in
        version.majorVersion == self.operatingSystemVersion.majorVersion
        ?version.majorVersion > self.operatingSystemVersion.majorVersion
        :(version.minorVersion == self.operatingSystemVersion.minorVersion
          ? version.minorVersion > self.operatingSystemVersion.minorVersion
          : version.patchVersion > self.operatingSystemVersion.patchVersion)
    }
  }

}


extension CYSystemVersion
{
  static let ios6 = NSOperatingSystemVersion(majorVersion: 6, minorVersion: 0, patchVersion: 0)
  static let ios7 = NSOperatingSystemVersion(majorVersion: 7, minorVersion: 0, patchVersion: 0)
  static let ios8 = NSOperatingSystemVersion(majorVersion: 8, minorVersion: 0, patchVersion: 0)
}
