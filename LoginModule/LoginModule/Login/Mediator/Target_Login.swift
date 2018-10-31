//
//  Target_Login.swift
//  MohistLoginModule
//
//  Created by mozhe on 2018/10/30.
//  Copyright © 2018 mozhe. All rights reserved.
//

import UIKit

@objc class Target_Login: NSObject {
    
    @objc func Action_LoginViewController(pargms: [String: Any]) -> UIViewController {
        if let callback = pargms["callback"] as? (String) -> Void {
            callback("success")
        }
        let viewController = LoginViewController()
        return viewController
    }
    
    
}
