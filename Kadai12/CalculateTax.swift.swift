//
//  CalculateTax.swift.swift
//  Kadai12
//
//  Created by Hiroatsu on 2021/11/19.
//

import Foundation

// 計算するクラス
class CalculateTax {
//    private var price: Double
//    private var tax: Double
//
//    init(price: Double, tax: Double) {
//        self.price = price
//        self.tax = tax / 100 + 1
//    }
//    func calculator() -> Double {
//        price * tax
//    }

    // イニシャライザに渡す形だと計算するたびにインスタンス生成する必要がある。（上記の形) / DIなどで困ることがある。

    // メソッドの引数として渡すほうがよい
    func calculator(price: Double, tax: Double) -> Double {
        price * (tax / 100 + 1)
    }
}
