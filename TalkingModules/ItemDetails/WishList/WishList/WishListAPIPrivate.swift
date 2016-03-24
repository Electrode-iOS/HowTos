//
//  WishListAPIPrivate.swift
//  WishList
//
//  Created by Brandon Sneed on 3/24/16.
//  Copyright © 2016 Electrode-iOS. All rights reserved.
//

import Foundation

internal class WishListAPIPrivate: NSObject, WishListAPI {
    func addToListView(criteria: WishListCriteria, price: String, quantity: UInt) -> UIViewController {
        return UIViewController()
    }
    
    func shouldShowAddButton(criteria: WishListCriteria) -> Bool {
        if criteria.itemID != nil {
            return true
        }
        
        return false
    }
}