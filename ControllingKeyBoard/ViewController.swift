//
//  ViewController.swift
//  ControllingKeyBoard
//
//  Created by Venkat Kotu on 2/8/16.
//  Copyright © 2016 VenkatKotu. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate{

    @IBAction func updateText(sender: AnyObject) {
        
        let inp = String(inputVal.text!)
        print("originalval = \(inputVal)")
        print("value - \(inp)")
        if (!inp.isEmpty) {
            print("inside if")
            resultText.text = inputVal.text
        }else{
            print("inside else")
           resultText.text = "Please enter something!"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.inputVal.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var resultText: UILabel!
    @IBOutlet weak var inputVal: UITextField!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }


}

