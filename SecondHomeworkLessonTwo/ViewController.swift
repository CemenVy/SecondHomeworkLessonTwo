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
    
    private var currentColorSignal = CurrentLightSignal.red
    private let signalIsOn: CGFloat = 1
    private let signalIsOff: CGFloat = 0.3
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signalSwitchingButton.layer.cornerRadius = 10
        
        redSignalView.alpha = signalIsOff
        yellowSignalView.alpha = signalIsOff
        greenSignalView.alpha = signalIsOff
    }
    
    override func viewWillLayoutSubviews() {
        redSignalView.layer.cornerRadius = redSignalView.frame.width / 2
        yellowSignalView.layer.cornerRadius = yellowSignalView.frame.width / 2
        greenSignalView.layer.cornerRadius = greenSignalView.frame.width / 2
    }
    
    @IBAction private func signalSwitchingButtonDidTapped() {
        if signalSwitchingButton.currentTitle == "START" {
            signalSwitchingButton.setTitle("NEXT", for: .normal)
        }
        
        switch currentColorSignal {
        case .red:
            greenSignalView.alpha = signalIsOff
            redSignalView.alpha = signalIsOn
            currentColorSignal = .yellow
        case .yellow:
            redSignalView.alpha = signalIsOff
            yellowSignalView.alpha = signalIsOn
            currentColorSignal = .green
        case .green:
            yellowSignalView.alpha = signalIsOff
            greenSignalView.alpha = signalIsOn
            currentColorSignal = .red
        }
    }
}

// MARK: - CurrentLight
extension ViewController {
    private enum CurrentLightSignal {
        case red, yellow, green
    }
}
