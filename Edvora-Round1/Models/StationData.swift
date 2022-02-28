//
//  StationData.swift
//  Edvora-Round1
//
//  Created by Ahmed Almohammed on 27/02/2022.
//

import Foundation

struct Station: Codable, Identifiable{
    let id: Int
    let origin_station_code: Int
    let station_path: [Int]
    let destination_station_code: Int
    let date: String
    let map_url: String
    let city: String
    let state: String
}
