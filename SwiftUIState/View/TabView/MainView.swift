//
//  MainView.swift
//  SwiftUIState
//
//  Created by Nadia Lovely on 01/07/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            CoffeeShop()
                .tabItem {
                    Label("Browse", systemImage: "cup.and.saucer")
                }
            CoffeeShop()
                .tabItem {
                    Label("TextKedua", systemImage: "cup.and.saucer")
                }

        }
        .tint(.purple)
    }
}

#Preview {
    MainView()
}
