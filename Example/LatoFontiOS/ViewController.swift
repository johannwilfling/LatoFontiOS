//
//  ViewController.swift
//  LatoFontiOS
//
//  Created by Johann Wilfling on 04/16/2016.
//  Copyright (c) 2016 Johann Wilfling. All rights reserved.
//

import UIKit

import LatoFontiOS

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        label.text = "This is Lato."
        label.font = UIFont.latoFontWithSize(17.0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

