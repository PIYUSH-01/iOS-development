//
//  ColorPresenterVC.swift
//  protocolizer
//
//

import UIKit

class ColorPresenterVC: UIViewController, ColorTranferDelegate {

    @IBOutlet weak var colorLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func userDidChoose(color: UIColor, withName colorName: String) {
        view.backgroundColor = color
        colorLbl.text = colorName
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "presentColorPicker" {
            let colorPickerVC = segue.destination as! ColorPickerVC
            colorPickerVC.delegate = self
        }
    }

}

