//
//  Coins.swift
//  Till
//
//  Created by Tyler Sudol on 10/20/24.
//

import Foundation

struct Money: Identifiable {
    let id = UUID()
    let name: String
    let value: Float
    var quantity: String
}

extension Money {
    static let defaultCoins: [Money] =
    [
        Money(name: "Pennies", value: 0.01, quantity: "0"),
        Money(name: "Nickels", value: 0.05, quantity: "0"),
        Money(name: "Dimes", value: 0.10, quantity: "0"),
        Money(name: "Quarters", value: 0.25, quantity: "0"),
    ]
    static let defaultBills: [Money] =
    [
        Money(name: "Dollars", value: 1, quantity: "0"),
        Money(name: "Fives", value: 5, quantity: "0"),
        Money(name: "Tens", value: 10, quantity: "0"),
        Money(name: "Twenties", value: 20, quantity: "0")
    ]
}

struct MoneyGroup: Identifiable {
    var id = UUID()
    var groupName: String
    var moneyList : [Money]
}

extension MoneyGroup {
    static let defaultMoneyGroup: [MoneyGroup] =
    [
        MoneyGroup(groupName: "Coins", moneyList: Money.defaultCoins),
        MoneyGroup(groupName: "Bills", moneyList: Money.defaultBills)
    ]
}
