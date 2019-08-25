//
//  currencyTxtField.swift
//  Window-Shopper
//
//  Created by PIYUSH KHURANA on 04/08/19.
//  Copyright © 2019 PIYUSH KHURANA. All rights reserved.
//

import UIKit

@IBDesignable

class currencyTxtField: UITextField {

    override func draw(_ rect: CGRect) {
        let size: CGFloat = 30
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height/2) - size/2 , width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.723541941, green: 0.723541941, blue: 0.723541941, alpha: 0.8)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.1656686231, green: 0.1372985727, blue: 0.1257696464, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        clipsToBounds = true
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: UIColor.white])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }

}
