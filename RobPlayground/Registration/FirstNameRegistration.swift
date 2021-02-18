//
//  LastNameRegistration.swift
//  RobPlayground
//
//  Created by Robert Roe on 2/14/21.
//

import UIKit

class FirstNameRegistration: UIViewController {

    @IBOutlet var NextButton: UIButton!
        
    @IBOutlet var NameTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NextButton.layer.borderWidth = 2
        NextButton.layer.borderColor = UIColor.white.cgColor
        NextButton.layer.cornerRadius = NextButton.frame.height / 2
        
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
        let input = NameTextField.text
        if checkString(str: input) == true {
            let vc = BirthdateRegistration()
            vc.firstname = input!
            performSegue(withIdentifier: "nextToLastName", sender: nil)
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
