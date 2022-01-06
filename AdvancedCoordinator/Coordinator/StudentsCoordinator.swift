//
//  StudentsCoordinator.swift
//  AdvancedCoordinator
//
//  Created by Alliston Aleixo on 06/01/22.
//

import UIKit

class StudentsCoordinator: Coordinator {
  var childCoordinators = [Coordinator]()
  var rootViewController: UIViewController
  
  init(rootViewController: UINavigationController) {
    self.rootViewController = rootViewController
  }
  
  func start() {
    let navigationViewController = rootViewController as! UINavigationController
    let studentsViewController = navigationViewController.children.first as! StudentsViewController
    studentsViewController.coordinator = self
  }
  
  func showStudent(student: String? = nil) {
    let navigationController = self.rootViewController as! UINavigationController
    
    let studentViewController = StudentViewController()
    studentViewController.student = student
    
    navigationController.show(studentViewController, sender: nil)
  }
}
