//
//  AlkemyTextField.swift
//  Trivia
//
//  Created by Jesus Nieves on 02/09/2022.
//

import UIKit

class AlkemyTextField: UITextField {
    let padding = UIEdgeInsets(top: 0, left: 38, bottom: 0, right: 5)
    
    var icon: UIImage? {
        didSet {
            iconView.image = icon
        }
    }
    
    // MARK: View Code
    private lazy var iconView:  UIImageView = {
        let aImageView = UIImageView()
        aImageView.translatesAutoresizingMaskIntoConstraints = false
        customLeftView.addSubview(aImageView)
        return aImageView
    }()
    
    private lazy var customLeftView : UIView = {
        let aView = UIView()
        aView.translatesAutoresizingMaskIntoConstraints = false
        return aView
    }()
    
    // MARK: Method's override
     override open func textRect(forBounds bounds: CGRect) -> CGRect {
         return bounds.inset(by: padding)
     }

     override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
         return bounds.inset(by: padding)
     }

     override open func editingRect(forBounds bounds: CGRect) -> CGRect {
         return bounds.inset(by: padding)
     }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Build view
    private func setupView (){
        self.backgroundColor = .white
        self.layer.cornerRadius = 8
        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.shadowOffset = CGSize(width: 1, height: 2)
        self.layer.shadowOpacity = 1.0
        self.layer.masksToBounds = false
        self.leftView = customLeftView
        self.leftViewMode = .always
    }
    
    private func setupConstraints(){
        NSLayoutConstraint.activate([
            iconView.heightAnchor.constraint(equalToConstant: 32),
            iconView.widthAnchor.constraint(equalToConstant: 32),
            customLeftView.heightAnchor.constraint(equalToConstant: 32),
            customLeftView.widthAnchor.constraint(equalToConstant: 32)
        ])
    }
}
