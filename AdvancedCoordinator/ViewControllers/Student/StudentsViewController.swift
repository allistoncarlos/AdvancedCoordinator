//
//  StudentsViewController.swift
//  AdvancedCoordinator
//
//  Created by Alliston Aleixo on 06/01/22.
//

import UIKit

class StudentsViewController: UITableViewController, UIViewControllerConfigurable, Coordinatable {
  // MARK: - Properties
  var coordinator: Coordinator?
  
  let students: [String] = [
    "Peter Parker",
    "Kamala Khan",
    "Sam Wilson",
    "Kate Bishop",
    "Yelena Belova"
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
    return students.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableViewCell(style: .default, reuseIdentifier: "studentsListViewCell")
    cell.textLabel?.text = students[indexPath.row]
    return cell
  }
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let student = students[indexPath.row]
    
    if let coordinator = self.coordinator as? StudentsCoordinator {
      coordinator.showStudent(student: student)
    }
  }
}

