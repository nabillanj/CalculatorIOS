//
//  UITextfield+Extensions.swift
//  CalculatorApps
//
//  Created by Nabilla on 18/02/20.
//  Copyright © 2020 PT Intersolusi Teknologi Asia. All rights reserved.
//

import UIKit

extension UITextField {
    func addDoneReturnButton(selector: Selector?, withTarget target: Any = self) {
        let toolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 40))
        toolbar.barStyle = .default
        
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: target, action: selector)
        
        let arrayOfItems: [UIBarButtonItem] = [flexibleSpace, doneButton]
        toolbar.items = arrayOfItems
        toolbar.sizeToFit()
        
        self.inputAccessoryView = toolbar
    }
}
