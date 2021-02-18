//
//  EmailRegistration.swift
//  RobPlayground
//
//  Created by Robert Roe on 2/15/21.
//

import UIKit

class EmailRegistration: UIViewController {
    
    public var firstname: String = ""
    public var lastname: String = ""
    public var username: String = ""
    public var password: String = ""
    public var email: String = ""
    
    

    @IBOutlet var emailTextField: UITextField!
    
    @IBOutlet var nextButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        nextButton.layer.borderWidth = 2
        
        nextButton.layer.borderColor = UIColor.white.cgColor

        nextButton.layer.cornerRadius = nextButton.frame.height / 2
        
        
        print(firstname + " " + lastname + " " + username + " " + password)

        // Do any additional setup after loading the view.
    }
    
    private func checkString(str: String?) -> Bool {
        if str == nil {
            return false
        } else if str?.contains(" ") == true{
            return false
        } else if str?.contains("@") == false{
            return false
        } else if str?.contains(".") == false{
            return false
        } else {
            return true
        }
    }
    
    
    @IBAction func nextButtonClicked(_ sender: UIButton) {
        let str = emailTextField.text
        if checkString(str: str) == true {
            email = str!
            performSegue(withIdentifier: "nextToPronouns", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.destination is PronounsRegistraton
        {
            let vc = segue.destination as? PronounsRegistraton
            vc?.firstname = self.firstname
            vc?.lastname = self.lastname
            vc?.username = self.username
            vc?.password = self.password
            vc?.email = self.email
        }
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
