//
//  ViewController.swift
//  PopupModalDialogSample
//
//  Created by tomoki-yamashita on 2017/10/18.
//  Copyright © 2017 Tomoki Yamashita. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIViewControllerTransitioningDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onClickPopoverButton(_ sender: UIButton) {
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "popupModalDialogViewController")
        vc.modalPresentationStyle = .overFullScreen
        vc.transitioningDelegate = self
        present(vc, animated: true, completion: nil)
    }

    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return FadeAnimationController(presenting : true)
    }

    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return FadeAnimationController(presenting : false)
    }
}
