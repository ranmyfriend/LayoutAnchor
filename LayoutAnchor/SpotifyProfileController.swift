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

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        setupViews()
    }

    private func setupViews() {
        view.addSubview(headerView)

        let layoutMarginGuide = view.layoutMarginsGuide

        NSLayoutConstraint.activate(
            [
                headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
                headerView.leftAnchor.constraint(equalTo: layoutMarginGuide.leftAnchor),
                headerView.rightAnchor.constraint(equalTo: layoutMarginGuide.rightAnchor),
                headerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.25)
            ])
    }

}

