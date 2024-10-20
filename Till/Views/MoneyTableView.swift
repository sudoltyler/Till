//
//  GridView.swift
//  Till
//
//  Created by Tyler Sudol on 10/19/24.
//

import SwiftUI

struct MoneyTableView: View {
    @State private var moneyGroups = MoneyGroup.defaultMoneyGroup
    @State private var qty: String = ""

    var body: some View {
        Text("Count Drawer")
        List {
            ForEach(moneyGroups) { group in
                Section(header: Text(group.groupName)) {
                    ForEach(group.moneyList) { money in
                        HStack {
                            Text(money.name)
                            Spacer()
                            TextField("Quantity", text: $qty)
                        }
                    }
                }
            }
        }
        .listStyle(InsetGroupedListStyle())
    }
}

#Preview {
    MoneyTableView()
}
