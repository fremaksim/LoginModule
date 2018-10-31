//
//  Coordinator.swift
//  MohistLoginModule
//
//  Created by mozhe on 2018/10/30.
//  Copyright © 2018 mozhe. All rights reserved.
//

import Foundation

public protocol Coordinator: class {
    var coordinators: [Coordinator] { get set }
}

public extension Coordinator {
    func addCoordinator(_ coordinator: Coordinator) {
        coordinators.append(coordinator)
    }
    
    func removeCoordinator(_ coordinator: Coordinator) {
        coordinators = coordinators.filter { $0 !== coordinator }
    }
    
    func removeAllCoordinators() {
        coordinators.removeAll()
    }
}
