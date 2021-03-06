//
//  PronounsRegistraton.swift
//  RobPlayground
//
//  Created by Robert Roe on 2/15/21.
//

import UIKit

class PronounsRegistraton: UIViewController {
    
    public var firstname: String = ""
    public var lastname: String = ""
    public var username: String = ""
    public var password: String = ""
    public var email: String = ""
    public var pronouns: String = ""


    @IBOutlet var NextButton: UIButton!
    @IBOutlet var SheHerButton: UIButton!
    @IBOutlet var HeHimButton: UIButton!
    @IBOutlet var TheyThemButton: UIButton!
    @IBOutlet var OtherButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        NextButton.layer.borderWidth = 2
        
        NextButton.layer.borderColor = UIColor.white.cgColor

        NextButton.layer.cornerRadius = NextButton.frame.height / 2
        

        
        SheHerButton.layer.borderWidth = 2
        
        SheHerButton.layer.borderColor = UIColor.white.cgColor

        SheHerButton.layer.cornerRadius = OtherButton.frame.height / 2
        
      
        HeHimButton.layer.borderWidth = 2
        
        HeHimButton.layer.borderColor = UIColor.white.cgColor

        HeHimButton.layer.cornerRadius = OtherButton.frame.height / 2
        

        
        TheyThemButton.layer.borderWidth = 2
        
        TheyThemButton.layer.borderColor = UIColor.white.cgColor

        TheyThemButton.layer.cornerRadius = OtherButton.frame.height / 2
        
        
        
        OtherButton.layer.borderWidth = 2
        
        OtherButton.layer.borderColor = UIColor.white.cgColor

        OtherButton.layer.cornerRadius = OtherButton.frame.height / 2
        
        selectButton()
        
        
        print(firstname + " " + lastname + " " + username + " " + password + " " + email)
        
        // Do any additional setup after loading the view.
    }
    
    private func selectButton() {
        switch pronouns {
        case "she/her":
            HeHimButton.backgroundColor = .gray
            TheyThemButton.backgroundColor = .gray
            OtherButton.backgroundColor = .gray
            SheHerButton.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        case "he/him":
            HeHimButton.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
            TheyThemButton.backgroundColor = .gray
            OtherButton.backgroundColor = .gray
            SheHerButton.backgroundColor = .gray
        case "they/them":
            HeHimButton.backgroundColor = .gray
            TheyThemButton.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
            OtherButton.backgroundColor = .gray
            SheHerButton.backgroundColor = .gray
        case "other":
            HeHimButton.backgroundColor = .gray
            TheyThemButton.backgroundColor = .gray
            OtherButton.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
            SheHerButton.backgroundColor = .gray
        default:
            HeHimButton.backgroundColor = .gray
            TheyThemButton.backgroundColor = .gray
            OtherButton.backgroundColor = .gray
            SheHerButton.backgroundColor = .gray
        }
    }
    
    
    @IBAction func sheButtonClicked(_ sender: UIButton) {
        pronouns = "she/her"
        selectButton()
    }
    
    @IBAction func heButtonClicked(_ sender: UIButton) {
        pronouns = "he/him"
        selectButton()
    }
    
    @IBAction func theyButtonClicked(_ sender: UIButton) {
        pronouns = "they/them"
        selectButton()
    }
    
    @IBAction func otherButtonClicked(_ sender: UIButton) {
        pronouns = "other"
        selectButton()
    }
    
    @IBAction func nextButtonClicked(_ sender: UIButton) {
        performSegue(withIdentifier: "nextToBirthday", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.destination is BirthdateRegistration
        {
            let vc = segue.destination as? BirthdateRegistration
            vc?.firstname = self.firstname
            vc?.lastname = self.lastname
            vc?.username = self.username
            vc?.password = self.password
            vc?.email = self.email
            vc?.pronouns = self.pronouns

        }
        
        if segue.destination is EmailRegistration
        {
            let vc = segue.destination as? EmailRegistration
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
