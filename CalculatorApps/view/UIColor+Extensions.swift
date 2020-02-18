//
//  UIColor+Extensions.swift
//  CalculatorApps
//
//  Created by Nabilla on 17/02/20.
//  Copyright © 2020 PT Intersolusi Teknologi Asia. All rights reserved.
//

import UIKit

extension UIColor {
    
    private static var isDarkMode: Bool {
        get {
            return UserDefaults.standard.bool(forKey: "isDarkMode")
        }
    }
    
    // VIEW
    static var borderColor: UIColor {
        if isDarkMode {
            return UIColor.fromRGB(red: 59, green: 145, blue: 108)
        } else {
            return UIColor.fromRGB(red: 245, green: 56, blue: 113)
        }
    }
    
    static var borderViewColor: UIColor {
        if isDarkMode {
            return UIColor.fromRGB(red: 28, green: 33, blue: 42)
        } else {
            return UIColor.white
        }
    }
    
    static var plainViewColor: UIColor {
        if isDarkMode {
            return UIColor.fromRGB(red: 38, green: 44, blue: 56)
        } else {
            return UIColor.fromRGB(red: 31, green: 31, blue: 74)
        }
    }
    
    // LABEL
    static var lightLabel: UIColor {
        if isDarkMode {
            return UIColor.white
        } else {
            return UIColor.lightGray
        }
    }
    
    static var boldLabel: UIColor {
        if isDarkMode {
            return UIColor.white
        } else {
            return UIColor.black
        }
    }
    
    static var whiteLabel: UIColor {
        return UIColor.white
    }
    
    static var blackLabel: UIColor {
        if isDarkMode {
            return UIColor.white
        } else {
            return UIColor.black
        }
    }
    
    // GENERAL
    static func fromRGB(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat = 1) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: alpha)
    }
    
}
