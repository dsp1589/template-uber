//
//  ViewController.swift
//  My Taxi
//
//  Created by Dhanasekarapandian Srinivasan on 1/8/17.
//  Copyright © 2017 Systameta. All rights reserved.
//

import UIKit

class LoaderViewController: MyTaxiBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.global().asyncAfter(deadline: DispatchTime.now()+3, execute: {
            DispatchQueue.main.async {
                self.performSegue(withIdentifier: PROCEED_TO_SIGN_IN, sender: nil)
            }
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

