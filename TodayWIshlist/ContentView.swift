//
//  ContentView.swift
//  TodayWIshlist
//
//  Created by Farhandika Zahrir Mufti guenia on 03/06/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var itemsToko = ItemToko()
    @State var isLoaded:Bool = true
    var body: some View {
        NavigationView {
            ZStack{
                Color(customcolor)
                    .ignoresSafeArea()
                ScrollView{
                    VStack {
                        //Mark : Navigation
                        if isLoaded{
                            ForEach(itemsToko.items,id:\.self){myitem in
                                NavigationLink(destination: ItemView(price: myitem.price, name: myitem.title, desc: myitem.description,imeg: myitem.image)) {
                                //Mark : Big Picture, Main slide, apapun itu
                                    mainPictureView(title: myitem.title, imeg:myitem.image)
                            }
                            .padding(.bottom)
                        }
                        } else {
                            Text("There's a problem with our server, please check our website for details")
                        }
                        Spacer()
                    }
                    .navigationTitle(Text("Today's Wishlist"))
                    .padding(.top)
                }
            }.navigationBarItems(trailing: NavigationLink(destination: About()) {
                //Mark : Big Picture, Main slide, apapun itu
                Image("dika")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    //.clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .mask(Circle())
                    .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            })
        }.onAppear{
           self.itemsToko.loadData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct mainPictureView: View {
    var title:String = "Loading..."
    var imeg:String = "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg"
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .foregroundColor(.white)
            .padding(.horizontal)
            .frame(height:UIScreen.width)
            .overlay(VStack{
                RemoteImage(url: imeg)
                    .aspectRatio(contentMode: .fit)
                Text(title)
                    .foregroundColor(.black)
                    .font(.headline)
                    .multilineTextAlignment(.center)
            }.padding()
            )
    }
}
