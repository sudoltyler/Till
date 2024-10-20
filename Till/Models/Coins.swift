//
//  Coins.swift
//  Till
//
//  Created by Tyler Sudol on 10/20/24.
//

import Foundation

struct Coins: Identifiable {
    let id = UUID()
    let name: String
    let value: Float
}

extension Coins {
    static let baseData: [Coins] =
    [
        Coins(name: "Pennies", value: 0.01),
        Coins(name: "Nickels", value: 0.05),
        Coins(name: "Dimes", value: 0.10),
        Coins(name: "Quarters", value: 0.25),
    ]
}
