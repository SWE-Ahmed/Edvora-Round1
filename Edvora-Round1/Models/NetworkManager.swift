//
//  NetworkManager.swift
//  Edvora-Round1
//
//  Created by Ahmed Almohammed on 27/02/2022.
//

import Foundation
import SwiftUI


class NetworkManager: ObservableObject{
    
    @Published var availableStations = [Station]()
    
    func fetchData(){
        if let ridesURL = URL(string: "https://assessment.api.vweb.app/rides"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: ridesURL){
                (data, response, error) in
                
                if error == nil{
                    let decoder = JSONDecoder()
                    if let safeData = data{
                        do{
                            let decodedData = try decoder.decode([Station].self, from: safeData)
                            DispatchQueue.main.async {
                                self.availableStations = decodedData
                            }
                        } catch{
                            print(error)
                        }
                    }
                }
            }
            
            task.resume()
        }
    }
}
