//
//  LinksModel.swift
//  SpaceXAppWithMVVM
//
//  Created by Mahmut Gazi Doğan on 21.12.2022.
//

import Foundation

// MARK: - Links
struct LinksModel: Codable {
    let missionPatch: String?
    let missionPatchSmall: String?
    
    enum CodingKeys: String, CodingKey {
        case missionPatch = "mission_patch"
        case missionPatchSmall = "mission_patch_small"
    }
}
