//
//  ViewController.swift
//  SecondHomeworkLessonTwo
//
//  Created by Семен Выдрин on 21.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redSignalView: UIView!
    @IBOutlet var yellowSignalView: UIView!
    @IBOutlet var greenSignalView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSignalView.layer.cornerRadius = 75
        yellowSignalView.layer.cornerRadius = 75
        greenSignalView.layer.cornerRadius = 75
    }


    @IBAction func signalSwitchingButton(_ sender: UIButton) {
    }
}

