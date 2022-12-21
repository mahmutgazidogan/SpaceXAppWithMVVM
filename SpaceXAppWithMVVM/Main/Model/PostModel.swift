//
//  PostModel.swift
//  SpaceXAppWithMVVM
//
//  Created by Mahmut Gazi Doğan on 21.12.2022.
//

import Foundation

// MARK: - PostModel
struct PostModel {
    let flightNumber: Int?
    let missionName: String?
    let launchYear: String?
    let launchDateUTC: String?
    let rocket: RocketModel?
    let links: LinksModel?
    let details: String?
}
