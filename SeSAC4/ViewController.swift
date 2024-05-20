//
//  ViewController.swift
//  SeSAC4
//
//  Created by 서충원 on 5/20/24.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var labelArr = [labelOne, labelTwo, labelThree]
    lazy var buttonArr = [buttonOne, buttonTwo, buttonThree]

    @IBOutlet var buttonOne: UIButton!
    @IBOutlet var buttonTwo: UIButton!
    @IBOutlet var buttonThree: UIButton!
    
    @IBOutlet var labelOne: UILabel!
    @IBOutlet var labelTwo: UILabel!
    @IBOutlet var labelThree: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0..<labelArr.count {
            guard let label = labelArr[i] else { return }
            guard let button = buttonArr[i] else { return }
            labelUI(label: label, color: .cyan)
            buttonUI(button: button, title: "안녕")
        }
    }

    func labelUI(label: UILabel, color colorIsThis : UIColor) {
        label.text = "0"
        label.textColor = colorIsThis
        label.font = .systemFont(ofSize: 20, weight: .black)
        label.textAlignment = .center
    }
    
    func buttonUI(button: UIButton, title: String) {
        var config = UIButton.Configuration.plain()
        var titleAttr = AttributedString(title)
        titleAttr.font = .systemFont(ofSize: 20, weight: .bold)
        titleAttr.foregroundColor = .blue
        config.background.backgroundColor = .cyan
        config.attributedTitle = titleAttr
        button.configuration = config
    }
    
    @IBAction func buttonOnePressed(_ sender: UIButton) {
        labelOne.text = "dwadaw"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        if let touch = touches.first {
            let location = touch.location(in: self.view)
            print(location)
        }
    }
}

