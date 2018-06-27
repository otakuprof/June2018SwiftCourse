//
//  ResultViewController.swift
//  AppPrototype
//
//  Created by Macintosh on 27/6/18.
//  Copyright © 2018 Macintosh. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var result = 0.0

    @IBOutlet weak var ResultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ResultLabel.text = result.description

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
