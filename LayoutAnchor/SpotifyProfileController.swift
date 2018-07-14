//
//  SpotifyProfileController.swift
//  LayoutAnchor
//
//  Created by Ranjith Kumar on 7/13/18.
//  Copyright © 2018 DrawRect. All rights reserved.
//

import UIKit

class SpotifyProfileController: UIViewController {

    let headerView: HeaderView = {
        let view = HeaderView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        return view
    }()

    let topView: TopMostView = {
        let view = TopMostView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(hex: 0x191414)
        setupViews()
    }

    private func setupViews() {

        let layoutMarginGuide = view.layoutMarginsGuide

        view.addSubview(topView)

        NSLayoutConstraint.activate(
            [
                topView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
                topView.leftAnchor.constraint(equalTo: layoutMarginGuide.leftAnchor),
                topView.rightAnchor.constraint(equalTo: layoutMarginGuide.rightAnchor),
                topView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.10)
            ])


        view.addSubview(headerView)

        NSLayoutConstraint.activate(
            [
                headerView.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 0),
                headerView.leftAnchor.constraint(equalTo: topView.leftAnchor),
                headerView.rightAnchor.constraint(equalTo: topView.rightAnchor),
                headerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.25)
            ])
    }

}

