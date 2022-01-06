//
//  UINavigationController.swift
//  AdvancedCoordinator
//
//  Created by Alliston Aleixo on 06/01/22.
//

import UIKit

extension UINavigationController {
  func popViewController(completion: @escaping ()->()) {
    CATransaction.begin()
    CATransaction.setCompletionBlock(completion)
    self.popViewController(animated: true)
    CATransaction.commit()
  }
  
  func pushViewController(viewController: UIViewController, completion: @escaping ()->()) {
    CATransaction.begin()
    CATransaction.setCompletionBlock(completion)
    self.pushViewController(viewController, animated: true)
    CATransaction.commit()
  }
}
