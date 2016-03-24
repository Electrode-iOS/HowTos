//
//  AppDelegate.swift
//  TalkingModules
//
//  Created by Brandon Sneed on 3/22/16.
//  Copyright © 2016 Electrode-iOS. All rights reserved.
//

import UIKit
import ELMaestro
import ELRouter

// The plugins we want to load.
import ItemDetails
import WishList

@UIApplicationMain
class AppDelegate: ApplicationSupervisor {
    
    override func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        let result = super.application(application, didFinishLaunchingWithOptions: launchOptions)
        
        ELRouter.logging.enabled = false
        WishList.logging.enabled = false
        // we just want to see logs for ItemDetails right now.
        ItemDetails.logging.enabled = true
        
        // load our plugins.
        loadPlugin(ItemDetails.pluginClass())
        loadPlugin(WishList.pluginClass())
        
        // start up the system!
        startup()

        Router.sharedInstance.updateNavigator()
        
        return result
    }

}

