//
//  ItemRatingView.swift
//  ItemDetails
//
//  Created by Brandon Sneed on 3/22/16.
//  Copyright © 2016 Electrode-iOS. All rights reserved.
//

import Foundation

import ELFoundation
import ELCodable
import FeatureAPIs

@objc
public class ItemRatingStarsView: UIView {
    // the price that will be used for display.
    public var rating: Double? {
        get {
            return _rating
        }
        
        set(value) {
            _rating = value
            setNeedsDisplay()
        }
    }
    
    init(rating: Double, maxSize: CGSize) {
        // compute the size of your frame based on the size given
        let someFrame = CGRectZero
        super.init(frame: someFrame)
        
        _rating = rating
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override public func drawRect(rect: CGRect) {
        // draw your starts here based on _rating.
        
        // maybe if rating is nil, explode.  i dunno.
        if rating == nil {
            exceptionFailure("ItemRatingView: Rating is still nil!")
        }
    }
    
    private var _rating: Double? = nil
}
