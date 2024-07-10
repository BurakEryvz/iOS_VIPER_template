//
//  CalculatorContracts.swift
//  Mellon_VIPER_Code
//
//  Created by Burak Eryavuz on 9.07.2024.
//

import Foundation

protocol CalculatorView: AnyObject { // PRESENTER -> VIEW
  
  func sendResult(result: String)
}

protocol CalculatorPresentation : AnyObject{ // VIEW -> PRESENTER
  var interactor: CalculatorInteractorInput? {get set}
  var view: CalculatorView? {get set}
  var router: CalculatorWireframe? {get set}
  
  func viewDidLoad()
  func addition(number1: String, number2: String)
}

protocol CalculatorInteractorInput: AnyObject { // PRESENTER -> INTERACTOR
  var output: CalculatorInteractorOutput? {get set}
  
  func addition(number1: String, number2: String)
}

protocol CalculatorInteractorOutput: AnyObject { // INTERACTOR -> PRESENTER
  func sendResult(result: String)
}

protocol CalculatorWireframe: AnyObject { // PRESENTER -> ROUTER
}
