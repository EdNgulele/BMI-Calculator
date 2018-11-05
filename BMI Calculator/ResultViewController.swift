//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Edilson Ngulele on 11/5/18.
//  Copyright © 2018 Edilson Ngulele. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var valueBmi : Float?
    var userName : NSString?
    var age : Float?
    
    @IBOutlet weak var labelUserName: UILabel!
    
    @IBOutlet weak var labelAge: UILabel!
    
    @IBOutlet weak var lableResultBmi: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let sValueBmi = NSString(format: "%.2f", valueBmi!);
        let sAge = NSString(format: "%.0f", age!);
        
        self.labelUserName.text = "Hello \(userName!)";
        self.labelAge.text = "\(sAge) years";
        self.lableResultBmi.text = "\(sValueBmi)";
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
