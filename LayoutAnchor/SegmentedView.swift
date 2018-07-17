//
//  SegmentedView.swift
//  LayoutAnchor
//
//  Created by Ranjith Kumar on 7/13/18.
//  Copyright © 2018 DrawRect. All rights reserved.
//

import UIKit

final class SegmentedView: UIView {
    //MARK: - IBOutlets & IBActions
    let overviewBtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("OVERVIEW", for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 11, weight: .black)
        btn.setTitleColor(.white, for: .selected)
        btn.setTitleColor(.lightGray, for: .normal)
        btn.isSelected = true
        return btn
    }()

    let recentlyPlayedArtistsBtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("RECENTLY PLAYED ARTISTS", for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 11, weight: .black)
        btn.setTitleColor(.white, for: .selected)
        btn.setTitleColor(.lightGray, for: .normal)
        btn.isSelected = false
        return btn
    }()

    let publicPlaylistsBtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("PUBLIC PLAYLISTS", for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 11, weight: .black)
        btn.setTitleColor(.white, for: .selected)
        btn.setTitleColor(.lightGray, for: .normal)
        btn.isSelected = false
        return btn
    }()

    let followingBtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("FOLLOWING(5)", for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 11, weight: .black)
        btn.setTitleColor(.white, for: .selected)
        btn.setTitleColor(.lightGray, for: .normal)
        btn.isSelected = false
        return btn
    }()

    let moreBtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("MORE", for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 11, weight: .black)
        btn.setTitleColor(.white, for: .selected)
        btn.setTitleColor(.lightGray, for: .normal)
        btn.isSelected = false
        return btn
    }()

    let indicatorView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(hex: 0x1db954)
        return view
    }()

    lazy var stackView: UIStackView = {
        overviewBtn.addTarget(self, action: #selector(moveIndicator(sender:)), for: .touchUpInside)
        moreBtn.addTarget(self, action: #selector(moveIndicator(sender:)), for: .touchUpInside)

        let stackView = UIStackView(arrangedSubviews:
            [
                overviewBtn,
                recentlyPlayedArtistsBtn,
                publicPlaylistsBtn,
                followingBtn,
                moreBtn
            ])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .equalSpacing
        stackView.spacing = 8
        stackView.axis = .horizontal
        return stackView
    }()

    //MARK: - Overriden functions
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    //MARK: - Private functions
    private func setupViews() {
        addSubview(stackView)
        NSLayoutConstraint.activate(
            [
                stackView.topAnchor.constraint(equalTo: topAnchor),
                stackView.leftAnchor.constraint(equalTo: leftAnchor),
                stackView.rightAnchor.constraint(equalTo: rightAnchor),
                stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
            ])

        addSubview(indicatorView)
        NSLayoutConstraint.activate(
            [
                indicatorView.topAnchor.constraint(equalTo: overviewBtn.bottomAnchor),
                indicatorView.centerXAnchor.constraint(equalTo: overviewBtn.centerXAnchor),
                indicatorView.heightAnchor.constraint(equalToConstant: 2),
                indicatorView.widthAnchor.constraint(equalToConstant: 20)
            ])
    }

    //MARK: - Selectors
    @objc private func moveIndicator(sender: UIButton) {
        sender.isSelected = true
        NSLayoutConstraint.activate(
            [
                indicatorView.centerXAnchor.constraint(equalTo: sender.centerXAnchor)
            ])
    }

}
