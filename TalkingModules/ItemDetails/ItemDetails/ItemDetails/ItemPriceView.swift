//
//  ItemPriceView.swift
//  ItemDetails
//
//  Created by Brandon Sneed on 3/22/16.
//  Copyright © 2016 Electrode-iOS. All rights reserved.
//

import Foundation
import ELCodable

import FeatureAPIs

@objc
public class ItemPriceLabel: UILabel {
    // the price that will be used for display.
    public var price: Decimal? {
        get {
            return _price
        }
        
        set(value) {
            _price = value
            // build your attributed string from the 'data' that was passed in.
            // ...
            // PROFIT!!
            // .. but since that's not the topic of this example, you get a plain old label.
            if let data = _price {
                text = "$\(data)"
            }
        }
    }
    
    init(price: NSDecimalNumber, maxSize: CGSize) {
        // compute the size of your frame based on the size given
        let someFrame = CGRectZero
        super.init(frame: someFrame)
        
        self.backgroundColor = UIColor(red: 1, green: 1, blue: 0, alpha: 1)
        
        self.price = Decimal(price)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private var _price: Decimal? = nil
}