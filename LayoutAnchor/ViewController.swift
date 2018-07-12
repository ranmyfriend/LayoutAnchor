//
//  ViewController.swift
//  LayoutAnchor
//
//  Created by Ranjith Kumar on 7/12/18.
//  Copyright © 2018 DrawRect. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        constructViewsNLayouts()
    }

    private func constructViewsNLayouts() {
        let firstNameLbl = UILabel()
        firstNameLbl.text = "First Name"
        firstNameLbl.font = .systemFont(ofSize: 17, weight: .medium)
        firstNameLbl.translatesAutoresizingMaskIntoConstraints = false
        firstNameLbl.setContentHuggingPriority(UILayoutPriority(rawValue: 251), for: .horizontal)
        view.addSubview(firstNameLbl)
        
        let firstNameTxtField = UITextField()
        firstNameTxtField.translatesAutoresizingMaskIntoConstraints = false
        firstNameTxtField.borderStyle = .roundedRect
        view.addSubview(firstNameTxtField)
        
        let lastNameLbl = UILabel()
        lastNameLbl.text = "Last Name"
        lastNameLbl.font = .systemFont(ofSize: 17, weight: .medium)
        lastNameLbl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(lastNameLbl)
        
        let lastNameTxtField = UITextField()
        lastNameTxtField.translatesAutoresizingMaskIntoConstraints = false
        lastNameTxtField.borderStyle = .roundedRect
        view.addSubview(lastNameTxtField)
        
        let ageLbl = UILabel()
        ageLbl.text = "Age"
        ageLbl.font = .systemFont(ofSize: 17, weight: .medium)
        ageLbl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(ageLbl)
        
        let ageTxtField = UITextField()
        ageTxtField.translatesAutoresizingMaskIntoConstraints = false
        ageTxtField.borderStyle = .roundedRect
        view.addSubview(ageTxtField)
        
        let qualificationLbl = UILabel()
        qualificationLbl.text = "Qualification"
        qualificationLbl.font = .systemFont(ofSize: 17, weight: .medium)
        qualificationLbl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(qualificationLbl)
        
        let qualificationTxtField = UITextField()
        qualificationTxtField.translatesAutoresizingMaskIntoConstraints = false
        qualificationTxtField.borderStyle = .roundedRect
        view.addSubview(qualificationTxtField)
        
        let professionLbl = UILabel()
        professionLbl.text = "Profession"
        professionLbl.font = .systemFont(ofSize: 17, weight: .medium)
        professionLbl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(professionLbl)
        
        let professionTxtField = UITextField()
        professionTxtField.translatesAutoresizingMaskIntoConstraints = false
        professionTxtField.borderStyle = .roundedRect
        view.addSubview(professionTxtField)
        
        let addressLbl = UILabel()
        addressLbl.text = "Address"
        addressLbl.font = .systemFont(ofSize: 17, weight: .medium)
        addressLbl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(addressLbl)
        
        let addressTxtField = UITextField()
        addressTxtField.translatesAutoresizingMaskIntoConstraints = false
        addressTxtField.borderStyle = .roundedRect
        view.addSubview(addressTxtField)
        
        let btn1 = UIButton(type: .system)
        btn1.setTitle("Button - 1", for: .normal)
        btn1.translatesAutoresizingMaskIntoConstraints = false
        btn1.backgroundColor = .red
        btn1.setTitleColor(.white, for: .normal)
        view.addSubview(btn1)
        
        let btn2 = UIButton(type: .system)
        btn2.setTitle("Button - 2", for: .normal)
        btn2.translatesAutoresizingMaskIntoConstraints = false
        btn2.backgroundColor = .red
        btn2.setTitleColor(.white, for: .normal)
        view.addSubview(btn2)
        
        let container = UILayoutGuide()
        view.addLayoutGuide(container)
        
        firstNameLbl.leadingAnchor.constraint(equalTo: container.leadingAnchor).isActive = true
        
        firstNameTxtField.firstBaselineAnchor.constraint(equalTo: firstNameLbl.firstBaselineAnchor).isActive = true
        firstNameTxtField.leadingAnchor.constraint(equalTo: firstNameLbl.trailingAnchor, constant: 8).isActive = true
        firstNameTxtField.topAnchor.constraint(equalTo: container.topAnchor).isActive = true
        firstNameTxtField.trailingAnchor.constraint(equalTo: container.trailingAnchor).isActive = true
        
        lastNameLbl.leadingAnchor.constraint(equalTo: firstNameLbl.leadingAnchor).isActive = true
        ageLbl.leadingAnchor.constraint(equalTo: firstNameLbl.leadingAnchor).isActive = true
        qualificationLbl.leadingAnchor.constraint(equalTo: firstNameLbl.leadingAnchor).isActive = true
        professionLbl.leadingAnchor.constraint(equalTo: firstNameLbl.leadingAnchor).isActive = true
        addressLbl.leadingAnchor.constraint(equalTo: firstNameLbl.leadingAnchor).isActive = true
        
        lastNameLbl.trailingAnchor.constraint(equalTo: firstNameLbl.trailingAnchor).isActive = true
        ageLbl.trailingAnchor.constraint(equalTo: firstNameLbl.trailingAnchor).isActive = true
        qualificationLbl.trailingAnchor.constraint(equalTo: firstNameLbl.trailingAnchor).isActive = true
        professionLbl.trailingAnchor.constraint(equalTo: firstNameLbl.trailingAnchor).isActive = true
        addressLbl.trailingAnchor.constraint(equalTo: firstNameLbl.trailingAnchor).isActive = true
        
        lastNameTxtField.trailingAnchor.constraint(equalTo: firstNameTxtField.trailingAnchor).isActive = true
        ageTxtField.trailingAnchor.constraint(equalTo: firstNameTxtField.trailingAnchor).isActive = true
        qualificationTxtField.trailingAnchor.constraint(equalTo: firstNameTxtField.trailingAnchor).isActive = true
        professionTxtField.trailingAnchor.constraint(equalTo: firstNameTxtField.trailingAnchor).isActive = true
        addressTxtField.trailingAnchor.constraint(equalTo: firstNameTxtField.trailingAnchor).isActive = true
        
        lastNameTxtField.leadingAnchor.constraint(equalTo: firstNameTxtField.leadingAnchor).isActive = true
        ageTxtField.leadingAnchor.constraint(equalTo: firstNameTxtField.leadingAnchor).isActive = true
        qualificationTxtField.leadingAnchor.constraint(equalTo: firstNameTxtField.leadingAnchor).isActive = true
        professionTxtField.leadingAnchor.constraint(equalTo: firstNameTxtField.leadingAnchor).isActive = true
        addressTxtField.leadingAnchor.constraint(equalTo: firstNameTxtField.leadingAnchor).isActive = true
        
        
        lastNameTxtField.firstBaselineAnchor.constraint(equalTo: lastNameLbl.firstBaselineAnchor).isActive = true
        lastNameTxtField.topAnchor.constraint(equalTo: firstNameTxtField.bottomAnchor, constant: 8).isActive = true
        
        ageTxtField.firstBaselineAnchor.constraint(equalTo: ageLbl.firstBaselineAnchor).isActive = true
        ageTxtField.topAnchor.constraint(equalTo: lastNameTxtField.bottomAnchor, constant: 8).isActive = true
        
        qualificationTxtField.firstBaselineAnchor.constraint(equalTo: qualificationLbl.firstBaselineAnchor).isActive = true
        qualificationTxtField.topAnchor.constraint(equalTo: ageTxtField.bottomAnchor, constant: 8).isActive = true
        
        professionTxtField.firstBaselineAnchor.constraint(equalTo: professionLbl.firstBaselineAnchor).isActive = true
        professionTxtField.topAnchor.constraint(equalTo: qualificationTxtField.bottomAnchor, constant: 8).isActive = true
        
        addressTxtField.firstBaselineAnchor.constraint(equalTo: addressLbl.firstBaselineAnchor).isActive = true
        addressTxtField.topAnchor.constraint(equalTo: professionTxtField.bottomAnchor, constant: 8).isActive = true
        
        let margins = view.layoutMarginsGuide
        container.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        container.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        container.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
        
        btn1.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
        btn1.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
        
        btn2.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        btn2.leadingAnchor.constraint(equalTo: btn1.trailingAnchor, constant: 8).isActive = true
        btn2.bottomAnchor.constraint(equalTo: btn1.bottomAnchor).isActive = true
        btn2.widthAnchor.constraint(equalTo: btn1.widthAnchor).isActive = true
    }

}

