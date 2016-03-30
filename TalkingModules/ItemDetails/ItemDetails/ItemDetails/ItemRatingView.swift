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
import WalmartIOSShared

@objc
public class ItemRatingStarsView: UIView {
    // the price that will be used for display.
    public var rating: Double? {
        get {
            return _rating
        }
        
        set(value) {
            _rating = value
            buildStars()
        }
    }
    
    init(rating: Double, maxSize: CGSize) {
        // compute the size of your frame based on the size given
        let someFrame = CGRect(x: 0, y: 0, width: maxSize.width, height: maxSize.height)
        super.init(frame: someFrame)
        
        self.rating = rating
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
//    override public func drawRect(rect: CGRect) {
//        // draw your starts here based on _rating.
//        
//        // maybe if rating is nil, explode.  i dunno.
//        if rating == nil {
//            exceptionFailure("ItemRatingView: Rating is still nil!")
//        }
//    }
    
    private var _rating: Double? = nil
    private var starsView: StarsView? = nil
    
    private func buildStars() {
        if let _ = starsView {
            starsView!.removeFromSuperview()
        }
        
        starsView = StarsView(frame: self.bounds)
        if let tempRating = _rating {
            starsView!.rating = CGFloat(tempRating)
        }
        
        addSubview(starsView!)
    }
}
