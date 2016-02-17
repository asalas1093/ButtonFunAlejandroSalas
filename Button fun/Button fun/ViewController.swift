//
//  ViewController.swift
//  Button fun
//
//  Created by Alejandro Salas on 2/2/16.
//  Copyright © 2016 Alejandro Salas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var statusLabel: UILabel!
    @IBAction func buttonPressed(sender: UIButton) {
        
        let title = sender.titleForState(.Normal)!
        let plainText = "\(title) button pressed"
        let styledText = NSMutableAttributedString(string: plainText)
        let attributes = [
            NSFontAttributeName:
            UIFont.boldSystemFontOfSize(statusLabel.font.pointSize)
        ]
        let nameRange = (plainText as NSString).rangeOfString(title)
        styledText.setAttributes(attributes, range: nameRange)
        statusLabel.attributedText = styledText
    }


}

