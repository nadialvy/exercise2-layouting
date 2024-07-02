//
//  CoffeeShop.swift
//  SwiftUIState
//
//  Created by Nadia Lovely on 01/07/24.
//

import SwiftUI

struct CoffeeShop: View {
//    @Environment(\.dismiss) var dismiss
    var listData: [Coffeeshop] = CoffeeshopProvider.allData()
    @State private var txt = "";
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(listData) {
                    data in
                    NavigationLink {
                        CoffeeShopDetail(data: data)
//                        i wanna create custom back button, but its not working functionally :/
//                            .navigationBarBackButtonHidden(true)
//                            .toolbar{
//                                ToolbarItem(placement: .topBarLeading){
//                                    Button(action: {
//                                       dismiss()
//                                    }, label: {
//                                        Image(systemName: "chevron.backward")
//                                            .foregroundStyle(Color.black)
//                                            .fontWeight(.bold)
//                                            .padding(10)
//                                            .background(Color.white)
//                                            .clipShape(Circle())
//                                            .opacity(0.6)
//                                    })
//                                }
//                            }
                    } label: {
                        CoffeeshopCard(coffeeshop: data)
                    }
                    
                }
                .listRowSeparator(.hidden)
            }
            .searchable(text: $txt)
            .refreshable {
                
            }
            .listStyle(.plain)
            .navigationTitle("CoffeeShop")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    CoffeeShop()
}
