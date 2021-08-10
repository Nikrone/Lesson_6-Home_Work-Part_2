//
//  ViewController.swift
//  Lesson_6_Home-Work_Part_2
//
//  Created by Evgeniy Nosko on 10.08.21.
//

import UIKit

class ViewController: UIViewController {
    
    let button:UIButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        codeButton()
    }
    
    func codeButton() {
        let button = UIButton(frame: CGRect(
                                x: 100,
                                y: 50,
                                width: 90,
                                height: 50)
        )
        
        view.addSubview(button)
        
        button.setTitle("Magic", for: .normal)
        button.backgroundColor = UIColor(
            red: 155/255,
            green: 80/255,
            blue: 140/255,
            alpha: 1
        )
        
        button.center = view.center
        button.layer.cornerRadius = 14
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        
        button.addTarget(self, action: #selector(buttonTuch), for: .touchUpInside)

    }

    @objc func buttonTuch(sender: UIButton ) {
        button.isHidden = true
        rectangle()
    }
    
    func rectangle() {
        let rectangleTopLeft = UIView(frame: CGRect(
                                        x: 0,
                                        y: 0,
                                        width: self.view.frame.maxX/2,
                                        height: self.view.frame.maxY/2)
        )
        
        rectangleTopLeft.backgroundColor = .red
        view.addSubview(rectangleTopLeft)
        
        
        let rectangleTopRight = UIView(frame: CGRect(
                                        x: self.view.frame.maxX/2,
                                        y: 0,
                                        width: self.view.frame.maxX/2,
                                        height: self.view.frame.maxY/2)
        )
        
        rectangleTopRight.backgroundColor = .blue
        view.addSubview(rectangleTopRight)
        
        let rectangleDownRight = UIView(frame: CGRect(
                                            x: 0,
                                            y: self.view.frame.maxY/2,
                                            width: self.view.frame.maxX/2,
                                            height: self.view.frame.maxY/2)
        )
        
        rectangleDownRight.backgroundColor = .green
        view.addSubview(rectangleDownRight)
        
        let rectangleDownLeft = UIView(frame: CGRect(
                                        x: self.view.frame.maxX/2,
                                        y: self.view.frame.maxY/2,
                                        width: self.view.frame.maxX/2,
                                        height: self.view.frame.maxY/2)
        )
        
        rectangleDownLeft.backgroundColor = .magenta
        view.addSubview(rectangleDownLeft)
        
    }
    
}

