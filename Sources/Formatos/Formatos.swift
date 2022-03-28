//
//  Formatos.swift
//  
//
//  Created by Jaime Feldman on 24-03-22.
//
// MIT License
// Copyright © 2021 Jaime Andrés Feldman B. 2021
//
// Permission is hereby granted, free of charge, to any person obtaining
// a copy of this software and associated documentation files (the "Software"),
// to deal in the Software without restriction, including without limitation
// the rights to use, copy, modify, merge, publish, distribute, sublicense,
// and/or sell copies of the Software, and to permit persons to whom the
// Software is furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included
// in all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
// EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
// OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
// IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
// DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
// TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE
// OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//


import Foundation

public extension Formatter {
    static let scientific: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .scientific
        formatter.positiveFormat = "0.###E+0"
        formatter.exponentSymbol = "e"
        return formatter
    }()
    static let number: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.groupingSeparator = ","
        formatter.decimalSeparator = "."
        return formatter
    }()
    static let peso: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.usesGroupingSeparator = true
        formatter.locale = Locale(identifier: "es_CL")
        return formatter
    }()
    static let dolar: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.usesGroupingSeparator = true
        formatter.locale = Locale(identifier: "en_US")
        return formatter
    }()
    static let euro: NumberFormatter = {
           let formatter = NumberFormatter()
           formatter.numberStyle = .currency
           formatter.usesGroupingSeparator = true
           formatter.locale = Locale(identifier: "es_ES")
           return formatter
    }()
    static let uf: NumberFormatter = {
            let formatter = NumberFormatter()
            formatter.numberStyle = .currency
            formatter.positiveFormat = "UF #,##0"
            formatter.negativeFormat = "UF -#,##0"

            return formatter
    }()
    static let real: NumberFormatter = {
            let formatter = NumberFormatter()
            formatter.locale = Locale(identifier: "pt_BR")
            formatter.numberStyle = .currency
            return formatter
    }()
    static let rublo: NumberFormatter = {
            let formatter = NumberFormatter()
            formatter.locale = Locale(identifier: "ru_RU")
            formatter.numberStyle = .currency
            formatter.maximumFractionDigits = 0
            return formatter
    }()
    static let yen: NumberFormatter = {
            let formatter = NumberFormatter()
            formatter.locale = Locale(identifier: "jp_JP")
            formatter.numberStyle = .currency
            return formatter
    }()
    static let libra: NumberFormatter = {
            let formatter = NumberFormatter()
            formatter.locale = Locale(identifier: "en_GB")
            formatter.numberStyle = .currency
            return formatter
    }()
}

public extension Numeric {
    var scientificFormat: String {
        return Formatter.scientific.string(for: self) ?? ""
    }
    var numberFormat: String {
        return Formatter.number.string(for: self) ?? ""
    }
    var moneyFormatCLP: String {
        return Formatter.peso.string(for: self) ?? ""
    }
    var moneyFormatUSD: String {
        return Formatter.dolar.string(for: self) ?? ""
    }
    var moneyFormatEuro: String {
        return Formatter.euro.string(for: self) ?? ""
    }
    var moneyFormatUF: String {
            return Formatter.uf.string(for: self) ?? ""
    }
    var moneyFormatYEN: String {
        return Formatter.yen.string(for: self) ?? ""
    }
    var moneyFormatRBR: String {
        return Formatter.real.string(for: self) ?? ""
    }
    var moneyFormatRUB: String {
        return Formatter.rublo.string(for: self) ?? ""
    }
    var moneyFormatGBP: String {
        return Formatter.libra.string(for: self) ?? ""
    }
    var hexFormat: String {
        if let value = self as? Int {
            return String(format: "%02X", value)
        }
        return "0"
    }
    var binaryFormat: String {
        if let value = self as? Int {
            return String(value, radix: 2)
        }
        return "0"
    }
}



