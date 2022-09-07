//
//  InfoViewController.swift
//  Trivia
//
//  Created by Jesus Nieves on 07/09/2022.
//
import UIKit

class InfoViewController: UIViewController {
    
    private lazy var mainView: InfoView = {
        let aView = InfoView()
        aView.translatesAutoresizingMaskIntoConstraints = false
        return aView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupConstraints()
    }

    // MARK: View Build
    private func setupView(){
        self.view.backgroundColor = .white
        self.view.addSubview(mainView)
        mainView.closeButton.addTarget(self, action: #selector(closePressed), for: .touchDown)
    }
    
    private func setupConstraints(){
        NSLayoutConstraint.activate([
            mainView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mainView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            mainView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            mainView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
        ])
    }
    
    @objc func closePressed () {
        print("funciona")
        self.dismiss(animated: true)
    }
}
