//
//  ViewController.swift
//  CIS55Lab1A
//
//  Created by David Gudeman on 9/27/15.
//  Copyright (c) 2015 David Gudeman. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
  
  // MARK: UITextFieldDelegate
  func textFieldShouldReturn(textField: UITextField) -> Bool {
  
    // Hide the keyboard.
    textField.resignFirstResponder()
    return true
  }
  
  func textFieldDidEndEditing(textField: UITextField) {
    outputLabel.text = textField.text
  }
  
  // MARK: Properties
  @IBOutlet weak var nameTextField: UITextField!
  @IBOutlet weak var outputLabel: UILabel!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Handle the text field’s user input through delegate callbacks.
    nameTextField.delegate = self
    

  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  // MARK: Actions

  @IBAction func changeOutputLabel(sender: UIButton) {
    outputLabel.text = nameTextField.text
    
  }

}

