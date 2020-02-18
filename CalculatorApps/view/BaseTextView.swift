//
//  BaseTextView.swift
//  CalculatorApps
//
//  Created by Nabilla on 17/02/20.
//  Copyright © 2020 PT Intersolusi Teknologi Asia. All rights reserved.
//

import UIKit

class BaseTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setView()
    }
    
    func setView() {
        self.textColor = UIColor.black
    }
    
}
