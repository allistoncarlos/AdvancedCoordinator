//
//  TeachersViewController.swift
//  AdvancedCoordinator
//
//  Created by Alliston Aleixo on 06/01/22.
//

import UIKit

class TeachersViewController: UITableViewController, UIViewControllerConfigurable, Coordinatable {
  // MARK: - Properties
  var coordinator: Coordinator?
  
  let teachers: [String] = [
    "Tony Stark",
    "Carol Danvers",
    "Steve Rogers",
    "Clint Barton",
    "Natasha Romanoff"
  ]
  
  // MARK: - Override Funcs
  override func viewDidLoad() {
    super.viewDidLoad()
    
    configureView()
    configureConstraints()
  }
  
  // MARK: - Protocol Funcs
  func configureView() {
    view.backgroundColor = .systemBackground
  }
  
  func configureConstraints() {
    
  }
  
  // MARK: - TableView funcs
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return teachers.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableViewCell(style: .default, reuseIdentifier: "teachersListViewCell")
    cell.textLabel?.text = teachers[indexPath.row]
    return cell
  }
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let teacher = teachers[indexPath.row]
    
    if let coordinator = self.coordinator as? TeachersCoordinator {
      coordinator.showTeacher(teacher: teacher)
      self.tableView.deselectRow(at: indexPath, animated: true)
    }
  }
}

