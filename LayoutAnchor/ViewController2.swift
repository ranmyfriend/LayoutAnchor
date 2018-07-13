//
//  ViewController2.swift
//  LayoutAnchor
//
//  Created by Ranjith Kumar on 7/13/18.
//  Copyright © 2018 DrawRect. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    private lazy var stackView: UIView = {

        let _view = UIView(frame: CGRect(x: 40, y: 200, width: view.frame.width - (2*40), height: 50))
        _view.layer.borderWidth = 1.5
        _view.layer.cornerRadius = 2.0
        _view.layer.borderColor = view.tintColor.cgColor

        let firstBtn = UIButton(type: .system)
        firstBtn.frame = CGRect(x: 0, y: 0, width: _view.frame.width/4, height: 50)
        firstBtn.setTitle("1", for: .normal)
        firstBtn.titleLabel?.font = .systemFont(ofSize: 17, weight: .medium)

        let liner1 = UIView()
        liner1.backgroundColor = view.tintColor
        liner1.frame = CGRect(x: firstBtn.frame.maxX, y: 0, width: 1.5, height: 50)

        let secondBtn = UIButton(type: .system)
        secondBtn.frame = CGRect(x: liner1.frame.maxX, y: 0, width: _view.frame.width/4, height: 50)
        secondBtn.setTitle("2", for: .normal)
        secondBtn.titleLabel?.font = .systemFont(ofSize: 17, weight: .medium)

        let liner2 = UIView()
        liner2.backgroundColor = view.tintColor
        liner2.frame = CGRect(x: secondBtn.frame.maxX, y: 0, width: 1.5, height: 50)

        let thirdBtn = UIButton(type: .system)
        thirdBtn.frame = CGRect(x: liner2.frame.maxX, y: 0, width: _view.frame.width/4, height: 50)
        thirdBtn.setTitle("3", for: .normal)
        thirdBtn.titleLabel?.font = .systemFont(ofSize: 17, weight: .medium)

        let liner3 = UIView()
        liner3.backgroundColor = view.tintColor
        liner3.frame = CGRect(x: thirdBtn.frame.maxX, y: 0, width: 1.5, height: 50)

        let fourthBtn = UIButton(type: .system)
        fourthBtn.frame = CGRect(x: liner3.frame.maxX, y: 0, width: _view.frame.width/4, height: 50)
        fourthBtn.setTitle("4", for: .normal)
        fourthBtn.titleLabel?.font = .systemFont(ofSize: 17, weight: .medium)

        [firstBtn,
         liner1,
         secondBtn,
         liner2,
         thirdBtn,
         liner3,
         fourthBtn].forEach(_view.addSubview(_:))

        return _view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(stackView)
    }

}
