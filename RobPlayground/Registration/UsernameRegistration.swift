//
//  UsernameRegistration.swift
//  RobPlayground
//
//  Created by Robert Roe on 2/15/21.
//

import UIKit

class UsernameRegistration: UIViewController {

    public var firstname: String = ""
    public var lastname: String = ""
    public var username: String = ""

    @IBOutlet var nextButton: UIButton!
        
    @IBOutlet var usernameTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        nextButton.layer.borderWidth = 2
        
        nextButton.layer.borderColor = UIColor.white.cgColor

        nextButton.layer.cornerRadius = nextButton.frame.height / 2
        
        print(firstname + " " + lastname)
        
        
        // Do any additional setup after loading the view.
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
