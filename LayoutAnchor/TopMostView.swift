//
//  TopMostView.swift
//  LayoutAnchor
//
//  Created by Ranjith Kumar on 7/14/18.
//  Copyright © 2018 DrawRect. All rights reserved.
//

import UIKit

final class TopMostView: UIView {
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

        [downArrowBtn,
         nameLbl,
         imageView,
         upgradeBtn,
         searchTxtField,
         rightArrowBtn,
         leftArrowBtn].forEach(addSubview(_:))

        //DownArrow - Button
        NSLayoutConstraint.activate(
            [
                downArrowBtn.leftAnchor.constraint(equalTo: nameLbl.rightAnchor, constant: 8),
                downArrowBtn.rightAnchor.constraint(equalTo: rightAnchor),
                downArrowBtn.widthAnchor.constraint(equalToConstant: 30),
                downArrowBtn.centerYAnchor.constraint(equalTo: centerYAnchor)
            ])

        //Name - Label
        NSLayoutConstraint.activate(
            [
                nameLbl.leftAnchor.constraint(equalTo: imageView.rightAnchor, constant: 8),
                nameLbl.widthAnchor.constraint(greaterThanOrEqualToConstant: 30),
                nameLbl.centerYAnchor.constraint(equalTo: centerYAnchor)
            ])

        //Profile - ImageView
        NSLayoutConstraint.activate(
            [
                imageView.leftAnchor.constraint(equalTo: upgradeBtn.rightAnchor, constant: 8),
                imageView.centerYAnchor.constraint(equalTo: centerYAnchor),
                imageView.widthAnchor.constraint(equalToConstant: 30),
                imageView.heightAnchor.constraint(equalToConstant: 30),
                ])

        imageView.layer.cornerRadius = 30/2
        imageView.clipsToBounds = true
        imageView.layoutIfNeeded()

        //Upgrade - Button
        NSLayoutConstraint.activate(
            [
                upgradeBtn.leftAnchor.constraint(greaterThanOrEqualTo: searchTxtField.rightAnchor, constant: 8),
                upgradeBtn.centerYAnchor.constraint(equalTo: centerYAnchor),
                upgradeBtn.widthAnchor.constraint(equalToConstant: 80),
                upgradeBtn.heightAnchor.constraint(equalToConstant: 20),
                ])

        upgradeBtn.layer.cornerRadius = 10
        upgradeBtn.clipsToBounds = true
        upgradeBtn.layoutIfNeeded()

        //Search - TextField
        NSLayoutConstraint.activate(
            [
                searchTxtField.leftAnchor.constraint(equalTo: rightArrowBtn.rightAnchor),
                searchTxtField.centerYAnchor.constraint(equalTo: centerYAnchor),
                searchTxtField.heightAnchor.constraint(equalToConstant: 25),
                searchTxtField.widthAnchor.constraint(equalToConstant: 150)
            ])

        searchTxtField.layer.cornerRadius = 25
        searchTxtField.layoutIfNeeded()

        //Right Arrow - Button
        NSLayoutConstraint.activate(
            [
                rightArrowBtn.leftAnchor.constraint(equalTo: leftArrowBtn.rightAnchor),
                rightArrowBtn.centerYAnchor.constraint(equalTo: centerYAnchor),
                rightArrowBtn.widthAnchor.constraint(equalToConstant: 30),
                rightArrowBtn.heightAnchor.constraint(equalToConstant: 30)
            ])

        //Left Arrow - Button
        NSLayoutConstraint.activate(
            [
                leftArrowBtn.leftAnchor.constraint(equalTo: leftAnchor),
                leftArrowBtn.centerYAnchor.constraint(equalTo: centerYAnchor),
                leftArrowBtn.widthAnchor.constraint(equalToConstant: 30),
                leftArrowBtn.heightAnchor.constraint(equalToConstant: 30)
            ])
    }
    
}
