//
//  LastNameRegistration.swift
//  RobPlayground
//
//  Created by Robert Roe on 2/14/21.
//

import UIKit

class FirstNameRegistration: UIViewController {

    @IBOutlet var nextButton: UIButton!
        
    @IBOutlet var firstNameTextField: UITextField!
    
    public var firstname: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextButton.layer.borderWidth = 2
        nextButton.layer.borderColor = UIColor.white.cgColor
        nextButton.layer.cornerRadius = nextButton.frame.height / 2
        
        if firstname != "" {
            firstNameTextField.text = firstname
        }
        
    }
    
    private func checkString(str: String?) -> Bool {
        if str == nil {
            return false
        } else if str?.contains("0") == true{
            return false
        } else if str?.contains("1") == true{
            return false
        } else if str?.contains("2") == true{
            return false
        } else if str?.contains("3") == true{
            return false
        } else if str?.contains("4") == true{
            return false
        } else if str?.contains("5") == true{
            return false
        } else if str?.contains("6") == true{
            return false
        } else if str?.contains("7") == true{
            return false
        } else if str?.contains("8") == true{
            return false
        } else if str?.contains("9") == true{
            return false
        } else if str?.contains(" ") == true{
            return false
        } else {
            return true
        }
    }
    
    
    @IBAction func nextButtonClicked(_ sender: UIButton) {
        let str = firstNameTextField.text
        if checkString(str: str) == true {
            firstname = str!
            performSegue(withIdentifier: "nextToLastName", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.destination is LastNameRegistration
        {
            let vc = segue.destination as? LastNameRegistration
            vc?.firstname = self.firstname
        }
    }

    
    @IBAction func textFieldClicked(_ sender: UITextField) {
        sender.text = ""
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
