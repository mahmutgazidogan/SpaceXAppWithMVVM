//
//  ViewController.swift
//  SpaceXAppWithMVVM
//
//  Created by Mahmut Gazi Doğan on 20.12.2022.
//

import UIKit

class ViewController: UIViewController {
    let service: SpaceXProtocol = SpaceXService()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        service.fetchAllDatas { model in
            print(model)
        } onFail: { error in
            print(error)
        }

    }


}

