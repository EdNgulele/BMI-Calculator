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
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func resetFields(_ sender: Any) {
        textFieldUserName.text = nil;
        textFieldHeight.text = nil;
        textFieldWeight.text = nil;
        
    }
    
    func showAlert(){
        let alert = UIAlertController(title: "Alert", message: "Complete all fields", preferredStyle: UIAlertControllerStyle.alert);
        alert.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default, handler: nil));
        self.present(alert, animated: true, completion: nil);
    }
    
    @IBAction func calculateBmi(_ sender: Any) {
        
        guard let sUserName = self.textFieldUserName.text,
            self.textFieldUserName.text?.isEmpty == false else{
                showAlert()
                return
        }
        
        guard let sHeight = self.textFieldHeight.text,
            self.textFieldHeight.text?.isEmpty == false else {
                showAlert()
                return
        }
        
        guard let sWeight = self.textFieldWeight.text,
            self.textFieldWeight.text?.isEmpty == false  else{
                showAlert()
                return
        }
        
        guard let sAge = self.textFieldAge.text,
            self.textFieldAge.text?.isEmpty == false else{
                showAlert()
                return
        }
        
        
        let heightFloat = (sHeight as NSString).floatValue;
        let weightFloat = (sWeight as NSString).floatValue;
        let ageFloat = (sAge as NSString).floatValue;
        
        
        valueBmi = (weightFloat / (heightFloat * heightFloat))
        userName = sUserName as NSString;
        age = ageFloat;
        
    }
    
    
}
