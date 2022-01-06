//
//  StudentViewController.swift
//  AdvancedCoordinator
//
//  Created by Alliston Aleixo on 06/01/22.
//

import UIKit

class StudentViewController: UIViewController, UIViewControllerConfigurable, Coordinatable {
  // MARK: - Properties
  var coordinator: Coordinator?
  var student: String?
  
  // MARK: - Views
  var studentLabel: UILabel = {
    let studentLabel = UILabel()
    studentLabel.translatesAutoresizingMaskIntoConstraints = false
    return studentLabel
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
    
    self.studentLabel.text = student
    self.title = student
    
    view.addSubview(self.studentLabel)
  }
  
  func configureConstraints() {
    let studentLabelConstraints = [
      studentLabel.centerYAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerYAnchor),
      studentLabel.leftAnchor.constraint(equalTo: self.view.leftAnchor),
      studentLabel.rightAnchor.constraint(equalTo: self.view.rightAnchor),
      studentLabel.heightAnchor.constraint(equalToConstant: 50.0)
    ]
    NSLayoutConstraint.activate(studentLabelConstraints)
  }
}


