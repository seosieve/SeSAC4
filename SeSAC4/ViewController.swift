//
//  ViewController.swift
//  SeSAC4
//
//  Created by 서충원 on 5/20/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var buttonOne: UIButton!
    @IBOutlet var buttonTwo: UIButton!
    @IBOutlet var buttonThree: UIButton!
    
    @IBOutlet var labelOne: UILabel!
    @IBOutlet var labelTwo: UILabel!
    @IBOutlet var labelThree: UILabel!
    
    lazy var labelArr = [labelOne, labelTwo, labelThree]
    lazy var buttonArr = [buttonOne, buttonTwo, buttonThree]
    var count = [0,0,0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0..<labelArr.count {
            guard let label = labelArr[i] else { return }
            guard let button = buttonArr[i] else { return }
            labelUI(label: label, color: .cyan)
            buttonUI(button: button, title: "안녕", tag: i)
        }
    }

    func labelUI(label: UILabel, color colorIsThis : UIColor) {
        label.text = "0"
        label.textColor = colorIsThis
        label.font = .systemFont(ofSize: 20, weight: .black)
        label.textAlignment = .center
    }
    
    func buttonUI(button: UIButton, title: String, tag: Int) {
        var config = UIButton.Configuration.plain()
        var titleAttr = AttributedString(title)
        titleAttr.font = .systemFont(ofSize: 20, weight: .bold)
        titleAttr.foregroundColor = .blue
        config.background.backgroundColor = .cyan
        config.attributedTitle = titleAttr
        button.configuration = config
        button.tag = tag
    }
    
    @IBAction func buttonOnePressed(_ sender: UIButton) {
        print(sender.tag)
        
        switch sender.tag {
        case 0:
            labelOne.text = String(count[0])
            count[0] += 1
        case 1:
            labelTwo.text = String(count[1])
            count[1] += 1
        default:
            labelThree.text = String(count[2])
            count[2] += 1
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        if let touch = touches.first {
            let location = touch.location(in: self.view)
            print(location)
        }
    }
}

