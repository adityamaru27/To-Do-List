//
//  SecondViewController.swift
//  To Do List
//
//  Created by Aditya Maru on 2016-02-21.
//  Copyright © 2016 Aditya Maru. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var textInput: UITextField!
    
    
    @IBAction func submitItem(sender: AnyObject)
    {
        toDoList.append(textInput.text!)
        textInput.text = ""
        NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?)
    {
        self.view.endEditing(true)
        
    }
    
    func textFieldShouldReturn(textField : UITextField!) -> Bool
    {
        textInput.resignFirstResponder()
        return true
    }
}

