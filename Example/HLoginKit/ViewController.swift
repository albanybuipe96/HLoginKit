//
//  ViewController.swift
//  HLoginKit
//
//  Created by albanybuipe96 on 05/29/2023.
//  Copyright (c) 2023 albanybuipe96. All rights reserved.
//

import UIKit
import HLoginKit

class ViewController: UIViewController {
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.text = "Financio Inc."
        label.font = UIFont(name: "Helvetica", size: 55)
        label.textColor = .systemGray2
        self.view.addSubview(label)
        return label
    }()
    
    private lazy var mottoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.text = "Empowering Your Financial Journey!"
        label.font = UIFont(name: "Times New Roman", size: 14)
        self.view.addSubview(label)
        return label
    }()
    
    lazy var loginView: LoginView = {
        let view = LoginView()
        view.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(view)
        return view
    }()
    
    private lazy var signinButton: UIButton = {
        let signinButton = UIButton(type: .system)
        signinButton.translatesAutoresizingMaskIntoConstraints = false
        if #available(iOS 15.0, *) {
            signinButton.configuration = .filled()
        } else {
            // Fallback on earlier versions
            signinButton.layer.borderWidth = 1
            signinButton.layer.borderColor = UIColor.gray.cgColor
        }
        if #available(iOS 15.0, *) {
            signinButton.configuration?.imagePadding = 8
        } else {
            // Fallback on earlier versions
        }
        signinButton.setTitle("Sign in", for: [])
        signinButton.addTarget(self, action: #selector(signinTapped), for: .primaryActionTriggered)
        signinButton.layer.cornerRadius = 5
        signinButton.clipsToBounds = true
        self.view.addSubview(signinButton)
        return signinButton
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        NSLayoutConstraint.activate([
            loginView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            loginView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            loginView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            
            titleLabel.bottomAnchor.constraint(equalTo: loginView.topAnchor, constant: -50),
            titleLabel.leadingAnchor.constraint(equalTo: loginView.leadingAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: loginView.trailingAnchor),
            
            mottoLabel.topAnchor.constraint(equalToSystemSpacingBelow: titleLabel.bottomAnchor, multiplier: -20),
            mottoLabel.leadingAnchor.constraint(equalTo: loginView.leadingAnchor),
            mottoLabel.trailingAnchor.constraint(equalTo: loginView.trailingAnchor),
            
            signinButton.topAnchor.constraint(equalToSystemSpacingBelow: loginView.bottomAnchor, multiplier: 2),
            signinButton.leadingAnchor.constraint(equalTo: loginView.leadingAnchor),
            signinButton.trailingAnchor.constraint(equalTo: loginView.trailingAnchor),
            
        ])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func signinTapped(_ action: UIAction?) {
       print("Signin Tapped!")
    }
}

