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
    studentLabel.textAlignment = .center
    studentLabel.font = UIFont.boldSystemFont(ofSize: 28)
    return studentLabel
  }()
  
  var teacherButton: UIButton = {
    let teacherButton = UIButton(configuration: .filled(), primaryAction: nil)
    teacherButton.setTitle("Show Tony Stark teacher", for: .normal)
    teacherButton.translatesAutoresizingMaskIntoConstraints = false
    teacherButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    return teacherButton
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
    view.addSubview(self.teacherButton)
  }
  
  func configureConstraints() {
    let studentLabelConstraints = [
      studentLabel.centerYAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerYAnchor),
      studentLabel.leftAnchor.constraint(equalTo: self.view.leftAnchor),
      studentLabel.rightAnchor.constraint(equalTo: self.view.rightAnchor),
      studentLabel.heightAnchor.constraint(equalToConstant: 50.0)
    ]
    NSLayoutConstraint.activate(studentLabelConstraints)
    
    let teacherButtonConstraints = [
      teacherButton.topAnchor.constraint(equalTo: studentLabel.bottomAnchor, constant: 20),
      teacherButton.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 20),
      teacherButton.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -20),
      teacherButton.heightAnchor.constraint(equalToConstant: 50.0)
    ]
    NSLayoutConstraint.activate(teacherButtonConstraints)
  }
  
  // MARK: - Actions
  @objc func buttonTapped() {
    if let studentCoordinator = self.coordinator as? StudentsCoordinator {
      studentCoordinator.showSelectedTeacher(teacher: "Tony Stark")
    }
  }
}


