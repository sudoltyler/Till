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
        List($moneyGroups) { $group in
            Section(header: Text($group.groupName.wrappedValue)) {
                ForEach($group.moneyList) { $moneyType in
                    HStack {
                        Text(moneyType.name)
                        TextField("Quantity", text: $moneyType.quantity)
                            .textFieldStyle(.roundedBorder)
                        Spacer()
                        Text("$0")
                    }
                }
            }
        }
        .listStyle(InsetGroupedListStyle())
        Section(header: Text("Total")) {
            Text("$000")
        }
    }
}

#Preview {
    MoneyTableView()
}
