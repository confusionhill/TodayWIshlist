//
//  DataModel.swift
//  TodayWIshlist
//
//  Created by Farhandika Zahrir Mufti guenia on 03/06/21.
//

import Foundation


struct Item:Identifiable,Codable,Hashable{
    var id:Int
    var title:String
    var price:Float
    var description:String
    var image:String
}
