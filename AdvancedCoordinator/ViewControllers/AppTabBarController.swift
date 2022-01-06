//
//  AppTabBarController.swift
//  AdvancedCoordinator
//
//  Created by Alliston Aleixo on 06/01/22.
//

import UIKit

class AppTabBarController: UITabBarController, UITabBarControllerDelegate {
  // MARK: - Coordinators
  private let teachersCoordinator: TeachersCoordinator
  private let studentsCoordinator: StudentsCoordinator
  
  private let teachersNavigationController: UINavigationController
  private let studentsNavigationController: UINavigationController
  
  // MARK: - Init
  init() {
    let teachersViewController = TeachersViewController()
    teachersViewController.title = "Teachers"
    let studentsViewController = StudentsViewController()
    studentsViewController.title = "Students"
    
    self.teachersNavigationController = UINavigationController(rootViewController: teachersViewController)
    self.teachersNavigationController.navigationBar.prefersLargeTitles = true
    self.studentsNavigationController = UINavigationController(rootViewController: studentsViewController)
    self.studentsNavigationController.navigationBar.prefersLargeTitles = true
    
    self.studentsCoordinator = StudentsCoordinator(rootViewController: teachersNavigationController)
    self.teachersCoordinator = TeachersCoordinator(rootViewController: studentsNavigationController)
    
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  // MARK: - Override Funcs
  override func viewDidLoad() {
    super.viewDidLoad()
    self.delegate = self
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    
    let tabOneBarItem = UITabBarItem(title: "Teachers", image: UIImage(systemName: "person.circle"), tag: 0)
    self.teachersNavigationController.tabBarItem = tabOneBarItem
    
    let tabTwoBarItem = UITabBarItem(title: "Students", image: UIImage(systemName: "person.circle.fill"), tag: 1)
    self.studentsNavigationController.tabBarItem = tabTwoBarItem
    
    self.viewControllers = [self.teachersNavigationController, self.studentsNavigationController]
  }
}
