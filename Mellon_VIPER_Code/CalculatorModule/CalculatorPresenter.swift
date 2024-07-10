//
//  CalculatorPresenter.swift
//  Mellon_VIPER_Code
//
//  Created by Burak Eryavuz on 9.07.2024.
//

import Foundation

class CalculatorPresenter {
  var view: CalculatorView?
  var router: CalculatorWireframe?
  var interactor: CalculatorInteractorInput?
}

extension CalculatorPresenter: CalculatorPresentation {
  
  
  
  func viewDidLoad() { // WORKING
    print("Success: \(#function), line \(#line), in \(#file)")
  }
  
  func addition(number1: String, number2: String) { // NOT WORKING
    interactor?.addition(number1: number1, number2: number2)
    print("Success: \(#function), line \(#line), in \(#file)")
  }
}

extension CalculatorPresenter: CalculatorInteractorOutput {
  func sendResult(result: String) { // NOT WORKING
    view?.sendResult(result: result)
    print("Success: \(#function), line \(#line), in \(#file)")
  }
}
