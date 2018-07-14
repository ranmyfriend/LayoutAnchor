//
//  TopMostView.swift
//  LayoutAnchor
//
//  Created by Ranjith Kumar on 7/14/18.
//  Copyright © 2018 DrawRect. All rights reserved.
//

import UIKit

class TopMostView: UIView {
    let leftArrowBtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setImage(#imageLiteral(resourceName: "icLeftArrow"), for: .normal)
        return btn
    }()

    let rightArrowBtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setImage(#imageLiteral(resourceName: "icRightArrow"), for: .normal)
        return btn
    }()

    let searchTxtField: UITextField = {
        let txtField = UITextField()
        txtField.translatesAutoresizingMaskIntoConstraints = false
        txtField.leftView = UIImageView(image: #imageLiteral(resourceName: "icSearchIcon"))
        txtField.font = .systemFont(ofSize: 12, weight: .regular)
        txtField.leftViewMode = .always
        txtField.placeholder = "Search"
        txtField.borderStyle = .roundedRect
        return txtField
    }()

    let downArrowBtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setImage(#imageLiteral(resourceName: "icDownArrow"), for: .normal)
        return btn
    }()

    let nameLbl: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Ranjith"
        lbl.textColor = .white
        lbl.font = .systemFont(ofSize: 15, weight: .regular)
        return lbl
    }()

    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.image = #imageLiteral(resourceName: "icProfileImage")
        return iv
    }()

    let upgradeBtn: UIButton = {
        let btn = UIButton()
        btn.setTitle("UPGRADE", for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitleColor(.white, for: .normal)
        btn.backgroundColor = .black
        btn.layer.borderWidth = 0.5
        btn.layer.borderColor = UIColor.white.cgColor
        btn.titleLabel?.font = .systemFont(ofSize: 9, weight: .medium)
        return btn
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupViews() {

        addSubview(leftArrowBtn)
        addSubview(rightArrowBtn)
        addSubview(searchTxtField)

        NSLayoutConstraint.activate(
            [
                leftArrowBtn.topAnchor.constraint(equalTo: topAnchor),
                leftArrowBtn.bottomAnchor.constraint(equalTo: bottomAnchor),
                leftArrowBtn.leftAnchor.constraint(equalTo: leftAnchor),
                leftArrowBtn.widthAnchor.constraint(equalToConstant: 30)
            ])

        NSLayoutConstraint.activate(
            [
                rightArrowBtn.topAnchor.constraint(equalTo: topAnchor),
                rightArrowBtn.bottomAnchor.constraint(equalTo: bottomAnchor),
                rightArrowBtn.leftAnchor.constraint(equalTo: leftArrowBtn.rightAnchor),
                rightArrowBtn.rightAnchor.constraint(equalTo: searchTxtField.leftAnchor),
                rightArrowBtn.widthAnchor.constraint(equalToConstant: 30)
            ])
        NSLayoutConstraint.activate(
            [
                searchTxtField.leftAnchor.constraint(equalTo: rightArrowBtn.rightAnchor),
                searchTxtField.centerYAnchor.constraint(equalTo: centerYAnchor),
                searchTxtField.heightAnchor.constraint(equalToConstant: 25),
                searchTxtField.widthAnchor.constraint(equalToConstant: 150)
            ])

        searchTxtField.layer.cornerRadius = 25
        searchTxtField.layoutIfNeeded()

        addSubview(downArrowBtn)
        addSubview(nameLbl)
        NSLayoutConstraint.activate(
            [
                downArrowBtn.leftAnchor.constraint(equalTo: nameLbl.rightAnchor, constant: 8),
                downArrowBtn.rightAnchor.constraint(equalTo: rightAnchor),
                downArrowBtn.widthAnchor.constraint(equalToConstant: 30),
                downArrowBtn.centerYAnchor.constraint(equalTo: centerYAnchor)
            ])
        addSubview(imageView)

        NSLayoutConstraint.activate(
            [
                nameLbl.leftAnchor.constraint(equalTo: imageView.rightAnchor, constant: 8),
                nameLbl.rightAnchor.constraint(equalTo: downArrowBtn.leftAnchor),
                nameLbl.widthAnchor.constraint(greaterThanOrEqualToConstant: 30),
                nameLbl.centerYAnchor.constraint(equalTo: centerYAnchor)
            ])

        NSLayoutConstraint.activate(
            [
                imageView.centerYAnchor.constraint(equalTo: centerYAnchor),
                imageView.widthAnchor.constraint(equalToConstant: 30),
                imageView.heightAnchor.constraint(equalToConstant: 30)
            ])

        imageView.layer.cornerRadius = 30/2
        imageView.clipsToBounds = true
        imageView.layoutIfNeeded()

        addSubview(upgradeBtn)

        NSLayoutConstraint.activate(
            [
                upgradeBtn.centerYAnchor.constraint(equalTo: centerYAnchor),
                upgradeBtn.widthAnchor.constraint(equalToConstant: 80),
                upgradeBtn.heightAnchor.constraint(equalToConstant: 20),
                upgradeBtn.rightAnchor.constraint(equalTo: imageView.leftAnchor, constant: -8)
            ])

        upgradeBtn.layer.cornerRadius = 10
        upgradeBtn.clipsToBounds = true
        upgradeBtn.layoutIfNeeded()
    }
    
}
