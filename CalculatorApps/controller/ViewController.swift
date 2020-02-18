//
//  ViewController.swift
//  CalculatorApps
//
//  Created by Nabilla on 17/02/20.
//  Copyright © 2020 PT Intersolusi Teknologi Asia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfBillAmount: BaseTextField!
    @IBOutlet weak var tipSegmentedControl: UISegmentedControl!
    @IBOutlet weak var lblTipAmount: PriceLabel!
    @IBOutlet weak var lblTotal: PriceLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        addNavigationBar()
    }
    
    fileprivate func setupView() {
        tfBillAmount.becomeFirstResponder()
        tfBillAmount.addDoneReturnButton(selector: #selector(tfBillAmount.resignFirstResponder))
        tipSegmentedControl.selectedSegmentIndex = 0
    }
    
    func addNavigationBar() {
        guard let navigationBar = navigationController?.navigationBar.bounds else {return}
        
        let view = UIView(frame: CGRect(x: 0, y: 0, width: navigationBar.width, height: navigationBar.height))
        let titleLabel = UILabel(frame: CGRect(x: 0, y: navigationBar.height / 2 - 8, width: 200, height: 20))
        titleLabel.text = "Tip Calculator"
        titleLabel.textColor = UIColor.lightLabel
        titleLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        view.addSubview(titleLabel)

        let switchControl = UISwitch(frame: CGRect(x: navigationBar.width - 66, y: titleLabel.center.y - 16, width: 50, height: 50))
        switchControl.addTarget(self, action: #selector(onSwicthThemeMode(switchControl:)), for: .touchUpInside)
        view.addSubview(switchControl)
        
        let buttonItem = UIBarButtonItem(customView: view)
        navigationItem.rightBarButtonItem = buttonItem
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.barTintColor = UIColor.borderViewColor
    }

    // MARK: - Actions
    @objc func onSwicthThemeMode(switchControl: UISwitch) {
        
    }

    @IBAction func onReturnField(_ sender: Any) {
        tfBillAmount.resignFirstResponder()
    }
    
    @IBAction func onClickSegmentedControl(_ sender: Any) {
        
    }
    
    @IBAction func onReturnResetButton(_ sender: Any) {
        tfBillAmount.text = ""
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return true
    }
}

