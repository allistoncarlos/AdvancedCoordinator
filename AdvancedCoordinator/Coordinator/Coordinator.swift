//
//  Coordinator.swift
//  AdvancedCoordinator
//
//  Created by Alliston Aleixo on 06/01/22.
//

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var rootViewController: UIViewController { get set }

    func start()
//    func navigateToSecondScreen()
//    func navigateToHome()
}
