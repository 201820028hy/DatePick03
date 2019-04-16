//
//  ViewController.swift
//  DatePick03
//
//  Created by dit03 on 2019. 4. 16..
//  Copyright © 2019년 201820028. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lbDate: UILabel!
    @IBOutlet weak var Pick: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let locale = Locale(identifier: "ko_Ko")
        Pick.locale = locale
        
        Pick.datePickerMode = UIDatePicker.Mode.time//date로 하면 날짜 나옴
    }

    @IBAction func DatePick(_ sender: Any) {
        let selected = Pick.date
        
        let formatter = DateFormatter()
        formatter.dateFormat = "a HH : mm"
        lbDate.text = formatter.string(from: selected)
    }
    
}

