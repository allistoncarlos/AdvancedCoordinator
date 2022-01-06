//
//  AppCoordinator.swift
//  AdvancedCoordinator
//
//  Created by Alliston Aleixo on 06/01/22.
//

import UIKit

class AppCoordinator: Coordinator {
  var parentCoordinator: Coordinator?
  var childCoordinators: [Coordinator] = [Coordinator]()
  var rootViewController: UIViewController
  
  init(rootViewController: UIViewController) {
    self.rootViewController = rootViewController
  }
  
  func start() {
    let tabBarController = rootViewController as! AppTabBarController
    tabBarController.appCoordinator = self
  }

  func showTeachersTab() {
    let tabBarController = rootViewController as! AppTabBarController
    tabBarController.selectedIndex = 0
  }
  
  func showStudentsTab() {
    let tabBarController = rootViewController as! AppTabBarController
    tabBarController.selectedIndex = 1
  }
}
