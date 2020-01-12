//
//  UserInfoVC.swift
//  GetGit
//
//  Created by renks on 12.01.2020.
//  Copyright © 2020 renks. All rights reserved.
//

import UIKit

class UserInfoVC: UIViewController {
    
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissVC))
        navigationItem.rightBarButtonItem = doneButton
        
        NetworkManager.shared.getUserinfo(for: username) { [weak self] result in
            guard let self = self else { return }
            switch result {
            case .success(let user):
                print(user)
            case .failure(let error):
                self.presentGGAlertOnMainThread(title: "Something went wrong.", message: error.rawValue, buttonTitle: "Ok")
                break
            }
        }
    }
    
    
    @objc func dismissVC() {
        dismiss(animated: true)
    }
    

}
