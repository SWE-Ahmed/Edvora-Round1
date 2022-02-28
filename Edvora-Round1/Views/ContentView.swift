//
//  ContentView.swift
//  Edvora-Round1
//
//  Created by Ahmed Almohammed on 27/02/2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        VStack {
            HStack{
                Text("Edvora")
                    .bold()
                    .font(Font.system(size: 40))
                Spacer()
                Image("man").resizable().frame(width: 50, height: 50)
            }
            .padding()
            HStack(spacing: 50){
                Button("New"){
                    
                }
                Button("Upcoming"){
                    
                }
                Button("Past"){
                    
                }
                Button("\(Image(systemName: "menubar.dock.rectangle")) Filters"){
                    
                }
            }
            .padding()
            
            List(networkManager.availableStations){
                station in
                
                HStack{
                    CardView(mapURL: station.map_url, rideID: station.id, date: station.date, imageURL: station.map_url)
                }
            }
        }
        .onAppear(perform: {
            self.networkManager.fetchData()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice.init(rawValue: "iPhone 13 Pro Max"))
    }
}
