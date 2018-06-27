//
//  ViewController.swift
//  AppPrototype
//
//  Created by Macintosh on 26/6/18.
//  Copyright © 2018 Macintosh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer: Timer!
    var counter = 0.0
    var totalTime = 0.0
    
    @IBOutlet weak var TimerView: UILabel!
    
    @IBOutlet weak var PhaseView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        PhaseView.text = "Work"
    }

    @IBAction func OnClick(_ sender: Any) {
        
        if( counter > 0.0000001){
            totalTime = totalTime + counter
        }
        counter = 0.0
        TimerView.text = counter.description
        changeLabel()
        
        if( timer == nil){
            timer = Timer.scheduledTimer(
                withTimeInterval: 0.1,
                repeats: true,
                block: {(timer: Timer) in self.update()
            })
        }

    }
    
    @objc func update() {
        counter += 0.1
        print(counter)
        TimerView.text = counter.description
    }
    
    @IBAction func EndClick(_ sender: Any) {
        
        if( timer != nil){
            timer.invalidate()
            timer = nil
        }

    
    }
    
    @objc func changeLabel() {
        if(PhaseView.text == "Work"){
            print("Work")
            PhaseView.text = "Rest"
        } else if( PhaseView.text == "Rest" ){
            print("Rest")
            PhaseView.text = "Work"
        }
   
    }
    
    @IBAction func ResetClick(_ sender: Any) {
        
        counter = 0.0
        totalTime = 0.0
        TimerView.text = counter.description
        changeLabel()

       
    }
    
    @IBAction func unwindToMain(segue: UIStoryboardSegue){
        
    }
    
    override func didReceiveMemoryWarning() {

        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //TO DO Segue to another view controller with statist
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "One" {
            let dest = segue.destination as! ResultViewController
            
            dest.result = totalTime
        }
    }

}

