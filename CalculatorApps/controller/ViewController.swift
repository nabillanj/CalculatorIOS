//
//  ViewController.swift
//  CalculatorApps
//
//  Created by Nabilla on 17/02/20.
//  Copyright © 2020 PT Intersolusi Teknologi Asia. All rights reserved.
//

import UIKit

enum TipPercent: Double {
    case fifteen = 0.15
    case eighteen = 0.18
    case twenty = 0.20
}

class ViewController: UIViewController {

    @IBOutlet weak var tfBillAmount: UITextField!
    @IBOutlet weak var tipSegmentedControl: UISegmentedControl!
    @IBOutlet weak var viewBillAmount: BaseView!
    @IBOutlet weak var viewTipAmount: BorderView!
    @IBOutlet weak var viewResetButton: BaseView!
    @IBOutlet weak var viewParent: PlainView!
    @IBOutlet weak var lblTipAmount: UILabel!
    @IBOutlet weak var lblTotal: UILabel!
    @IBOutlet weak var lblTipPercent: UILabel!
    @IBOutlet weak var lblBillAmount: UILabel!
    @IBOutlet weak var lblTiltleTipAmount: UILabel!
    @IBOutlet weak var lblTitleTotal: UILabel!
    @IBOutlet weak var btnReset: UIButton!
    
    private var tipAmount: Double = 0.0
    private var tipPercent: TipPercent = .fifteen {
        didSet {
            guard let billAmount = Double(tfBillAmount.text!) else { return }
            let tip = tipPercent.rawValue * billAmount
            lblTipAmount.text = "\(tip)"
            lblTotal.text = "\(billAmount - tip)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        addNavigationBar()
    }
    
    fileprivate func setupView() {
        tipPercent = .fifteen
        tfBillAmount.becomeFirstResponder()
        tfBillAmount.addDoneReturnButton(selector: #selector(onReturnField(_:)), withTarget: self)
        tipSegmentedControl.selectedSegmentIndex = 0
        setupUI()
    }
    
    func addNavigationBar() {
        guard let navigationBar = navigationController?.navigationBar.bounds else {return}
        
        let view = UIView(frame: CGRect(x: 0, y: 0, width: navigationBar.width, height: navigationBar.height))
        let titleLabel = UILabel(frame: CGRect(x: 0, y: navigationBar.height / 2 - 8, width: 200, height: 20))
        titleLabel.text = "Tip Calculator"
        titleLabel.textColor = UIColor.white
        titleLabel.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        view.addSubview(titleLabel)

        let switchControl = UISwitch(frame: CGRect(x: navigationBar.width - 66, y: titleLabel.center.y - 16, width: 50, height: 50))
        switchControl.addTarget(self, action: #selector(onSwicthThemeMode(switchControl:)), for: .touchUpInside)
        view.addSubview(switchControl)
        
        let buttonItem = UIBarButtonItem(customView: view)
        navigationItem.rightBarButtonItem = buttonItem
        self.navigationController?.navigationBar.isTranslucent = false
    }

    // MARK: - Actions
    fileprivate func setupUI() {
        tipSegmentedControl.tintColor = Theme.current.borderColor
        viewBillAmount.backgroundColor = Theme.current.accentBackgroundColor
        viewResetButton.tintColor = Theme.current.accentBackgroundColor
        btnReset.backgroundColor = Theme.current.accentBackgroundColor
        viewParent.backgroundColor = Theme.current.mainBackgroundColor
        viewTipAmount.backgroundColor = Theme.current.mainBackgroundColor
        viewTipAmount.layer.borderColor = Theme.current.borderColor.cgColor
        
        lblBillAmount.textColor = Theme.current.accentTextColor
        lblTipPercent.textColor = Theme.current.accentTextColor
        lblTipAmount.textColor = Theme.current.mainTextColor
        lblTitleTotal.textColor = Theme.current.mainTextColor
        lblTiltleTipAmount.textColor = Theme.current.mainTextColor
        lblTotal.textColor = Theme.current.mainTextColor

        navigationController?.navigationBar.barTintColor =  Theme.current.accentBackgroundColor
    }
    
    @objc func onSwicthThemeMode(switchControl: UISwitch) {
        if switchControl.isOn {
            Theme.current = DarkTheme()
        } else {
            Theme.current = LightTheme()
        }
        setupUI()
    }

    @IBAction func onReturnField(_ sender: Any) {
        tfBillAmount.resignFirstResponder()
    }
    
    @IBAction func onClickSegmentedControl(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            tipPercent = .fifteen
        case 1:
            tipPercent = .eighteen
        case 2:
            tipPercent = .twenty
        default:
            break
        }
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

