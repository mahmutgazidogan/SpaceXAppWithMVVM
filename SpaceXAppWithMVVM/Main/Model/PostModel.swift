//
//  PostModel.swift
//  SpaceXAppWithMVVM
//
//  Created by Mahmut Gazi Doğan on 21.12.2022.
//

import Foundation

// MARK: - PostModel
struct PostModel: Codable {
    let flightNumber: Int?
    let missionName: String?
    let launchYear: String?
    let launchDateUTC: String?
    let rocket: RocketModel?
    let links: LinksModel?
    let details: String?
    
    enum CodingKeys: String, CodingKey {
        case flightNumber = "flight_number"
        case missionName = "mission_name"
        case launchYear = "launch_year"
        case launchDateUTC = "launch_date_utc"
        case rocket = "rocket"
        case links = "links"
        case details = "details"
    }
    
}
