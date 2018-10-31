//
//  LoginExtension.swift
//  MohistLoginModule
//
//  Created by mozhe on 2018/10/30.
//  Copyright © 2018 mozhe. All rights reserved.
//

import Foundation
import CTMediator

public extension CTMediator {
    
    @objc public func showLogin(callback: @escaping (String) -> Void) -> UIViewController? {
        let params = [
            "callback":callback,
            kCTMediatorParamsKeySwiftTargetModuleName:"Login"
            ] as [AnyHashable : Any]
        
        if let viewController = self.performTarget("Login", action: "LoginViewController", params: params, shouldCacheTarget: false) as? UIViewController {
            return viewController
        }
        return nil
        
    }
    
    
}
