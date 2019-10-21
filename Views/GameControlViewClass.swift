//
//  GameControlViewClass.swift
//  Views
//
//  Created by user on 11.10.2019.
//  Copyright © 2019 Artem Ulko. All rights reserved.
//

import UIKit

@IBDesignable
class GameControlViewClass: UIView {
    
    @IBInspectable var gameTimeLeft: Double = 7 {
        didSet {
            updateUI()
        }
    }
    @IBInspectable var isGameActive: Bool = false {
        didSet {
            updateUI()
        }
    }
    @IBInspectable var gameDuration: Double = 20 {
        didSet {
            updateUI()
        }
    }
    var startStopHandler: (()-> Void)?
    
    
    
    @IBAction func actionButtonTappet(_ sender: UIButton) {
        
    }
    
    @IBAction func stepperChange(_ sender: UIStepper) {
        updateUI()
    
    }
        override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    

    
    private func setupViews() {

    }

    
    private func updateUI(){
        stepper.isEnabled = !isGameActive
        if isGameActive {
            timeLabel.text = "Осталось: \(Int(gameTimeLeft)) сек"
            actionButton.setTitle("Остановить", for: .normal)
        } else {
            timeLabel.text = "Время: \(Int(stepper.value)) сек"
            actionButton.setTitle("Начать", for: .normal)
        }
    }
}
