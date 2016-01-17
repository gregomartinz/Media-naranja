//
//  LoveViewController.swift
//  Media Naranja
//
//  Created by Grego on 29/10/15.
//  Copyright © 2015 Grego. All rights reserved.
//

import UIKit

class LoveViewController: UIViewController {

    @IBOutlet weak var loveDate: UIDatePicker!
    var birthday: NSDate?
    var finalDate: Double?
    var fechaPartida: NSDate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //print(abs(Int((birthday?.timeIntervalSinceNow)!)/60/60/24))
        fechaPartida = NSDate(timeInterval: 86400, sinceDate: birthday!)
        loveDate.date = fechaPartida!
        finalDate = loveDate.date.timeIntervalSinceDate(birthday!)
        loveDate.sendActionsForControlEvents(.ValueChanged)

        // Do any additional setup after loading the view, typically from a nib.
    }
    

    
    @IBAction func loveDateChange(sender: UIDatePicker){
        finalDate = loveDate.date.timeIntervalSinceDate(birthday!)
        if (finalDate <= 0){
            let alert = UIAlertController(title: "Alert", message: "Fecha no válida", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
            loveDate.date = fechaPartida!
            finalDate = loveDate.date.timeIntervalSinceDate(birthday!)
        }
    }
}
