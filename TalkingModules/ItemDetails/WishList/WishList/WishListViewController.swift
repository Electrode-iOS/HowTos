//
//  WishListViewController.swift
//  WishList
//
//  Created by Brandon Sneed on 3/23/16.
//  Copyright © 2016 Electrode-iOS. All rights reserved.
//

import UIKit
import ELMaestro
import FeatureAPIs

class WishListViewController: UIViewController {
    
    @IBOutlet var priceLabel: UILabel? {
        
        didSet {
//            if let oldValue = oldValue {
//                priceLabel?.frame = oldValue.frame
//            }
            if let _ = priceLabel {
                view.addSubview(priceLabel!)
            }
        }
    }
    @IBOutlet var ratingsView: UIView?
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        
        super.viewDidAppear(animated)
        
        // Do any additional setup after loading the view.
        let supervisor = ApplicationSupervisor.sharedInstance
        let itemDetailsAPI = supervisor.pluginAPIForID(ItemDetailsID) as? ItemDetailsAPI
        self.priceLabel = itemDetailsAPI?.priceView(3.5, size: CGSize(width: 50, height: 10))
//        if let _ = priceLabel {
//            view.addSubview(priceLabel!)
//        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
