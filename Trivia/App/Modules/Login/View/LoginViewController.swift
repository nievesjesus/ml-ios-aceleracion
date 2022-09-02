//
//  LoginViewController.swift
//  Trivia
//
//  Created by Jesus Nieves on 02/09/2022.
//

import UIKit

final class LoginViewController: UIViewController {

    // MARK: View Code
    // UIImageView = Contenedor de la imagen
    // UIImage = Es el objeto de imagen
    private lazy var logoImageView: UIImageView = {
        let aImageView = UIImageView()
        aImageView.backgroundColor = .white
        aImageView.layer.cornerRadius = 43
        aImageView.clipsToBounds = true
        aImageView.translatesAutoresizingMaskIntoConstraints = false
        let image = UIImage(named: "logo")
        aImageView.image = image
        return aImageView
    }()
    
    private lazy var titleLabel: UILabel = {
        let aLabel = UILabel()
        aLabel.translatesAutoresizingMaskIntoConstraints = false
        aLabel.text = "Alkemy Trivia"
        aLabel.textColor = .black
        aLabel.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        aLabel.textAlignment = .center
        return aLabel
    }()
    
    private lazy var userLabel: UILabel = {
        let aLabel = UILabel()
        aLabel.translatesAutoresizingMaskIntoConstraints = false
        aLabel.text = "Usuario"
        aLabel.textColor = .black
        return aLabel
    }()
    
    private lazy var userTextField: AlkemyTextField = {
        let aTextField = AlkemyTextField()
        aTextField.translatesAutoresizingMaskIntoConstraints = false
        aTextField.icon = UIImage(named: "bart")
        return aTextField
    }()
    
    private lazy var startButton: UIButton = {
        let aButton = UIButton()
        aButton.translatesAutoresizingMaskIntoConstraints = false
        aButton.backgroundColor = UIColor(red: 1.00, green: 0.00, blue: 0.50, alpha: 1.00)
        aButton.layer.cornerRadius = 12
        aButton.setTitle("Empezar", for: .normal)
        return aButton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupConstraints()
    }

    // MARK: View Build
    private func setupView(){
        
        // Agregar vistas a la vista principal del view controller
        self.view.addSubview(logoImageView)
        self.view.addSubview(titleLabel)
        self.view.addSubview(userLabel)
        self.view.addSubview(userTextField)
        self.view.addSubview(startButton)
        
        // Estilos
        self.view.backgroundColor = UIColor(red: 0.77, green: 0.87, blue: 0.96, alpha: 1.00)
        
        // Asignar interacciones
        startButton.addTarget(self, action: #selector(buttonPressed), for: .touchDown)
    }
    
    private func setupConstraints(){
        NSLayoutConstraint.activate([
            // Constraints del imageview
            logoImageView.widthAnchor.constraint(equalToConstant: 86),
            logoImageView.heightAnchor.constraint(equalToConstant: 86),
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant:40),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            titleLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 22),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:  16),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant:  -16),
            
            userLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 48),
            userLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:  16),
            userLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant:  -16),
            
            userTextField.topAnchor.constraint(equalTo: userLabel.bottomAnchor, constant: 8),
            userTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:  16),
            userTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant:  -16),
            userTextField.heightAnchor.constraint(equalToConstant: 48),
            
            startButton.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 16),
            startButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            startButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -26),
            startButton.heightAnchor.constraint(equalToConstant: 48),
            
        ])
    }
    
    
    // MARK: Interactions
    @objc func buttonPressed () {
        print("Empezamos por codigo")
    }
}
