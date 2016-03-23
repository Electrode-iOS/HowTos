//
//  WishList.swift
//  WishList
//
//  Created by Brandon Sneed on 3/22/16.
//  Copyright © 2016 Electrode-iOS. All rights reserved.
//

/*
 
 This provides a simple way to enable/disable things in a module.
 
 */

import Foundation
import ELMaestro
import ELLog

@objc
public class WishList: NSObject, Module {
    public static let logging = Logger()
    
    public static func pluginClass() -> Pluggable.Type {
        return WishListPlugin.self
    }
}

internal func log(level: LogLevel, _ message: String) {
    WishList.logging.log(level, message: "\(WishList.self): " + message)
}
