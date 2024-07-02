//
//  CoffeeShopDetail.swift
//  SwiftUIState
//
//  Created by Nadia Lovely on 02/07/24.
//

import SwiftUI

struct CoffeeShopDetail: View {
    var data: Coffeeshop
    
    var body: some View {
        ScrollView {
            GeometryReader{
                reader in
                Image(data.image)
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .offset(y: -reader.frame(in: .global).minY)
                    // add parallax effects
                    .frame(
                        width: UIScreen.main.bounds.width,
                        height: max(reader.frame(in: .global).minY + 400, 0))
            }
            //default frame. error invalid frame dimension in horizontal screen ((gatau knp ))
            .frame(width: abs(.infinity), height: 400)
            
            VStack(alignment: .leading) {
                Text(data.name)
                    .font(.system(.largeTitle))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(Color.black)
                HStack(){
                    HStack{
                        Image(systemName: "star.fill")
                            .foregroundStyle(Color.yellow)
                        Text("4/5")
                            .font(.system(.subheadline))
                            .fontWeight(.semibold)
                            .foregroundStyle(Color.yellow)
                    }
                    Text("(15 review)")
                        .font(.system(.subheadline))
                        .fontWeight(.semibold)
                        .foregroundStyle(Color.yellow)
                }.padding(.bottom, 16)
                
                ZStack(alignment: .leading){
                    Color.green
                    Text("Location")
                        .font(.system(.subheadline))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(Color.white)
                        .padding()
                }
                .frame(width: 96, height: 30)
                .cornerRadius(100)
                Text(data.location)
                    .font(.system(.subheadline))
                    .foregroundStyle(Color.black)
                    .padding(.bottom, 20)
                
                ZStack(alignment: .leading){
                    Color.indigo
                    Text("Description")
                        .font(.system(.subheadline))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(Color.white)
                        .padding()
                }
                .frame(width: 120, height: 30)
                .cornerRadius(100)
                Text(data.description)
                    .padding(.bottom, 20)
                    .padding(.top, 2)
                    .foregroundStyle(Color.black)
                
                ZStack(alignment: .leading){
                    Color.teal
                    Text("Overview")
                        .font(.system(.subheadline))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(Color.white)
                        .padding()
                }
                .frame(width: 105, height: 30)
                .cornerRadius(100)
                Text(data.overview)
                    .padding(.top, 2)
                    .foregroundStyle(Color.black)
                    .padding(.bottom, 20)
                
                HStack{
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        HStack{
                            Image(systemName: "bookmark.fill")
                                .foregroundStyle(Color.white)
                            
                            Text("Bookmark")
                                .foregroundStyle(Color.white)
                            
                        }.padding(.vertical, 10)
                            .padding(.horizontal, 20)
                            .background(Color.blue)
                            .cornerRadius(10)
                    })
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        HStack{
                            Image(systemName: "menucard.fill")
                                .foregroundStyle(Color.white)
                            
                            Text("Menu")
                                .foregroundStyle(Color.white)
                            
                        }.padding(.vertical, 10)
                            .padding(.horizontal, 20)
                            .background(Color.brown)
                            .cornerRadius(10)
                    })
                    
                }
            }
            .padding([.horizontal, .vertical], 20)
            .background(Color.white)
            .cornerRadius(36)
            .offset(y: -30)
            .padding(.bottom, 60)
            
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .background(Color.white.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/))
    }
}

#Preview {
    CoffeeShopDetail(
        data: CoffeeshopProvider.allData().first!
    )
}
