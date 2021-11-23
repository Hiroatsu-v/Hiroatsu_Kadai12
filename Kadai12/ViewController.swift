//
//  ViewController.swift
//  Kadai12
//
//  Created by Hiroatsu on 2021/11/17.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var taxExcludedTextField: UITextField!
    @IBOutlet private weak var taxTextField: UITextField!
    @IBOutlet private weak var taxIncludedLabel: UILabel!

    let userDefaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        let loadTaxRate = userDefaults.double(forKey: "taxRate")
        taxTextField.text = String(format: "%.0f", loadTaxRate)
    }

    @IBAction private func calculateButton(_ sender: Any) {
        guard let taxExcludedPrice = Int(taxExcludedTextField.text!) else { return }
        guard let taxRate = Double(taxTextField.text!) else { return }
        userDefaults.set(taxRate, forKey: "taxRate")
        let calculateTax = CalculateTax(price: Double(taxExcludedPrice), tax: Double(taxRate))
        let result = calculateTax.calculator()
        taxIncludedLabel.text = String(format: "%.0f", result)
    }
}
