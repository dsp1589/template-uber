//
//  DestinationSearchViewController.swift
//  My Taxi
//
//  Created by Dhanasekarapandian Srinivasan on 1/11/17.
//  Copyright © 2017 Systameta. All rights reserved.
//

import Foundation
import UIKit


class DestinationSearchViewController: MyTaxiBaseViewController, UITextFieldDelegate {
    
    @IBOutlet weak var enterDestination: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.layer.masksToBounds = true
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        enterDestination.resignFirstResponder()
        if textField.text != EMPTY_STRING{
            //Begin Search
            beginSearch()
            return true
        } else{
            return false
        }
    }
    
    func beginSearch(){
        (self.parent as! CabRequestWithMapViewController).beginSearch()
    }
}
