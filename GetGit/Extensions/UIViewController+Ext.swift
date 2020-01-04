//
//  UIViewController+Ext.swift
//  GetGit
//
//  Created by renks on 04.01.2020.
//  Copyright © 2020 renks. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func presentGGAlertOnMainThread(title: String, message: String, buttonTitle: String) {
        DispatchQueue.main.async {
            let alertVC = GGAlertVC(title: title, message: message, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .crossDissolve
            self.present(alertVC, animated: true)
        }
    }
}
