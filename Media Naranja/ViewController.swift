//
//  ViewController.swift
//  Media Naranja
//
//  Created by Grego on 29/10/15.
//  Copyright © 2015 Grego. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateLabel: UILabel!
    
    var date: NSDate?
    var final: Double?
    var mes : String?
    var dias : Int?
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    @IBAction func goHome(segue: UIStoryboardSegue) {
        
        
    }
    @IBAction func finalizar(segue: UIStoryboardSegue) {
        
        if segue.identifier == "Volver Inicio" {
            
            if let lvc = segue.sourceViewController as? LoveViewController {                
                
                final = lvc.finalDate
                date = lvc.loveDate.date
                    
                let fecha = NSDate(timeInterval: final!,sinceDate: date!)
                let format = NSDateFormatter()
                format.dateFormat = "dd"
                let diaFormat = format.stringFromDate(fecha)
                format.dateFormat = "MM"
                let mesFormat = format.stringFromDate(fecha)
                format.dateFormat = "yyyy"
                let añoFormat = format.stringFromDate(fecha)
                dateLabel.text = "Vas a morir el \(diaFormat) del \(mesFormat) de \(añoFormat)"
            }
        }
    }
}

