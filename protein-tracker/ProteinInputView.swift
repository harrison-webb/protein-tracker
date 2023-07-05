//
//  ProteinInputView.swift
//  protein-tracker
//
//  Created by Harrison Webb on 7/4/23.
//

import SwiftUI

struct ProteinInputView: View {
    @State private var dailyProtein = 0 //this needs to be moved to corestorage or wherever
    @State private var proteinAmount = 0
   
    private let formatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.zeroSymbol = ""
        return formatter
    }()
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Enter protein amount (g)", value: $proteinAmount, formatter: formatter)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.decimalPad)
                    .padding()
                    .onSubmit {
                        print("ok")
                    }
                    .submitLabel(.done)
                
                Spacer()
                
                Button("💪") {
                    dailyProtein += proteinAmount
                    proteinAmount = 0
                }
                .padding()
                .frame(width: 100, height: 100)
                .background(Color.mint)
                .clipShape(Circle())
                
                Text("Today's protein:")
                    .font(.largeTitle)
                Text("\(dailyProtein)g")
                    .font(.largeTitle)
            }
        }
        .scrollDismissesKeyboard(.interactively)
    }
}

struct ProteinInputView_Previews: PreviewProvider {
    static var previews: some View {
        ProteinInputView()
    }
}
