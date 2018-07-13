//
//  SegmentedView.swift
//  LayoutAnchor
//
//  Created by Ranjith Kumar on 7/13/18.
//  Copyright © 2018 DrawRect. All rights reserved.
//

import UIKit

class SegmentedView: UIView {
    let overviewBtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("OVERVIEW", for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 11, weight: .black)
        btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(UIColor.black.withAlphaComponent(0.5), for: .disabled)
        return btn
    }()

    let recentlyPlayedArtistsBtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("RECENTLY PLAYED ARTISTS", for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 11, weight: .black)
        btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(UIColor.black.withAlphaComponent(0.5), for: .disabled)
        return btn
    }()

    let publicPlaylistsBtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("PUBLIC PLAYLISTS", for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 11, weight: .black)
        btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(UIColor.black.withAlphaComponent(0.5), for: .disabled)
        return btn
    }()

    let followingBtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("FOLLOWING(5)", for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 11, weight: .black)
        btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(UIColor.black.withAlphaComponent(0.5), for: .disabled)
        return btn
    }()

    let moreBtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("MORE", for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 11, weight: .black)
        btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(UIColor.black.withAlphaComponent(0.5), for: .disabled)
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
        addSubview(overviewBtn)
        addSubview(recentlyPlayedArtistsBtn)
        addSubview(publicPlaylistsBtn)
        addSubview(followingBtn)
        addSubview(moreBtn)

        NSLayoutConstraint.activate(
            [
                overviewBtn.topAnchor.constraint(equalTo: topAnchor),
                overviewBtn.leftAnchor.constraint(equalTo: leftAnchor),
                overviewBtn.rightAnchor.constraint(equalTo: recentlyPlayedArtistsBtn.leftAnchor),
                overviewBtn.bottomAnchor.constraint(equalTo: bottomAnchor)
            ])

        NSLayoutConstraint.activate(
            [
                recentlyPlayedArtistsBtn.topAnchor.constraint(equalTo: topAnchor),
                recentlyPlayedArtistsBtn.leftAnchor.constraint(equalTo: overviewBtn.rightAnchor),
                recentlyPlayedArtistsBtn.rightAnchor.constraint(equalTo: publicPlaylistsBtn.leftAnchor),
                recentlyPlayedArtistsBtn.bottomAnchor.constraint(equalTo: bottomAnchor)
            ])

        NSLayoutConstraint.activate(
            [
                publicPlaylistsBtn.topAnchor.constraint(equalTo: topAnchor),
                publicPlaylistsBtn.leftAnchor.constraint(equalTo: recentlyPlayedArtistsBtn.rightAnchor),
                publicPlaylistsBtn.rightAnchor.constraint(equalTo: followingBtn.leftAnchor),
                publicPlaylistsBtn.bottomAnchor.constraint(equalTo: bottomAnchor)
            ])

        NSLayoutConstraint.activate(
            [
                followingBtn.topAnchor.constraint(equalTo: topAnchor),
                followingBtn.leftAnchor.constraint(equalTo: publicPlaylistsBtn.rightAnchor),
                followingBtn.rightAnchor.constraint(equalTo: moreBtn.leftAnchor),
                followingBtn.bottomAnchor.constraint(equalTo: bottomAnchor)
            ])

        NSLayoutConstraint.activate(
            [
                moreBtn.topAnchor.constraint(equalTo: topAnchor),
                moreBtn.leftAnchor.constraint(equalTo: followingBtn.rightAnchor),
                moreBtn.rightAnchor.constraint(equalTo: rightAnchor),
                moreBtn.bottomAnchor.constraint(equalTo: bottomAnchor)
            ])

    }

}
