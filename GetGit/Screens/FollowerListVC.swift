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
        navigationController?.navigationBar.prefersLargeTitles = true
        
        
        NetworkManager.shared.getFollowers(for: username, page: 1) { (result) in
            
            switch result {
            case .success(let followers):
                print(followers)
            case .failure(let error):
                self.presentGGAlertOnMainThread(title: "Bad Stuff Happened", message: error.rawValue, buttonTitle: "Ok")
            }
        }
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}
