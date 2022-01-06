//
//  TeacherViewController.swift
//  AdvancedCoordinator
//
//  Created by Alliston Aleixo on 06/01/22.
//

import UIKit

class TeacherViewController: UIViewController, UIViewControllerConfigurable, Coordinatable {
  // MARK: - Properties
  var coordinator: Coordinator?
  var teacher: String?
  
  // MARK: - Views
  var teacherLabel: UILabel = {
    let teacherLabel = UILabel()
    teacherLabel.translatesAutoresizingMaskIntoConstraints = false
    teacherLabel.textAlignment = .center
    teacherLabel.font = UIFont.boldSystemFont(ofSize: 28)
    return teacherLabel
  }()
  
  // MARK: - Override Funcs
  override func viewDidLoad() {
    super.viewDidLoad()
    
    configureView()
    configureConstraints()
  }
  
  // MARK: - Protocol Funcs
  func configureView() {
    view.backgroundColor = .systemBackground
    
    self.teacherLabel.text = teacher
    self.title = teacher
    
    view.addSubview(self.teacherLabel)
  }
  
  func configureConstraints() {
    let teacherLabelConstraints = [
      teacherLabel.centerYAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerYAnchor),
      teacherLabel.leftAnchor.constraint(equalTo: self.view.leftAnchor),
      teacherLabel.rightAnchor.constraint(equalTo: self.view.rightAnchor),
      teacherLabel.heightAnchor.constraint(equalToConstant: 50.0)
    ]
    NSLayoutConstraint.activate(teacherLabelConstraints)
  }
}

