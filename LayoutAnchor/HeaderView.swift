//
//  HeaderView.swift
//  LayoutAnchor
//
//  Created by Ranjith Kumar on 7/13/18.
//  Copyright © 2018 DrawRect. All rights reserved.
//

import UIKit

class HeaderView: UIView {

    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.image = #imageLiteral(resourceName: "icProfileImage")
        return iv
    }()

    let imageChageBtn: UIButton = {
        let btn = UIButton(type: .system)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Change", for: .normal)
        btn.setTitleColor(UIColor.white.withAlphaComponent(0.7), for: .normal)
        btn.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        btn.titleLabel?.font = .systemFont(ofSize: 13, weight: .black)
        return btn
    }()

    let userCaptionLbl: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "USER"
        lbl.font = .systemFont(ofSize: 15, weight: .medium)
        lbl.textColor = .white
        return lbl
    }()

    let userNameLbl: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Ranjith"
        lbl.textColor = .white
        lbl.font = .systemFont(ofSize: 21, weight: .heavy)
        return lbl
    }()

    let optionsBtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setImage(#imageLiteral(resourceName: "icMore"), for: .normal)
        btn.imageEdgeInsets = UIEdgeInsetsMake(5, 5, 5, 5)
        return btn
    }()

    let segmentedView: SegmentedView = {
        let view = SegmentedView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        return view
    }()


    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupViews() {

        addSubview(imageView)
        NSLayoutConstraint.activate(
            [
                imageView.topAnchor.constraint(equalTo: topAnchor),
                imageView.leftAnchor.constraint(equalTo: leftAnchor),
                imageView.widthAnchor.constraint(equalToConstant: 100),
                imageView.heightAnchor.constraint(equalToConstant: 100)
            ])

        imageView.layer.cornerRadius = 100/2
        imageView.clipsToBounds = true
        imageView.layoutIfNeeded()

        addSubview(imageChageBtn)
        NSLayoutConstraint.activate(
            [
                imageChageBtn.bottomAnchor.constraint(equalTo: imageView.bottomAnchor),
                imageChageBtn.leftAnchor.constraint(equalTo: imageView.leftAnchor),
                imageChageBtn.rightAnchor.constraint(equalTo: imageView.rightAnchor),
                imageChageBtn.heightAnchor.constraint(equalToConstant: 30)
            ])

        addSubview(userCaptionLbl)
        NSLayoutConstraint.activate(
            [
                userCaptionLbl.topAnchor.constraint(equalTo: imageView.topAnchor),
                userCaptionLbl.leftAnchor.constraint(equalTo: imageView.rightAnchor, constant: 10),
                userCaptionLbl.heightAnchor.constraint(equalToConstant: 30),
                userCaptionLbl.rightAnchor.constraint(equalTo: rightAnchor)
            ])

        addSubview(userNameLbl)
        NSLayoutConstraint.activate(
            [
                userNameLbl.topAnchor.constraint(equalTo: userCaptionLbl.bottomAnchor),
                userNameLbl.leftAnchor.constraint(equalTo: userCaptionLbl.leftAnchor),
                userNameLbl.rightAnchor.constraint(equalTo: userCaptionLbl.rightAnchor),
                userNameLbl.heightAnchor.constraint(equalToConstant: 30)
            ])

        addSubview(optionsBtn)
        NSLayoutConstraint.activate(
            [
                optionsBtn.topAnchor.constraint(equalTo: imageChageBtn.topAnchor),
                optionsBtn.leftAnchor.constraint(equalTo: userCaptionLbl.leftAnchor),
                optionsBtn.widthAnchor.constraint(equalToConstant: 40),
                optionsBtn.heightAnchor.constraint(equalToConstant: 40)
            ])

        addSubview(segmentedView)
        NSLayoutConstraint.activate(
            [
                segmentedView.topAnchor.constraint(equalTo: optionsBtn.bottomAnchor),
                segmentedView.leftAnchor.constraint(equalTo: imageView.leftAnchor),
                segmentedView.rightAnchor.constraint(equalTo: rightAnchor),
                segmentedView.heightAnchor.constraint(equalToConstant: 50)
            ])
    }

}
