//
//  BalanceView.swift
//  SplitBill
//
//  Created by Rahul on 17/05/24.
//

import SwiftUI

struct expenseCalculation {
    var totalAmount: Double
    var splitAmount: Double
    var memberCount: Int
    var paidByCount: Int
    
    func calculateTheExp(totalAmount: Double, memberCount: Int) -> Double {
        return Double(Int(Double(totalAmount)) % Int(memberCount))
    }
}

struct BalanceView: View {
    
    var totalAmount: Double
    var shouldPayMembers: Double
    var PaidMember: Double
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Harish")
                })
                .frame(width: 100, height: 30)
                .background(Color.blue)
                .foregroundColor(.white)
                .buttonBorderShape(.roundedRectangle(radius: 18))
                .padding(.horizontal)
                Spacer()
                Text("\(totalAmount.formatted())")
            }
            .padding()
            
            HStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Yash")
                })
                .frame(width: 100, height: 30)
                .background(Color.blue)
                .foregroundColor(.white)
                .buttonBorderShape(.roundedRectangle(radius: 18))
                .padding(.horizontal)
                Spacer()
                Text("+703.32")
            }
            .padding()
            
            HStack {
                Button(action: {}, label: {
                    Text("Neha")
                })
                .frame(width: 100, height: 30)
                .background(Color.blue)
                .foregroundColor(.white)
                .buttonBorderShape(.roundedRectangle(radius: 18))
                .padding(.horizontal)
                Spacer()
                Text("+703.32")
            }
            .padding()
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("SIMPLYFY ALL ")
                    .font(.title2)
            })
            .frame(width: 200, height: 50)
            .background(Color.blue)
            .foregroundColor(.white)
            .buttonBorderShape(.roundedRectangle(radius: 18))
            Spacer()
        }
    }
}

#Preview {
    BalanceView(totalAmount: 1000.0, shouldPayMembers: 2, PaidMember: 1)
}
