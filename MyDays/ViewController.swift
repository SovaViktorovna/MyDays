//
//  ViewController.swift
//  MyDays
//
//  Created by Виктория Демченко on 06.08.24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var resultButton: UIButton!
    private var numberOfDays = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultButton.layer.cornerRadius = 15
    }

    @IBAction func resultButtonTapped() {
        infoLabel.text = "You're enjoying life already \( numberOfDays)"
    }
    
    @IBAction func datePicker(_ sender: UIDatePicker) {
        let range = sender.date..<Date.now
        numberOfDays = range.formatted(.components(style: .wide, fields: [.day]))
    }
}

