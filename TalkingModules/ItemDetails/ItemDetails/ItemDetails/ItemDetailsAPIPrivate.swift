//
//  ItemDetailsAPIPrivate.swift
//  ItemDetails
//
//  Created by Brandon Sneed on 3/22/16.
//  Copyright © 2016 Electrode-iOS. All rights reserved.
//

import Foundation
import FeatureAPIs

internal class ItemDetailsAPIPrivate: NSObject, ItemDetailsAPI {
    
    @objc func priceView(data: NSDecimalNumber, size: CGSize) -> UILabel {
        return ItemPriceLabel(price: data, maxSize: CGSize(width: 100, height: 100))
    }
    
    @objc func ratingView(rating: Double, size: CGSize) -> UIView {
        return ItemRatingStarsView(rating: rating, maxSize: CGSize(width: 100, height: 100))
    }
}