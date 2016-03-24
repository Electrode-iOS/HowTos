//
//  ItemDetailsPlugin.swift
//  ItemDetails
//
//  Created by Brandon Sneed on 3/22/16.
//  Copyright © 2016 Electrode-iOS. All rights reserved.
//

import Foundation
import ELMaestro
import ELRouter

// MARK: PluggableFeature conformance

@objc
public class ItemDetailsPlugin: NSObject, PluggableFeature {
    public var identifier: String {
        return self.bundle().bundleIdentifier!
    }
    
    public var dependencies: [DependencyID]? {
        return nil
    }
    
    required public init?(containerBundleID: String?) {
        super.init()
    }
    
    // Provides the default route to this plugin or feature.
    public func startup(supervisor: Supervisor) -> Route? {
        // register the routes we want to support.
        registerRoutes()
        
        return nil
    }
    
    /**
     URL Handling
     */
    public func routeForURL(url: NSURL) -> Route? {
        return nil
    }
    
    /**
     Notification handling
     */
    public func routeForLocalNotification(notification: UILocalNotification) -> Route? {
        return nil
    }
    
    public func routeForRemoteNotification(userInfo: [NSObject : AnyObject]) -> Route? {
        return nil
    }
    
    /**
     Application lifecycle events
     */
    public func applicationWillTerminate() {
        
    }
    
    public func applicationDidReceiveMemoryWarning() {
        
    }
}

// MARK: Route Registration

extension ItemDetailsPlugin {
    private func registerRoutes() {
        
        // this registers a route that will push an item detail screen in-place.  by in-place, i mean
        // that it won't jump back to the main screen, it'll just add on to the current
        // nav heirarchy.
        
        let listRoute = Route("item", type: .Other) { (variable) -> Any? in
            // variable will be nil here.
            print(variable)
            return nil
        }.variable { (variable) -> Any? in
            // variable should be the listContext here.
            print(variable)
            return nil
        }.route("detail", type: .Push) { (variable) -> Any? in
            print(variable)
            // variable should STILL be the listContext.
            let vc = ItemDetailViewController(nibName: "ItemDetailViewController", bundle: self.bundle())
            
            // i'm going to cheat a little and tickle the view to get it to load.  normally you'd set any data props, and then
            // fill them in viewDidLoad().
            vc.loadView()
            vc.dataLabel.text = "Item Detail: \(variable)"
            
            return vc
        }
        
        Router.sharedInstance.register(listRoute)
    }
}

// MARK: Plugin API Extensions

extension ItemDetailsPlugin {
    static func itemDetailsAPIFactory() -> ItemDetailsAPI {
        return ItemDetailsAPIPrivate()
    }
}
