//
//  TeachersViewController.swift
//  AdvancedCoordinator
//
//  Created by Alliston Aleixo on 06/01/22.
//

import UIKit

class TeachersViewController: UIViewController, UIViewControllerConfigurable, Coordinatable {
  // MARK: - Properties
  var coordinator: Coordinator?
  
  // MARK: - Views
  var button: UIButton = {
    let button = UIButton(configuration: .filled(), primaryAction: nil)
    button.setTitle("Next", for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    return button
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
    
    view.addSubview(button)
  }
  
  func configureConstraints() {
    let buttonConstraints = [
      button.centerYAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerYAnchor),
      button.leftAnchor.constraint(equalTo: self.view.leftAnchor),
      button.rightAnchor.constraint(equalTo: self.view.rightAnchor),
      button.heightAnchor.constraint(equalToConstant: 50.0)
    ]
    NSLayoutConstraint.activate(buttonConstraints)
  }
  
  // MARK: - Actions
  @objc func buttonTapped() {
    //        self.coordinator?.navigateToSecondScreen()
  }
}

