//
//  ColorPickerVC.swift
//  protocolizer
//

import UIKit

class ColorPickerVC: UIViewController {
    
    var delegate: ColorTranferDelegate? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonWasPressed(sender: UIButton) {
        if delegate != nil {
            delegate?.userDidChoose(color: sender.backgroundColor!, withName: sender.titleLabel!.text!)
            self.navigationController?.popViewController(animated: true)
        }
    }
}
