//
//  ThemeProtocol.swift
//  CalculatorApps
//
//  Created by Nabilla on 19/02/20.
//  Copyright © 2020 PT Intersolusi Teknologi Asia. All rights reserved.
//

import UIKit

protocol ThemeProtocol {
    var mainBackgroundColor: UIColor { get }
    var accentBackgroundColor: UIColor { get }
    var borderColor: UIColor { get }
    var mainTextColor: UIColor { get }
    var accentTextColor: UIColor { get }
}
