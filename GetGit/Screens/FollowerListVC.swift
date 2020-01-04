//
//  FollowerListVC.swift
//  GetGit
//
//  Created by renks on 04.01.2020.
//  Copyright © 2020 renks. All rights reserved.
//

import UIKit

class FollowerListVC: UIViewController {
    
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true

    }
}
