//
//  DetailViewController.swift
//  com.egco428.a23088
//
//  Created by Pongdec><MacBook on 11/22/17.
//  Copyright © 2017 Pongdec><MacBook. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var receiveNumber:String = ""
    var randomReal = arc4random_uniform(40) + 20;
    var num:Array<Int> = []
    
    
    //variable
    
    @IBOutlet weak var textNumber: UITextField!
    @IBOutlet weak var mail: UIImageView!
    @IBOutlet weak var star: UIImageView!
    @IBOutlet weak var win: UILabel!
    @IBOutlet weak var lose: UILabel!
    @IBOutlet weak var showNumber: UILabel!
    
    
    
    //
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Lucky Draw Result"
        textNumber.text = receiveNumber
        var i = 0
        while i<5{
            let number = Int(arc4random_uniform(30) + 10)
            num.append(number)
            i = i+1
            
        }
        showNumber.text = String(describing: num)
        var j = 0
        while j<5{
            if(Int(receiveNumber)==num[j]){
                mail.isHidden = true
                lose.isHidden = true
                star.isHidden = false
                win.isHidden = false
                break
            }else{
                mail.isHidden = false
                lose.isHidden = false
                star.isHidden = true
                win.isHidden = true
                
            }
            j = j+1
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true)
    }
    
    


}
