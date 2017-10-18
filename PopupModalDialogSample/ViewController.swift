//
//  ViewController.swift
//  PopupModalDialogSample
//
//  Created by tomoki-yamashita on 2017/10/18.
//  Copyright © 2017 Tomoki Yamashita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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
        self.addChildViewController(vc)
        vc.view.frame = self.view.frame
        self.view.addSubview(vc.view)
        vc.didMove(toParentViewController: self)
    }
}
