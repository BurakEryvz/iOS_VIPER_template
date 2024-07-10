//
//  CalculatorInteractor.swift
//  Mellon_VIPER_Code
//
//  Created by Burak Eryavuz on 9.07.2024.
//

import Foundation

class CalculatorInteractor {
  var output: CalculatorInteractorOutput?
}

extension CalculatorInteractor: CalculatorInteractorInput {
  
  
  func addition(number1: String, number2: String) { // NOT WORKING
    if let n1 = Int(number1), let n2 = Int(number2) {
      let result = n1 + n2
      let resultString = String(result)
      output?.sendResult(result: resultString) // NOT WORKING
      print("Success: \(#function), line \(#line), in \(#file)")
    }
  }
  
  
}
