//
//  PronounsRegistraton.swift
//  RobPlayground
//
//  Created by Robert Roe on 2/15/21.
//

import UIKit

class PronounsRegistraton: UIViewController {

    @IBOutlet var NextButton: UIButton!
    
    @IBOutlet var BackButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        NextButton.layer.borderWidth = 2
        
        NextButton.layer.borderColor = UIColor.white.cgColor

        NextButton.layer.cornerRadius = NextButton.frame.height / 2
        

        
        NextButton.layer.borderWidth = 2
        
        NextButton.layer.borderColor = UIColor.white.cgColor

        NextButton.layer.cornerRadius = NextButton.frame.height / 2
        
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
