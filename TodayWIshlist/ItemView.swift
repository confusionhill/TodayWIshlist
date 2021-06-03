//
//  ItemView.swift
//  TodayWIshlist
//
//  Created by Farhandika Zahrir Mufti guenia on 03/06/21.
//

import SwiftUI

struct ItemView: View {
    var price:Float = 999.99
    var name:String = "Lorem Ipsum DUi Amet minum Amer di Kubus"
    var desc:String = ""
    var imeg:String = "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg"
    var body: some View {
        ZStack{
            Color(customcolor).ignoresSafeArea()
            ScrollView(showsIndicators:false) {
                VStack{
                    //Mark : Image View
                    ImageView(imeg: imeg)
                        .padding(.bottom)
                    // Name and Price View
                    NameAndPrice(price: price,name: name)
                        .padding(.bottom)
                    //DescriptionView
                    Description(isiDesc: desc)
                        //.navigationTitle("Fjall Raven - Foldsack No.1 Backpack, fits 15 laptops")
                        //.navigationBarTitleDisplayMode(.large)
                        //. navigationBarHidden(true)
                    Spacer()
                }
            }
        }
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView()
    }
}

struct NameAndPrice: View {
    var price:Float
    var name:String
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .foregroundColor(.white)
            .padding(.horizontal)
            .frame(height:80)
            .overlay(
                HStack{
                    Text(name)
                        .foregroundColor(.black)
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                        .frame(width:UIScreen.width-200,height: 60)
                        .padding(.horizontal)
                    Spacer()
                    Text("$\(String(format: "%.2f", price))")
                        .fontWeight(.semibold)
                        .padding()
                        .foregroundColor(.green)
                }.padding()
            )
    }
}

struct ImageView: View {
    var imeg:String = "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg"
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .foregroundColor(.white)
            .padding(.horizontal)
            .frame(height:UIScreen.width)
            .overlay(VStack{
                RemoteImage(url: imeg)
                    .aspectRatio(contentMode: .fit)
                    /*
                    .resizable()
                    .aspectRatio(contentMode: .fit)*/
            }.padding()
            )
    }
}

