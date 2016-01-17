//
//  BirthdayViewController.swift
//  Media Naranja
//
//  Created by Grego on 29/10/15.
//  Copyright © 2015 Grego. All rights reserved.
//

import UIKit

class BirthdayViewController: UIViewController {

    @IBOutlet weak var birthDate: UIDatePicker!

    var birthday: NSDate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func datePickerChanged(sender: UIDatePicker) {
        if birthDate.date.timeIntervalSinceNow>0{
            let alert = UIAlertController(title: "Alert", message: "Fecha no válida", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
            birthDate.date = NSDate()
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "Fecha Amor" {
            
            if let lvc = segue.destinationViewController as? LoveViewController {
                
                lvc.birthday = birthDate.date
            }
        }
    }
    
    @IBAction func goDate(segue: UIStoryboardSegue) {
        
        
    }


}
