//
//  FadeAnimationController.swift
//  PopupModalDialogSample
//
//  Created by tomoki-yamashita on 2017/10/18.
//  Copyright © 2017 Tomoki Yamashita. All rights reserved.
//

import UIKit

class FadeAnimationController: NSObject, UIViewControllerAnimatedTransitioning {
    var presenting: Bool = false

    init(presenting: Bool) {
        self.presenting = presenting
    }

    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.2
    }

    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        presenting ? appearTransition(transitionContext) : disappearTransition(transitionContext)
    }

    func appearTransition(_ transitionContext: UIViewControllerContextTransitioning) {
        let containerView = transitionContext.containerView
        if let toView = transitionContext.view(forKey: UITransitionContextViewKey.to) {
            toView.alpha = 0.0
            toView.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)

            containerView.addSubview(toView)
            UIView.animate(withDuration: self.transitionDuration(using: transitionContext), animations: {
                toView.alpha = 1.0
                toView.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            }, completion: { (t: Bool) in
                transitionContext.completeTransition(true)
            })
        }
    }

    func disappearTransition(_ transitionContext: UIViewControllerContextTransitioning) {
        let containerView = transitionContext.containerView

        containerView.alpha = 1.0
        containerView.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        UIView.animate(withDuration: self.transitionDuration(using: transitionContext), animations: {
            containerView.alpha = 0.0
            containerView.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        }, completion: { (t: Bool) in
            transitionContext.completeTransition(true)
        })
    }
}
