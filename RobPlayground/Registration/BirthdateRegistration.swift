//
//  BirthdateRegistration.swift
//  RobPlayground
//
//  Created by Robert Roe on 2/15/21.
//

import UIKit
import FirebaseAuth
import Firebase

class BirthdateRegistration: UIViewController {
    
    public var firstname: String = ""
    public var lastname: String = ""
    public var username: String = ""
    public var password: String = ""
    public var email: String = ""
    public var pronouns: String = ""
    public var birthday: Timestamp = Timestamp()

    @IBOutlet var datePicker: UIDatePicker!
    
    @IBOutlet var SubmitButton: UIButton!
    
    @IBOutlet var BackButton: UIButton!
    
  
     override func viewDidLoad() {
         super.viewDidLoad()
       
        
        SubmitButton.layer.borderWidth = 2
        
        SubmitButton.layer.borderColor = UIColor.white.cgColor

        SubmitButton.layer.cornerRadius = SubmitButton.frame.height / 2
        
        print(firstname + " " + lastname + " " + username + " " + password + " " + email + " " + pronouns)
        
     }
    

    
    @IBAction func PrivacyPolicyClicked(_ sender: UIButton) {
        
        if let url = URL(string: "https://madlyradlabs.com/madlyrad-_-privacy-policy/"){
        
            UIApplication.shared.open(url)
            
        }
    
    
    }
    
    
    @IBAction func TermsServiceClick(_ sender: UIButton) {
    
        if let url = URL(string: "https://madlyradlabs.com/madlyrad-_-terms-of-service/"){
        
            UIApplication.shared.open(url)
            
        }
    }
    
    
    
    @IBAction func SubmitButtonClicked(_ sender: UIButton) {
        RegisterUser()
    }
    
    
    
    
    private func RegisterUser() {
        print("Regstering user")

        
        // create the user
        Auth.auth().createUser(withEmail: email, password: password) { (result, err) in
            
            // Check for errors
            if err != nil {
                // There was an error creating the user
                print("Error creating user")
            }
            else {
                
                // User was created successfully, now store the attributes
                let db = Firestore.firestore()
                
                db.collection("users").document(result!.user.uid).setData(["firstname": self.firstname, "lastname": self.lastname, "pronouns": self.pronouns, "birthday": self.datePicker.date])
                
            }
            
        }
        
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.destination is PronounsRegistraton
        {
            let vc = segue.destination as? PronounsRegistraton
            vc?.firstname = self.firstname
            vc?.lastname = self.lastname
            vc?.username = self.username
            vc?.password = self.password
            vc?.email = self.email
            vc?.pronouns = self.pronouns

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
