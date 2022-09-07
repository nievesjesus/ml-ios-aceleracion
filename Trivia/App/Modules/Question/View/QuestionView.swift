//
//  QuestionView.swift
//  Trivia
//
//  Created by Jesus Nieves on 07/09/2022.
//

import UIKit

class QuestionView: UIView {
    
    var title: String? {
        didSet {
            titleLabel.text = title
        }
    }
    
    var question: String? {
        didSet {
            questionLabel.text = question
        }
    }
    
    private lazy var titleLabel: UILabel = {
        let aLabel = UILabel()
        aLabel.translatesAutoresizingMaskIntoConstraints = false
        aLabel.text = "random".uppercased()
        aLabel.textAlignment = .center
        aLabel.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        return aLabel
    }()
    
    private lazy var questionLabel: UILabel = {
        let aLabel = UILabel()
        aLabel.translatesAutoresizingMaskIntoConstraints = false
        aLabel.text = "¿Question?"
        aLabel.textAlignment = .center
        aLabel.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        aLabel.numberOfLines = 0
        return aLabel
    }()
    
    lazy var correctButton: UIButton = {
        let aButton = UIButton(type: .custom)
        aButton.translatesAutoresizingMaskIntoConstraints = false
        aButton.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        aButton.setImage(UIImage(named: "tick"), for: .normal)
        return aButton
    }()
    
    lazy var wrongButton: UIButton = {
        let aButton = UIButton(type: .custom)
        aButton.translatesAutoresizingMaskIntoConstraints = false
        aButton.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        aButton.setImage(UIImage(named: "wrong"), for: .normal)
        return aButton
    }()
    
    private lazy var buttonStack: UIStackView = {
        let aStack = UIStackView()
        aStack.translatesAutoresizingMaskIntoConstraints = false
        aStack.axis = .horizontal
        aStack.distribution = .equalCentering
        aStack.alignment = .center
        aStack.addArrangedSubview(correctButton)
        aStack.addArrangedSubview(wrongButton)
        return aStack
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: View Build
    private func setupView(){
        // Agregar vistas a la vista principal del view controller
        self.addSubview(titleLabel)
        self.addSubview(questionLabel)
        self.addSubview(buttonStack)
        // Estilos
        self.backgroundColor = UIColor(red: 0.77, green: 0.87, blue: 0.96, alpha: 1.00)
    }
    
    private func setupConstraints(){
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 40),
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            questionLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            questionLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            questionLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            buttonStack.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            buttonStack.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -30),
            buttonStack.heightAnchor.constraint(equalToConstant: 100),
            buttonStack.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 40),
            buttonStack.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -40),
            
            correctButton.heightAnchor.constraint(equalToConstant: 100),
            correctButton.widthAnchor.constraint(equalToConstant: 100),
            
            wrongButton.heightAnchor.constraint(equalToConstant: 100),
            wrongButton.widthAnchor.constraint(equalToConstant: 100)
        ])
    }
    
}
