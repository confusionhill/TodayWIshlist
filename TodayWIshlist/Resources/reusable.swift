//
//  reusable.swift
//  TodayWIshlist
//
//  Created by Farhandika Zahrir Mufti guenia on 03/06/21.
//

import Foundation
import SwiftUI

//Mark : Buat Deskripsi
struct Description: View {
    var isiDesc:String = """
Slim-fitting style, contrast raglan long sleeve, three-button henley placket, light weight & soft fabric for breathable and comfortable wearing. And Solid stitched shirts with round neck made for durability and a great fit for casual fashion wear and diehard baseball fans. The Henley style round neckline includes a three-button placket.
"""
    var isForItem:Bool = true
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .foregroundColor(.white)
            .padding(.horizontal)
            .frame(height:UIScreen.width)
            .overlay(HStack(){
                VStack(alignment:.leading) {
                    Text(isForItem ? "Description" : "About Me")
                        .font(.title)
                        .fontWeight(.semibold)
                        .padding(.bottom,10)
                    Text(isiDesc)
                    Spacer()
                }.padding()
                Spacer()
            }.padding()
            )
    }
}
