//
//  GridView.swift
//  Till
//
//  Created by Tyler Sudol on 10/19/24.
//

import SwiftUI

struct CoinTableView: View {
    @State private var coins = Coins.baseData
    @State private var qty: String = ""

    var body: some View {
        Text("Count Drawer")
        List {
            ForEach(coins) { coin in
                HStack {
                    Text(coin.name)
                    Spacer()
                    TextField("Quantity", text: $qty)
                }
            }
        }
        .listStyle(InsetGroupedListStyle())
    }
}

#Preview {
    CoinTableView()
}
