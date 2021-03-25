//
//  ResponseModel.swift
//  Request
//
//  Created by Mahmut MERCAN on 25.03.2021.
//

import Foundation


struct Response: Codable {
    
    let results: MyResult
    let sta: String
    
    private enum CodingKeys: String, CodingKey {
        case results
        case sta = "status"
    }

}

struct MyResult: Codable {
    let sunrise: String
    let sunset: String
    let solar_noon: String
    let day_length: Int
    let civil_twilight_begin: String
    let civil_twilight_end: String
    let nautical_twilight_begin: String
    let nautical_twilight_end: String
    let astronomical_twilight_begin: String
    let astronomical_twilight_end: String
}

