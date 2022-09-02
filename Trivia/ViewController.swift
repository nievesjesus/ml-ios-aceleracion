//
//  ViewController.swift
//  Trivia
//
//  Created by Jesus Nieves on 01/09/2022.
//

import UIKit

// PureLayout
// Snapkit -- Declarativo

// GRATIS
// Lookin -- UI Debug
// Chisel -- para LLDB

// PAGA
// Sherlock -- UI Debug

final class ViewController: UIViewController {
    
    private lazy var imageView: UIImageView = {
        let aImageView = UIImageView()
        aImageView.translatesAutoresizingMaskIntoConstraints = false
        aImageView.contentMode = .scaleAspectFill
        aImageView.image  = UIImage(named: "background")
        self.view.addSubview(aImageView)
        return aImageView
    }()
    
    private lazy var button: UIButton = {
       let aButton = UIButton()
        aButton.translatesAutoresizingMaskIntoConstraints = false
        aButton.backgroundColor = .red
        aButton.setTitle("Soy un botton", for: .normal)
        self.view.insertSubview(aButton, aboveSubview: imageView)
        return aButton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            imageView.topAnchor.constraint(equalTo: view.topAnchor),
        ])
    }
    
}

