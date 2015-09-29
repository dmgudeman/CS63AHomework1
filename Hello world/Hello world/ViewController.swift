//
//  ViewController.swift
//  Hello World
//
//  Created by David Gudeman on 9/23/15.
//  Copyright (c) 2015 David Gudeman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet var HelloWorldButton: UIButton!
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func HelloWorldClick(sender: AnyObject) {
    let clickAlert = UIAlertView(title: "My First iOS App", message: "Hello from David Gudeman", delegate: nil, cancelButtonTitle: "OK")
    clickAlert.show()
  }

}

