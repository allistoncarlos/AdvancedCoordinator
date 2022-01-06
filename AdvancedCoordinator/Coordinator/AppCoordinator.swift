//
//  AppCoordinator.swift
//  AdvancedCoordinator
//
//  Created by Alliston Aleixo on 06/01/22.
//

import UIKit

class AppCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var rootViewController: UIViewController

    init(rootViewController: UIViewController) {
        self.rootViewController = rootViewController
    }

    func start() {
//        let viewController = FirstViewController(coordinator: self)
//        viewController.title = "First Screen"
//        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    func navigateToSecondScreen() {
//        let viewController = SecondViewController(coordinator: self)
//        viewController.title = "Second Screen"
//
//        navigationController.pushViewController(viewController, animated: true)
    }
    
    func navigateToHome() {
//        navigationController.popToRootViewController(animated: true)
    }
}
