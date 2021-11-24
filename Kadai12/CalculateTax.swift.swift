//
//  CalculateTax.swift.swift
//  Kadai12
//
//  Created by Hiroatsu on 2021/11/19.
//

import Foundation

// 計算するクラス
class CalculateTax {
    func calculator(price: Double, tax: Double) -> Double {
        price * (tax / 100 + 1)
    }
}
