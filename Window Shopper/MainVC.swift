//
//  ViewController.swift
//  Window-Shopper
//
//  Created by PIYUSH KHURANA on 04/08/19.
//  Copyright © 2019 PIYUSH KHURANA. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: currencyTxtField!
    
    @IBOutlet weak var priceTxt: currencyTxtField!
    
    @IBOutlet var resultLbl: UILabel!
    
    @IBOutlet var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
  
        calcBtn.backgroundColor = #colorLiteral(red: 0.9309961929, green: 0.4326938014, blue: 0.244952888, alpha: 1)
        calcBtn.setTitle("CALCULATE", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
    }
    
    @objc func calculate(){
        
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text{
            if let wage = Double(wageTxt),let price = Double(priceTxt){
                view.endEditing(true)
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
                
            }
        }
    }

    @IBAction func clearBtnPressed(sender: AnyObject) {
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
    
    
    
}

