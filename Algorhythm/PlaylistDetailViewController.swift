//
//  PlaylistDetailViewController.swift
//  Algorhythm
//
//  Created by RYWU on 9/16/15.
//  Copyright (c) 2015 吳瑞洋公司. All rights reserved.
//

import UIKit

class PlaylistDetailViewController: UIViewController {

    @IBOutlet weak var buttonPressLabel: UILabel!
    
    var segueLabelText: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonPressLabel.text = segueLabelText
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
