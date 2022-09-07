//
//  QuestionViewModel.swift
//  Trivia
//
//  Created by Jesus Nieves on 07/09/2022.
//

import Foundation


class QuestionViewModel {
    
    private var service: QuestionService
    private var questions: [Question] = [Question]()
    private var currentQuestionIndex = 0
    private var delegate: QuestionsDelegate
    
    init(service: QuestionService, delegate: QuestionsDelegate) {
        self.service = service
        self.delegate = delegate
    }
    
    func getQuestions() {
        self.questions = self.service.obtenerPreguntas()
    }
    
    func modelAction(action: Bool) {
        let result = validateCurrentQuestion(answer: action)
        sendResultMessage(for: result)
        updateQuestion()
    }
    
    private func updateQuestion() {
        currentQuestionIndex += 1
        setCurrentQuestion(for: currentQuestionIndex)
    }
    
    private func setCurrentQuestion(for index: Int) {
        if index < questions.count {
            self.delegate.setCurrentQuestion(question:  questions[index].question)
        }
        else {
            currentQuestionIndex = 0
            self.delegate.setCurrentQuestion(question: questions[currentQuestionIndex].question)
        }
    }
    
    private func validateCurrentQuestion(answer: Bool) -> Bool {
        questions[currentQuestionIndex].answer == answer
    }
    
    private func sendResultMessage(for result: Bool) {
        let message = result ? "La respuesta es correcta! 🥳" : "La respuesta es incorrecta 😔"
        print(message)
    }
    
}
