//
//  ViewController.swift
//  4_2
//
//  Created by student on 2018/12/5.
//  Copyright © 2018年 Dude. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let oval = MyView(frame: CGRect(x: 100, y: 100, width: 150, height: 100))
        oval.backgroundColor = UIColor.clear
        self.view.addSubview(oval)
        let circle = MyView(frame: CGRect(x: 100, y: 300, width: 100, height: 100))
        circle.backgroundColor = UIColor.clear
        self.view.addSubview(circle)
    }
}
class MyView: UIView {
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath(ovalIn: rect)
        UIColor.red.setStroke()//红色边界
        path.stroke()
        UIColor.yellow.setFill()//黄色填充
        path.fill()
    }
}

