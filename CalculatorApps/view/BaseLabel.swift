//
//  BaseLabel.swift
//  CalculatorApps
//
//  Created by Nabilla on 17/02/20.
//  Copyright © 2020 PT Intersolusi Teknologi Asia. All rights reserved.
//

import UIKit

class BaseLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setView()
    }
    
    func setView() {
        self.textColor = UIColor.whiteLabel
        self.font = UIFont.systemFont(ofSize: 15)
    }

}

class PriceLabel: BaseLabel {
    
    override func setView() {
        self.textColor = UIColor.boldLabel
        self.text = "$ \(self.text!)"
        self.font = UIFont.systemFont(ofSize: 15)
    }
}

class TitleLabel: BaseLabel {
    
    override func setView() {
        self.textColor = UIColor.lightLabel
        self.font = UIFont.systemFont(ofSize: 15)
    }
}
