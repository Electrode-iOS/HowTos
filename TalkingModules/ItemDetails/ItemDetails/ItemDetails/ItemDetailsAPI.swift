//
//  ItemDetailsAPI.swift
//  ItemDetails
//
//  Created by Brandon Sneed on 3/22/16.
//  Copyright © 2016 Electrode-iOS. All rights reserved.
//

import Foundation
import ELCodable

@objc
public protocol ItemDetailsAPI {
    func priceView(data: NSDecimalNumber, size: CGSize) -> ItemPriceView
    func ratingView(rating: Double, size: CGSize) -> ItemRatingView
}

