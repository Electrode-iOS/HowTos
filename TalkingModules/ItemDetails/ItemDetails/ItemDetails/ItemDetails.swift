//
//  ItemDetails.swift
//  ItemDetails
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
public class ItemDetails: NSObject, Module {
    public static let logging = Logger()
    
    public static func pluginClass() -> Pluggable.Type {
        return ItemDetailsPlugin.self
    }
}

internal func log(level: LogLevel, _ message: String) {
    ItemDetails.logging.log(level, message: "\(ItemDetails.self): " + message)
}
