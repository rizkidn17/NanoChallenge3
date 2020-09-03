//
//  ViewController.swift
//  test
//
//  Created by Rizki Dwi Nugrah on 02/09/20.
//  Copyright © 2020 SQyo. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var btnAll: UIButton!
    @IBOutlet var uiView: UIView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    
    var text1 = "Hello Learners!"
    var text2 = ""
    var text3 = ""
    var text4 = "Apple Developer Academy"
    var text5 = ""
    var text6 = "Keep it UP!"
    
        func date(){
            let date = Date()
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "EEEE, dd MMMM yyyy"
            let result = dateFormatter.string(from: date)
            text2 = "It's \(result)"
            let dateA = dateFormatter.date(from : "Monday, 03 March 2020")
            let dateB = dateFormatter.date(from : result)
            var difference = daysBetween(start: dateA!, end: dateB!)
            text3 = "You've been in"
        
            text5 = "For \(difference) Days!"
            
        }

    func daysBetween(start: Date, end: Date) -> Int {
        return Calendar.current.dateComponents([.day], from: start, to: end).day!
    }


    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnAll.isHidden = false
        date()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnAll(_ sender: Any) {
        btnAll.isHidden = true
        textAnim()
    }
    
    
    func textAnim() {
        
        for i in text1 {
            label1.text! += "\(i)"
            RunLoop.current.run(until: Date()+0.15)
            
            
        }
        for i in text2 {
            label2.text! += "\(i)"
            RunLoop.current.run(until: Date()+0.15)

        }
        for i in text3 {
            label3.text! += "\(i)"
            RunLoop.current.run(until: Date()+0.15)

        }
        for i in text4 {
            label4.text! += "\(i)"
            RunLoop.current.run(until: Date()+0.15)

        }

        for i in text5 {
            label5.text! += "\(i)"
            RunLoop.current.run(until: Date()+0.15)

        }

        for i in text6 {
            label6.text! += "\(i)"
            RunLoop.current.run(until: Date()+0.15)

        }

        
    }
    

    
}

