//
//  LastNameRegistration.swift
//  RobPlayground
//
//  Created by Robert Roe on 2/14/21.
//

import UIKit

class LastNameRegistration: UIViewController {
    
    public var firstname: String = ""
    public var lastname: String = ""

    @IBOutlet var nextButton: UIButton!
    
    @IBOutlet var lastNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        nextButton.layer.borderWidth = 2
        
        nextButton.layer.borderColor = UIColor.white.cgColor

        nextButton.layer.cornerRadius = nextButton.frame.height / 2
        
        print(firstname)
        
        if lastname != "" {
            lastNameTextField.text = lastname
        }
        
        
        // Do any additional setup after loading the view.
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
        let str = lastNameTextField.text
        if checkString(str: str) == true {
            lastname = str!
            performSegue(withIdentifier: "nextToUsername", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.destination is UsernameRegistration
        {
            let vc = segue.destination as? UsernameRegistration
            vc?.firstname = self.firstname
            vc?.lastname = self.lastname
        }
        
        if segue.destination is FirstNameRegistration
        {
            let vc = segue.destination as? FirstNameRegistration
            vc?.firstname = self.firstname
        }
    }
    
    
    @IBAction func textFieldClicked(_ sender: UITextField) {
        sender.text = ""
    }
}
