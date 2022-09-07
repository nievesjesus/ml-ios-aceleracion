//
//  QuetionViewController.swift
//  Trivia
//
//  Created by Jesus Nieves on 07/09/2022.
//

import Foundation
import UIKit

protocol QuestionsDelegate {
    func setCurrentQuestion(question: String)
}

class QuetionViewController: UIViewController {
    
    private var viewModel:QuestionViewModel?
    
    private lazy var mainView: QuestionView = {
        let aView = QuestionView()
        aView.translatesAutoresizingMaskIntoConstraints = false
        return aView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupConstraints()
        self.viewModel = QuestionViewModel(service: QuestionService.shared, delegate: self)
        self.viewModel?.getQuestions()
    }
    
    private func setupView() {
        self.view.addSubview(mainView)
        mainView.wrongButton.addTarget(self, action: #selector(wrongAnswerTapped), for: .touchDown)
        mainView.correctButton.addTarget(self, action: #selector(rightAnswerTapped), for: .touchDown)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            mainView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mainView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            mainView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            mainView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
        ])
    }
    
    @objc func wrongAnswerTapped(_ sender: UIButton) {
        self.viewModel?.modelAction(action: false)
    }
    
    @objc func rightAnswerTapped(_ sender: UIButton) {
        self.viewModel?.modelAction(action: true)
    }
    
}

extension QuetionViewController: QuestionsDelegate {
    
    func setCurrentQuestion(question: String) {
        mainView.question = question
    }

}
