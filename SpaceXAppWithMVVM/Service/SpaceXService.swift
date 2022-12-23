//
//  SpaceXService.swift
//  SpaceXAppWithMVVM
//
//  Created by Mahmut Gazi Doğan on 21.12.2022.
//

import Alamofire
import Foundation

enum SpaceXApi: String {
    case BASE_URL = "https://api.spacexdata.com/v2"
    case PATH = "/launches"
    
    static func apiURL() -> String {
        return "\(BASE_URL.rawValue)\(PATH.rawValue)"
    }
}

protocol SpaceXProtocol {
    func fetchAllDatas(onSuccess: @escaping ([PostModel]) -> Void, onFail: @escaping (String?) -> Void)
}

final class SpaceXService: SpaceXProtocol {
    func fetchAllDatas(onSuccess: @escaping ([PostModel]) -> Void, onFail: @escaping (String?) -> Void) {
        AF.request(SpaceXApi.apiURL(), method: .get).responseDecodable(of: [PostModel].self) { (response) in
            guard let data = response.value else {
                onFail(response.debugDescription)
                return
            }
            onSuccess(data)
        }
    }
}

