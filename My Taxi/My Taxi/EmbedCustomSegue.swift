//
//  EmbedCustomSegue.swift
//  My Taxi
//
//  Created by Dhanasekarapandian Srinivasan on 1/8/17.
//  Copyright © 2017 Systameta. All rights reserved.
//

import Foundation
import UIKit


class EmbedCustomSegue: UIStoryboardSegue {
    override func perform() {
        var containerView : UIView? = nil
        for view in self.source.view.subviews{
            if view.tag == SINGLE_CONTAINER_VIEW_TAG{
                containerView = view
                break
            }
        }
        containerView?.subviews.first?.removeFromSuperview()
        switch identifier! {
        case PROCEED_TO_SIGN_IN:
            
            break
        case PROCEED_TO_SIGN_UP:
            
            break
        default: break
        }
        guard let embeddableview = containerView else {
            print("Container view not implemented for Embed segue")
            exit(1)
        }
        self.destination.view.frame = embeddableview.frame
        self.destination.view.frame.origin.x = 0
        self.destination.view.frame.origin.y = 0
        self.destination.willMove(toParentViewController: self.source)
        embeddableview.addSubview(self.destination.view)
        self.destination.view.layoutIfNeeded()
        self.source.addChildViewController(self.destination)
        self.destination.didMove(toParentViewController: self.source)
    }
}
