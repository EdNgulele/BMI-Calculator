//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Edilson Ngulele on 11/3/18.
//  Copyright © 2018 Edilson Ngulele. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var valueBmi : Float = 0.0;
    var userName : NSString = "";
    var age : Float = 0.0;

    
    @IBOutlet weak var textFieldUserName: UITextField!
    
    @IBOutlet weak var textFieldHeight: UITextField!
    
    @IBOutlet weak var textFieldWeight: UITextField!
    
    @IBOutlet weak var textFieldAge: UITextField!
    
    
    
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    }


    override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
    }

    
    @IBAction func resetFields(_ sender: Any) {
        textFieldUserName.text = nil;
        textFieldHeight.text = nil;
        textFieldWeight.text = nil;
        
        
    }
    

}
