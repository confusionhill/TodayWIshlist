//
//  About.swift
//  TodayWIshlist
//
//  Created by Farhandika Zahrir Mufti guenia on 03/06/21.
//

import SwiftUI

struct About: View {
    let deskripsiDika:String = """
Farhandika, seorang mahasiswa asal Riau yang lahir di Bogor, 24 Februari 2001 dan sekarang sedang menempuh pendidikan jenjang sarjana di Institut Teknologi Bandung.
\nDika, sebagaimana orang memanggilnya sangat tertarik pada dunia komputer, terutama di bidang Mobile Development, Hardware, Operation System, dan yang pastinya Website Development.
"""
    var body: some View {
        ZStack {
            Color(customcolor).ignoresSafeArea()
            ScrollView(showsIndicators:false) {
                VStack{
                Content()
                    .navigationTitle("About Me")
                Description(isiDesc:self.deskripsiDika,isForItem:false)
                }
            }
        }
    }
}

struct About_Previews: PreviewProvider {
    static var previews: some View {
        About()
    }
}

struct Content: View {

    var body: some View {
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(.white)
                .padding(.horizontal)
                .frame(height:UIScreen.width+100)
                .overlay(VStack{
                    Image("dika")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        //.clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .mask(Circle())
                    Spacer()
                    Text("Farhandika Zahrir Mufti Guenia")
                        .font(.title)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                    Text("fdika24@outlook.com")
                }.padding([.top,.bottom]))
            Spacer()
    }
}
