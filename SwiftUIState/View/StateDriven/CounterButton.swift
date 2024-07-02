//
//  CounterButton.swift
//  SwiftUIState
//
//  Created by Nadia Lovely on 01/07/24.
//

import SwiftUI

struct CounterButton: View {
    // binding ga perlu prvate karena mau diakses di file lain
    @Binding var counter: Int
    
    var body: some View {
        Button{
        } label: {
            Circle()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                .foregroundStyle(.green)
                .overlay{
                    Text("\(counter)")
                        .font(.system(.largeTitle))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(.white)
                }
        }
    }
}

#Preview {
//    initialize param value for preview only
    @State var counter = 1
//    must add return keyword
    return CounterButton(counter: $counter)
}
