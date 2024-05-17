//
//  HomeView.swift
//  SplitBill
//
//  Created by Rahul on 17/05/24.
//

import SwiftUI

struct HomeView: View {
    
    @State private var showViewBalance: Bool = true
    
    var body: some View {
        VStack {
            Text("SplitWise")
                .font(.title)
                .background(Color.blue)
                .foregroundColor(.white)
//                .frame(width: .infinity)
        }
        
        HStack {
            Button(action: {
                showViewBalance = false
            }, label: {
                Text("Add")
                    .fontWeight(showViewBalance ? .light : .bold)
            })
            
            .padding()
            Spacer()
            Button(action: {
                showViewBalance = true
            }, label: {
                Text("ViewBalance")
                    .fontWeight(showViewBalance ? .bold : .light)
            })
            .padding()
        }
        
        if showViewBalance == true {
            BalanceView(totalAmount: 1000, shouldPayMembers: 2, PaidMember: 1)
        } else {
            AddPageView()
        }
    }
}

#Preview {
    HomeView()
}
