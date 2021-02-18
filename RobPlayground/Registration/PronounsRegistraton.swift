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

        SheHerButton.layer.cornerRadius = NextButton.frame.height / 2
        
      
        HeHimButton.layer.borderWidth = 2
        
        HeHimButton.layer.borderColor = UIColor.white.cgColor

        HeHimButton.layer.cornerRadius = NextButton.frame.height / 2
        

        
        TheyThemButton.layer.borderWidth = 2
        
        TheyThemButton.layer.borderColor = UIColor.white.cgColor

        TheyThemButton.layer.cornerRadius = NextButton.frame.height / 2
        
        
        
        OtherButton.layer.borderWidth = 2
        
        OtherButton.layer.borderColor = UIColor.white.cgColor

        OtherButton.layer.cornerRadius = NextButton.frame.height / 2
        
        
        print(firstname + " " + lastname + " " + username + " " + password)
        
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
