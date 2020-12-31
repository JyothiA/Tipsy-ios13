//
//  Splitter.swift
//  Tipsy
//
//  Created by Jyothi Anandavally on 12/26/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Splitter {
    var amountAfterSplit: Float?
    var percentSelected: String?
    var peopleCount: Int? = 2
    
    func getSplitDetails() -> String {
        return "Split between \(peopleCount!) people, with \(percentSelected!) split."
    }
    
    func getSplitAmount() -> String {
        return String(amountAfterSplit ?? 0.0)
    }
    mutating func calculateSplit(billAmount: String) {
        let amount = Float(billAmount) ?? 0.0
        var tip = Int(percentSelected?.dropLast() ?? "0") ?? 0
        var people = peopleCount ?? 2
        let tipAmount = (amount * Float(tip))/100
        amountAfterSplit = (amount + tipAmount ) / Float(people)
        //amountAfterSplit = 23.50
    }
}
