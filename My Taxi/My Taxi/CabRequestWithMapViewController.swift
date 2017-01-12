//
//  CabRequestWithMapViewController.swift
//  My Taxi
//
//  Created by Dhanasekarapandian Srinivasan on 1/11/17.
//  Copyright © 2017 Systameta. All rights reserved.
//

import Foundation
import UIKit


class CabRequestWithMapViewController: MyTaxiBaseViewController {
    
    @IBOutlet weak var leftConstrainForDS: NSLayoutConstraint!
    @IBOutlet weak var topConstraintForDS: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func beginSearch(){
//        if topConstraintForDS.constant > 0{
//            topConstraintForDS.constant = -85
//            self.perform(#selector(CabRequestWithMapViewController.beginSearch), with: nil
//                , afterDelay: 5.0)
//        }else{
//            topConstraintForDS.constant = 24
//        }
       
        self.childViewControllers.forEach { (controller) in
            if let c = controller as? DestinationSearchViewController{
                leftConstrainForDS.constant = leftConstrainForDS.constant + c.enterDestination.frame.size.width + 4
            }
        }
        UIView.animate(withDuration: 0.65, animations: {
            self.view.layoutIfNeeded()
        })
    }
}
