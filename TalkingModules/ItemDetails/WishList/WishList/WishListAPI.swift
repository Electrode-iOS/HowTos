//
//  WishListAPI.swift
//  WishList
//
//  Created by Brandon Sneed on 3/22/16.
//  Copyright © 2016 Electrode-iOS. All rights reserved.
//

import Foundation

public class WishListCriteria: NSObject {
    let registryID: String? = nil
    let listID: String? = nil
    let type: String? = nil
    let itemID: String? = nil
}

@objc
public protocol WishListAPI {
    func addToListView(criteria: WishListCriteria, price: String, quantity: UInt) -> UIViewController
    func shouldShowAddButton(criteria: WishListCriteria) -> Bool
}