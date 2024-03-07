//
//  UIViewController+Ext.swift
//  GHFollowers
//
//  Created by Edwin Perez on 6/03/24.
//

import UIKit

extension UIViewController {
    
    func presentsGFAlertOnMainThread(title: String, message: String, buttonTitle: String) {
        DispatchQueue.main.async {
            let alertVC = GFAlertViewController(title: title, message: message, buttonTile: buttonTitle)
            
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .crossDissolve
            self.present(alertVC, animated: true)
        }
    }
}
