//
//  DataModelView.swift
//  TodayWIshlist
//
//  Created by Farhandika Zahrir Mufti guenia on 03/06/21.
//

import Foundation

class ItemToko:ObservableObject{
    private let myApi = "https://fakestoreapi.com/products"
    @Published var items = [Item]()
    
    func loadData() -> Void{
        guard let url = URL(string: myApi) else {
            print("error, items not loaded")
            return
        }
        let session = URLSession(configuration: .default)
        let request = session.dataTask(with: url) { (data,response,error) in
            if error == nil {
                if let safeData = data {
                    do{
                        let result =  try JSONDecoder().decode([Item].self, from: safeData)
                        DispatchQueue.main.async {
                            self.items = result
                            print(result)
                        }
                    } catch {
                        print(error)
                    }
                }
            }
        }
        request.resume()
            
    }
        
}


