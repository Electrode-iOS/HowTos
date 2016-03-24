//
//  WishListPlugin.swift
//  WishList
//
//  Created by Brandon Sneed on 3/22/16.
//  Copyright © 2016 Electrode-iOS. All rights reserved.
//

import Foundation
import ELMaestro
import ELRouter

public func pluginClass() -> Pluggable.Type {
    return WishListPlugin.self
}

@objc
public class WishListPlugin: NSObject, PluggableFeature {
    public var identifier: String {
        return bundle().bundleIdentifier!
    }
    
    public var dependencies: [DependencyID]? {
        return nil
    }
    
    required public init?(containerBundleID: String?) {
        super.init()
    }
    
    // Provides the default route to this plugin or feature.
    public func startup(supervisor: Supervisor) -> Route? {
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

extension WishListPlugin {
    private func registerRoutes() {
        
        // this registers a route to represent the wish list tab.
        let listRoute = Route("list", type: .Static) { (variable) -> Any? in
            // variable will be nil here.
            
            // pull our initial wish list controller
            let vc = WishListViewController(nibName: "WishListViewController", bundle: self.bundle())
            
            // set up the tab bar appropriately.
            let image = UIImage(named: "wishListIcon", inBundle: self.bundle(), compatibleWithTraitCollection: nil)
            vc.tabBarItem = UITabBarItem(title: "Wish List", image: image, tag: 0)
            
            // wrap it in a UINavigation controller and send it back.
            return UINavigationController(rootViewController: vc)
        }
        
        Router.sharedInstance.register(listRoute)
    }
}

// MARK: Plugin API Extensions

extension WishListPlugin {
    static func wishListAPIFactory() -> WishListAPI {
        return WishListAPIPrivate()
    }
}
