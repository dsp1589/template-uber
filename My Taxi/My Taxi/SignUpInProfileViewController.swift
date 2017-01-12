//
//  SignUpInProfileViewController.swift
//  My Taxi
//
//  Created by Dhanasekarapandian Srinivasan on 1/8/17.
//  Copyright © 2017 Systameta. All rights reserved.
//

import Foundation
import UIKit

class SignUpInProfileViewController: MyTaxiBaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.performSegue(withIdentifier: PROCEED_TO_SIGN_IN, sender: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier! {
        case PROCEED_TO_SIGN_IN:
            break
        default:
            break
        }
    }
}
