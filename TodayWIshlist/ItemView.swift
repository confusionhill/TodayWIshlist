//
//  ItemView.swift
//  TodayWIshlist
//
//  Created by Farhandika Zahrir Mufti guenia on 03/06/21.
//

import SwiftUI

struct ItemView: View {
    var body: some View {
        ZStack{
            Color(customcolor).ignoresSafeArea()
            ScrollView(showsIndicators:false) {
                VStack{
                    //Mark : Image View
                    ImageView()
                        .padding(.bottom)
                    // Name and Price View
                    NameAndPrice()
                        .padding(.bottom)
                    //DescriptionView
                    Description()
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
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .foregroundColor(.white)
            .padding(.horizontal)
            .frame(height:80)
            .overlay(
                HStack{
                    Text("Fjall Raven - Foldsack No.1 Backpack, fits 15 laptops")
                        .foregroundColor(.black)
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                        .frame(width:UIScreen.width-150)
                    Spacer()
                    Text("$999")
                        .font(.title)
                        .fontWeight(.semibold)
                        .padding()
                        .foregroundColor(.green)
                }.padding()
            )
    }
}

struct ImageView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .foregroundColor(.white)
            .padding(.horizontal)
            .frame(height:UIScreen.width)
            .overlay(VStack{
                Image("backpack")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }.padding()
            )
    }
}

struct Description: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .foregroundColor(.white)
            .padding(.horizontal)
            .frame(height:UIScreen.width)
            .overlay(HStack(){
                VStack(alignment:.leading) {
                    Text("Description")
                        .font(.title)
                        .fontWeight(.semibold)
                        .padding(.bottom,10)
                    Text("""
Slim-fitting style, contrast raglan long sleeve, three-button henley placket, light weight & soft fabric for breathable and comfortable wearing. And Solid stitched shirts with round neck made for durability and a great fit for casual fashion wear and diehard baseball fans. The Henley style round neckline includes a three-button placket.
""")
                    Spacer()
                }.padding()
                Spacer()
            }.padding()
            )
    }
}
