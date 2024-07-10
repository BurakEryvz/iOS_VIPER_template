//
//  CalculatorViewController.swift
//  Mellon_VIPER_Code
//
//  Created by Burak Eryavuz on 9.07.2024.
//

import UIKit

class CalculatorViewController: UIViewController {

  var presenter: CalculatorPresentation? // nil value - NOT WORKING
  
  @IBOutlet weak var resultLabel: UILabel!
  @IBOutlet weak var textFieldNumber1: UITextField!
  @IBOutlet weak var textFieldNumber2: UITextField!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    resultLabel.text = "0"
    CalculatorRouter.setupModule(ref: self  )
    
    if let presenter = presenter {
      presenter.viewDidLoad()
      print("Presenter in viewDidLoad is not nil")
    } else {
      print("Presenter in viewDidLoad is nil")
    }
      
  }
    

  @IBAction func additionButtonTapped(_ sender: UIButton) {
    if let number1 = textFieldNumber1.text, let number2 = textFieldNumber2.text {
      if let presenter = presenter {
        presenter.addition(number1: number1, number2: number2)
        print("Presenter in additionButtonTapped is not nil")
      } else {
        print("Presenter in additionButtonTapped is nil")
      }
      print("Success: \(#function), line \(#line), in \(#file)")
    }
  }
  

}

extension CalculatorViewController: CalculatorView {
  func sendResult(result: String) { // NOT WORKING
    self.resultLabel.text = result
    print("Success: \(#function), line \(#line), in \(#file)")
  }
  
  
}
