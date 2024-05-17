//
//  AddPageView.swift
//  SplitBill
//
//  Created by Rahul on 17/05/24.
//

import SwiftUI

struct AddPageView: View {
    
    @State private var expensesValue: String = "Lunch"
    @State private var totalValue:String = ""
    
    var fieldText: String = ""
    var body: some View {
        VStack {
            HStack {
                Text("Expenses")
                TextField(
                        "Lunch",
                        text: $expensesValue
                    )
            }.padding()
            
            HStack {
                Text("Total")
                TextField(
                        "Total Expenses",
                        text: $totalValue
                    )
            }.padding()
            
            VStack {
                Text("Paid By")
                    .font(.headline)
                    .padding(.horizontal)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Harish")
                })
                .frame(width: 100, height: 30)
                .background(Color.blue)
                .foregroundColor(.white)
                .buttonBorderShape(.roundedRectangle(radius: 18))
                .padding(.horizontal)
                
                Spacer()
                Text("Participents")
                    .font(.headline)
                    .padding(.horizontal)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Harish")
                })
                .frame(width: 100, height: 30)
                .background(Color.blue)
                .foregroundColor(.white)
                .buttonBorderShape(.roundedRectangle(radius: 18))
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Neha")
                })
                .frame(width: 100, height: 30)
                .background(Color.blue)
                .foregroundColor(.white)
                .buttonBorderShape(.roundedRectangle(radius: 18))
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Add")
                })
                .frame(width: 100, height: 30)
                .background(Color.blue)
                .foregroundColor(.white)
                .buttonBorderShape(.roundedRectangle(radius: 18))
                Spacer()
            }
        }
    }
}

#Preview {
    AddPageView()
}
