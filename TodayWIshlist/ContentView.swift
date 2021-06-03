//
//  ContentView.swift
//  TodayWIshlist
//
//  Created by Farhandika Zahrir Mufti guenia on 03/06/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack{
                Color(customcolor)
                    .ignoresSafeArea()
                ScrollView{
                    VStack {
                        NavigationLink(destination: About()) {
                            //Mark : Big Picture, Main slide, apapun itu
                            Text("About la")
                        }
                        //Mark : Navigation
                        ForEach(0..<4){_ in
                            NavigationLink(destination: ItemView()) {
                                //Mark : Big Picture, Main slide, apapun itu
                                mainPictureView()
                            }
                            .padding(.bottom)
                        }
                        Spacer()
                    }
                    .navigationTitle(Text("Today's Wishlist").font(.system(.body, design: .rounded)))
                    .padding(.top)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct mainPictureView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .foregroundColor(.white)
            .padding(.horizontal)
            .frame(height:UIScreen.width)
            .overlay(VStack{
                Image("backpack")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text("Fjall Raven - Foldsack No.1 Backpack, fits 15 laptops")
                    .foregroundColor(.black)
                    .font(.headline)
                    .multilineTextAlignment(.center)
            }.padding()
            )
    }
}
