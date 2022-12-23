//
//  RocketModel.swift
//  SpaceXAppWithMVVM
//
//  Created by Mahmut Gazi Doğan on 21.12.2022.
//

import Foundation

// MARK: - Rocket
struct RocketModel: Codable {
    let rocketID: String?
    let rocketName: String?
    let rocketType: String?
    
    enum CodingKeys: String, CodingKey {
        case rocketID = "rocket_id"
        case rocketName = "rocket_name"
        case rocketType = "rocket_type"
    }
}
