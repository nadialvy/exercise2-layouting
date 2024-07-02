//
//  CoffeeshopCard.swift
//  SwiftUIState
//
//  Created by Nadia Lovely on 01/07/24.
//

import SwiftUI

struct CoffeeshopCard: View {
    var coffeeshop: Coffeeshop
    
    var body: some View {
        HStack{
            Image(coffeeshop.image)
                .resizable() //wajib di awal
                .scaledToFit() //biar ada bayangan mau dipotong brp x brp
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .clipShape(RoundedRectangle(cornerRadius: 12)) //8, 10, 12, 14, 16 dst. guideline dari apple
            
            VStack(alignment: .leading, spacing: 8) {
                Text(coffeeshop.name)
                    .font(.system(.headline, design: .rounded))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                
                Text(coffeeshop.description)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                    .truncationMode(/*@START_MENU_TOKEN@*/.tail/*@END_MENU_TOKEN@*/)
                    .font(.subheadline)
                    
                Text(coffeeshop.location)
                    .foregroundStyle(.secondary)
                    .font(.caption)
                
            }
        }
    }
}

#Preview {
    CoffeeshopCard(
        coffeeshop: CoffeeshopProvider.allData().first!
    )
}
