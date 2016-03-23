//
//  ItemDetailsAPIPrivate.swift
//  ItemDetails
//
//  Created by Brandon Sneed on 3/22/16.
//  Copyright © 2016 Electrode-iOS. All rights reserved.
//

import Foundation

internal class ItemDetailsAPIPrivate: ItemDetailsAPI {
    @objc func priceView(data: NSDecimalNumber, size: CGSize) -> ItemPriceView {
        return ItemPriceView(price: NSDecimalNumber(double: 1.00), maxSize: CGSize(width: 100, height: 100))
    }
    
    @objc func ratingView(rating: Double, size: CGSize) -> ItemRatingView {
        return ItemRatingView(rating: 3.5, maxSize: CGSize(width: 100, height: 100))
    }
}