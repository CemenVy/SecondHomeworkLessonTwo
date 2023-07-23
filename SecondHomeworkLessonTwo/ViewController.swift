//
//  ViewController.swift
//  SecondHomeworkLessonTwo
//
//  Created by Семен Выдрин on 21.07.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet private var redSignalView: UIView!
    @IBOutlet private var yellowSignalView: UIView!
    @IBOutlet private var greenSignalView: UIView!
    @IBOutlet private var signalSwitchingButton: UIButton!
    
    private var switchingAmountButton = 0
        
    override func viewDidLoad() {
        super.viewDidLoad()
        redSignalView.alpha = 0.3
        yellowSignalView.alpha = 0.3
        greenSignalView.alpha = 0.3
        
        redSignalView.layer.cornerRadius = redSignalView.bounds.width / 2.0
        yellowSignalView.layer.cornerRadius = redSignalView.bounds.width / 2.0
        greenSignalView.layer.cornerRadius = redSignalView.bounds.width / 2.0
        
        signalSwitchingButton.layer.cornerRadius = 10
    }
    
    @IBAction private func signalSwitchingButtonDidTapped() {
        
        if switchingAmountButton == 0 {
            redSignalView.alpha = 1.0
            signalSwitchingButton.setTitle("NEXT", for: .normal)
            switchingAmountButton += 1
        } else if switchingAmountButton == 1 {
            redSignalView.alpha = 0.3
            yellowSignalView.alpha = 1.0
            switchingAmountButton += 1
        } else if switchingAmountButton == 2 {
            yellowSignalView.alpha = 0.3
            greenSignalView.alpha = 1.0
            switchingAmountButton += 1
        } else {
            greenSignalView.alpha = 0.3
            redSignalView.alpha = 1.0
            switchingAmountButton = 1
        }
    }

}

