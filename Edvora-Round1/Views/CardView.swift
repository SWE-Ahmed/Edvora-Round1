//
//  CardView.swift
//  Edvora-Round1
//
//  Created by Ahmed Almohammed on 27/02/2022.
//

import SwiftUI

struct CardView: View {
    let mapURL: String?
    let rideID: Int?
    let date: String?
    let imageURL: String?
    var body: some View {
        ZStack{
            RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
                .frame(width: 349, height: 228)
                .foregroundColor(Color("CardColor"))
            
            VStack (spacing: 55){
                AsyncImage(url: URL(string: imageURL ?? ""))
                    .frame(width: 340, height: 130)
                HStack (spacing: 100) {
                    Text("# \(rideID ?? 0)")
                    Text("\(Image(systemName: "calendar")) \(date ?? "none")")
                }
            }

    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(mapURL: "", rideID: 0, date: "", imageURL: "").previewDevice(PreviewDevice.init(rawValue: "iPhone 13 Pro Max"))
    }
}
}
