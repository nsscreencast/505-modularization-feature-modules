//
//  WalkthroughViewController.swift
//  DinnerTime
//
//  Created by Ben Scheirman on 6/3/21.
//

import UIKit

public protocol WalkthroughDelegate: AnyObject {
    func didCompleteWalkthrough(firstDinner: String?)
}

public class WalkthroughNavigationController: UINavigationController, UINavigationControllerDelegate {
    
    public weak var walkthroughDelegate: WalkthroughDelegate?
    
    public override func awakeFromNib() {
        super.awakeFromNib()
        delegate = self
        isModalInPresentation = true
    }
    
    public func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        if let vc = viewController as? WalkthroughDinnerPromptViewController {
            vc.walkthroughDelegate = walkthroughDelegate
        }
    }
}
