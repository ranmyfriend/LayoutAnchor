//
//  ViewController1.swift
//  LayoutAnchor
//
//  Created by Ranjith Kumar on 7/13/18.
//  Copyright © 2018 DrawRect. All rights reserved.
//

import Foundation
import UIKit

class ViewController1: UIViewController {

    let containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .orange
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    let containerLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hello Steve, How are you?"
        label.textColor = .white
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 17, weight: .medium)
        label.backgroundColor = .red
        return label
    }()

    let painLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "How was your pain about making iPhone 5S?"
        label.textColor = .white
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 17, weight: .medium)
        label.backgroundColor = .blue
        return label
    }()

    let imageLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .black
        label.text = "It's Image :P"
        label.textColor = .white
        label.textAlignment = .center
        label.setContentHuggingPriority(UILayoutPriority(rawValue: 251), for: .horizontal)
        return label
    }()

    let containerView_2: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    let roundedView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    let helloLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 2
        label.text = "Hello World\n I will put ding on the Universe"
        label.textAlignment = .center
        label.textColor = .white
        label.backgroundColor = UIColor.black
        label.font = .systemFont(ofSize: 17, weight: .medium)
        return label
    }()

    let redChottaView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupViews()
    }

    private func setupViews() {

        view.addSubview(containerView)

        NSLayoutConstraint.activate(
            [
            containerView.topAnchor.constraint(equalTo: view.topAnchor,
                                                constant: 20),
            containerView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 8),
            containerView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -8),
             containerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.25)
            ])

        containerView.addSubview(imageLabel)
        containerView.addSubview(containerLabel)

        NSLayoutConstraint.activate(
            [
                imageLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 8),
                imageLabel.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 8),
                containerLabel.leftAnchor.constraint(equalTo: imageLabel.rightAnchor, constant: 8),
                imageLabel.heightAnchor.constraint(equalTo: containerView.heightAnchor, multiplier: 0.5),
            ])

        NSLayoutConstraint.activate(
            [
                containerLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 8),
                containerLabel.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -8),
                containerLabel.heightAnchor.constraint(equalTo: containerView.heightAnchor, multiplier: 0.5),
            ])

        containerView.addSubview(painLabel)

        NSLayoutConstraint.activate(
            [
                painLabel.topAnchor.constraint(equalTo: containerLabel.bottomAnchor, constant: 8),
                painLabel.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 8),
                painLabel.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -8),
                painLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -8)
            ])

        containerView_2.addSubview(roundedView)

        view.addSubview(containerView_2)

        NSLayoutConstraint.activate(
            [
                containerView_2.topAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 8),
                containerView_2.leftAnchor.constraint(equalTo: containerView.leftAnchor),
                containerView_2.rightAnchor.constraint(equalTo: containerView.rightAnchor),
                containerView_2.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.25)
            ])

        NSLayoutConstraint.activate(
            [
                roundedView.centerXAnchor.constraint(equalTo: containerView_2.centerXAnchor),
                roundedView.centerYAnchor.constraint(equalTo: containerView_2.centerYAnchor),
                roundedView.widthAnchor.constraint(equalTo: containerView_2.heightAnchor, constant: -10),
                roundedView.heightAnchor.constraint(equalTo: containerView_2.heightAnchor, constant: -10)
            ])

        roundedView.layer.cornerRadius = (view.frame.height*0.25)/2 - 5
        roundedView.clipsToBounds = true
        roundedView.layoutIfNeeded()

        roundedView.addSubview(redChottaView)

        NSLayoutConstraint.activate(
            [
                redChottaView.centerXAnchor.constraint(equalTo: containerView_2.centerXAnchor),
                redChottaView.centerYAnchor.constraint(equalTo: containerView_2.centerYAnchor),
                redChottaView.widthAnchor.constraint(equalToConstant: 25),
                redChottaView.heightAnchor.constraint(equalToConstant: 25)
            ])

        redChottaView.layer.cornerRadius = 25/2
        redChottaView.clipsToBounds = true
        redChottaView.layoutIfNeeded()

        view.addSubview(helloLabel)

        NSLayoutConstraint.activate(
            [
                helloLabel.topAnchor.constraint(equalTo: containerView_2.bottomAnchor, constant: 8),
                helloLabel.leftAnchor.constraint(equalTo: containerView_2.leftAnchor),
                helloLabel.rightAnchor.constraint(equalTo: containerView_2.rightAnchor),
                helloLabel.heightAnchor.constraint(equalToConstant: 50)
            ])

    }
}
