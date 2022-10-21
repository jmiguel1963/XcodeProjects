//
//  DetailController.swift
//  PAC1
//
//  Created by Joseph on 10/10/2022.
//

import UIKit

class DetailController: UIViewController {
    
    var place:Place?
    
    @IBOutlet weak var LabelDetailed: UILabel!
    
    @IBAction func Close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LabelDetailed.text=place?.name
        

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
