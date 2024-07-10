//
//  CalculatorRouter.swift
//  Mellon_VIPER_Code
//
//  Created by Burak Eryavuz on 9.07.2024.
//

import Foundation
import UIKit

class CalculatorRouter {
  weak var view: UIViewController?
  
  static func setupModule(ref: CalculatorViewController) { // WORKING
   let presenter = CalculatorPresenter()
    
    ref.presenter = presenter
    ref.presenter?.interactor = CalculatorInteractor()
    ref.presenter?.view = ref
    ref.presenter?.interactor?.output = presenter
  }
}

extension CalculatorRouter: CalculatorWireframe {
  
}
