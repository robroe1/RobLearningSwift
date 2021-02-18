//
//  PasscodeRegistration.swift
//  RobPlayground
//
//  Created by Robert Roe on 2/15/21.
//

import UIKit

class PasswordRegistration: UIViewController {

    
    public var firstname: String = ""
    public var lastname: String = ""
    public var username: String = ""
    public var password: String = ""

   
    @IBOutlet var nextButton: UIButton!
    
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextButton.layer.borderWidth = 2
        
        nextButton.layer.borderColor = UIColor.white.cgColor

        nextButton.layer.cornerRadius = nextButton.frame.height / 2
        
        print(firstname + " " + lastname + " " + username)

    
            // Do any additional setup after loading the view.
    }

    
    @IBAction func nextButtonClicked(_ sender: UIButton) {
        let str = passwordTextField.text
        if str != nil {
            password = str!
            performSegue(withIdentifier: "nextToEmail", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.destination is EmailRegistration
        {
            let vc = segue.destination as? EmailRegistration
            vc?.firstname = self.firstname
            vc?.lastname = self.lastname
            vc?.username = self.username
            vc?.password = self.password
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
