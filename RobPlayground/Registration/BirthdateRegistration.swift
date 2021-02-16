//
//  BirthdateRegistration.swift
//  RobPlayground
//
//  Created by Robert Roe on 2/15/21.
//

import UIKit

class BirthdateRegistration: UIViewController {

    @IBOutlet var SubmitButton: UIButton!
    
    @IBOutlet var BackButton: UIButton!
    
  
     override func viewDidLoad() {
         super.viewDidLoad()
       
        
        SubmitButton.layer.borderWidth = 2
        
        SubmitButton.layer.borderColor = UIColor.white.cgColor

        SubmitButton.layer.cornerRadius = SubmitButton.frame.height / 2

       
        
      
      
        
       
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
