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
    private lazy var scrollView: UIScrollView = {
        let aScrollView = UIScrollView()
        aScrollView.translatesAutoresizingMaskIntoConstraints = false
        return aScrollView
    }()
    
    private lazy var contentView: UIView = {
        let aView = UIView()
        aView.translatesAutoresizingMaskIntoConstraints = false
        return aView
    }()
    
    private lazy var infoButton: UIButton = {
        let aButton = UIButton()
        aButton.translatesAutoresizingMaskIntoConstraints = false
        aButton.setImage(UIImage(named: "info"), for: .normal)
        return aButton
    }()
    
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
        self.view.addSubview(scrollView)
        self.scrollView.addSubview(contentView)
        self.contentView.addSubview(logoImageView)
        self.contentView.addSubview(titleLabel)
        self.contentView.addSubview(userLabel)
        self.contentView.addSubview(userTextField)
        self.contentView.addSubview(startButton)
        self.contentView.addSubview(infoButton)
        
        // Estilos
        self.view.backgroundColor = UIColor(red: 0.77, green: 0.87, blue: 0.96, alpha: 1.00)
        
        // Asignar interacciones
        startButton.addTarget(self, action: #selector(buttonPressed), for: .touchDown)
        infoButton.addTarget(self, action: #selector(infoPressed), for: .touchDown)
    }
    
    private func setupConstraints(){
        NSLayoutConstraint.activate([
            
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            
            contentView.heightAnchor.constraint(equalToConstant: 600),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            
            infoButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            infoButton.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            infoButton.widthAnchor.constraint(equalToConstant: 32),
            infoButton.heightAnchor.constraint(equalToConstant: 32),
            
            logoImageView.widthAnchor.constraint(equalToConstant: 86),
            logoImageView.heightAnchor.constraint(equalToConstant: 86),
            logoImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant:40),
            logoImageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            
            titleLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 22),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant:  16),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant:  -16),
            
            userLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 48),
            userLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant:  16),
            userLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant:  -16),
            
            userTextField.topAnchor.constraint(equalTo: userLabel.bottomAnchor, constant: 8),
            userTextField.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant:  16),
            userTextField.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant:  -16),
            userTextField.heightAnchor.constraint(equalToConstant: 48),
            
            startButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 16),
            startButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            startButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -26),
            startButton.heightAnchor.constraint(equalToConstant: 48),
            
        ])
    }
    
    
    // MARK: Interactions
    @objc func buttonPressed () {
        let vc = QuetionViewController()
        self.present(vc, animated: true)
    }
    
    @objc func infoPressed () {
        let vc = InfoViewController()
        self.present(vc, animated: true)
    }
}
