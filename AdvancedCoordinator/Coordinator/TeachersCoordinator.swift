//
//  TeachersCoordinator.swift
//  AdvancedCoordinator
//
//  Created by Alliston Aleixo on 06/01/22.
//

import UIKit

class TeachersCoordinator: Coordinator {
  var parentCoordinator: Coordinator?
  var childCoordinators = [Coordinator]()
  var rootViewController: UIViewController
  
  init(rootViewController: UINavigationController) {
    self.rootViewController = rootViewController
  }
  
  func start() {
    let navigationViewController = rootViewController as! UINavigationController
    let teachersViewController = navigationViewController.children.first as! TeachersViewController
    teachersViewController.coordinator = self
  }
  
  func showTeacher(teacher: String? = nil) {
    let navigationController = self.rootViewController as! UINavigationController
    
    let teacherViewController = TeacherViewController()
    teacherViewController.coordinator = self
    teacherViewController.teacher = teacher
    
    navigationController.show(teacherViewController, sender: nil)
  }
}
