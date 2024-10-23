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
    let groupName: String
    let value: Double
    var quantity: Double?
    
    func total() -> Double {
        return value * (quantity ?? 0)
    }
}

extension Money {
    static let defaultCoins: [Money] =
    [
        Money(name: "Pennies", groupName: "Coins", value: 0.01),
        Money(name: "Nickels", groupName: "Coins", value: 0.05),
        Money(name: "Dimes", groupName: "Coins", value: 0.10),
        Money(name: "Quarters", groupName: "Coins", value: 0.25),
    ]
    static let defaultBills: [Money] =
    [
        Money(name: "Dollars", groupName: "Bills", value: 1),
        Money(name: "Fives", groupName: "Bills", value: 5),
        Money(name: "Tens", groupName: "Bills", value: 10),
        Money(name: "Twenties", groupName: "Bills", value: 20)
    ]
}

struct MoneyGroup: Identifiable {
    var id = UUID()
    var groupName: String
    var moneyList: [Money]
    
    func groupTotal() -> Double {
        var total: Double = 0
        for money in moneyList {
            total += money.total()
        }
        return total
    }
}

extension MoneyGroup {
    static let defaultMoneyGroup: [MoneyGroup] =
    [
        MoneyGroup(groupName: "Coins", moneyList: Money.defaultCoins),
        MoneyGroup(groupName: "Bills", moneyList: Money.defaultBills)
    ]
}
