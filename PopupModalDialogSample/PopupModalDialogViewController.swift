//
//  PopupModalDialogViewController.swift
//  PopupModalDialogSample
//
//  Created by tomoki-yamashita on 2017/10/18.
//  Copyright © 2017 Tomoki Yamashita. All rights reserved.
//

import UIKit

class PopupModalDialogViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func onClickCloseButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
