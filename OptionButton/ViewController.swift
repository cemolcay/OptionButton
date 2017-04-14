//
//  ViewController.swift
//  OptionButton
//
//  Created by Cem Olcay on 14/04/2017.
//  Copyright © 2017 cemolcay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var optionButton: OptionButton?

  override func viewDidLoad() {
    super.viewDidLoad()

    optionButton?.contentView.backgroundColor = .white
    optionButton?.contentView.layer.cornerRadius = 5
    optionButton?.contentView.layer.masksToBounds = true
    optionButton?.layer.shadowPath = UIBezierPath(roundedRect: optionButton!.bounds, cornerRadius: 5).cgPath
    optionButton?.layer.shadowOffset = CGSize(width: 0, height: 1)
    optionButton?.layer.shadowColor = UIColor.black.cgColor
    optionButton?.layer.shadowRadius = 2
    optionButton?.layer.shadowOpacity = 0.4
  }

  @IBAction func optionDidPress(sender: OptionButton) {
    
  }
}
