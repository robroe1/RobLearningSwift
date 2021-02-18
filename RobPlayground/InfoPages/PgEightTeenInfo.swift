//
//  PgEightTeenInfo.swift
//  RobPlayground
//
//  Created by Robert Roe on 2/16/21.
//

import UIKit

class PgEightTeenInfo: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
 
    @IBAction func RecordLabelClicked(_ sender: UIButton) {
        if let url = URL(string: "https://HRWMusicGroup.com"){
        
            UIApplication.shared.open(url)
            
        }
}

    
    @IBAction func TeamPageWebClicked(_ sender: UIButton) {
        if let url = URL(string: "https://https://madlyradlabs.web.app/team.html"){
        
            UIApplication.shared.open(url)
            
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

   
