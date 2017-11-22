//
//  ViewController.swift
//  com.egco428.a23088
//
//  Created by Pongdec><MacBook on 11/22/17.
//  Copyright © 2017 Pongdec><MacBook. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    //varliable
    var number = "a"
    @IBOutlet weak var textnum: UITextField!
    
    
    //

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        let randNumber = arc4random_uniform(100)
//        print(randNumber)
        
        textnum.text = String(randNumber)
        number = String(randNumber)
        }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Select Lucky Number"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailViewController = segue.destination as! DetailViewController
        let sendNumber = number
        detailViewController.receiveNumber = sendNumber
    }


}

