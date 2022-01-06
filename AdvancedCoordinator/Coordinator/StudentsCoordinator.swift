//
//  StudentsCoordinator.swift
//  AdvancedCoordinator
//
//  Created by Alliston Aleixo on 06/01/22.
//

import UIKit

class StudentsCoordinator: Coordinator {
  var parentCoordinator: Coordinator?
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
    studentViewController.coordinator = self
    studentViewController.student = student
    
    navigationController.show(studentViewController, sender: nil)
  }
  
  func showSelectedTeacher(teacher: String) {
    let navigationController = self.rootViewController as! UINavigationController
    navigationController.popViewController {
      if let parentCoordinator = self.parentCoordinator as? AppCoordinator {
        parentCoordinator.showTeachersTab()
        
        let teachersCoordinator = parentCoordinator.childCoordinators.first { $0 is TeachersCoordinator } as? TeachersCoordinator
        teachersCoordinator?.showTeacher(teacher: "Tony Stark")
      }
    }
  }
}
