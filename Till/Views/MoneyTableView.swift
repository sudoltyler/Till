//
//  GridView.swift
//  Till
//
//  Created by Tyler Sudol on 10/19/24.
//

import SwiftUI

struct MoneyTableView: View {
    @State private var groups = MoneyGroup.defaultMoneyGroup
    @FocusState private var isQuantityFocused: Bool
    
    private var total: Double {
        groups[0].groupTotal() + groups[1].groupTotal()
    }

    var body: some View {
        Text("Count Drawer")
        List($groups) { $group in
            Section(header: Text($group.groupName.wrappedValue)) {
                ForEach($group.moneyList) { $moneyType in
                    HStack {
                        Text(moneyType.name)
                        TextField("Quantity", value: $moneyType.quantity, format: .number)
                            .focused($isQuantityFocused)
                            .textFieldStyle(.roundedBorder)
                            .keyboardType(.decimalPad)
                        Spacer()
                        Text(moneyType.total(), format: .currency(code: "USD"))
                    }
                }
            }
        }
        .listStyle(InsetGroupedListStyle())
        .toolbar {
            ToolbarItemGroup(placement: .keyboard) {
                Button("Done") {
                    isQuantityFocused.toggle()
                }
            }
        }
        Section(header: Text("Total")) {
            Text(total, format: .currency(code: "USD"))
        }
    }
}

#Preview {
    MoneyTableView()
}
