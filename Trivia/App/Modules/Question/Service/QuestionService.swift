//
//  QuestionService.swift
//  Trivia
//
//  Created by Jesus Nieves on 07/09/2022.
//

import Foundation

final class QuestionService {
    static let shared = QuestionService()
    
    private init() {}
    
    func obtenerPreguntas() -> [Question] {
        return [
        Question(question: "¿Argentina tiene 3 copas del mundo en fútbol?", answer: false),
        Question(question: "¿La capital de Chile es Santiago?",answer: true),
        Question(question: "¿El día tiene 24 horas?", answer: true),
        Question(question: "El mes de Junio, ¿tiene 31 días?", answer: false),
        Question(question: "2 + 2 = 3", answer: false),
        Question(question: "1024 Gigabytes es 1 Terabyte.", answer: true),
        Question(question: "La glándula tiroides, ¿está en el cerebro?", answer: false),
        Question(question: "El intestino delgado mide entre 5 y 8 metros.", answer: true),
        Question(question: "El primer país en organizar un Mundial de Fútbol fue Uruguay.", answer: true),
        Question(question: "La Gran Muralla China es visible desde la Luna.", answer: false),
        Question(question: "Rusia cuenta con 11 zonas horarias.", answer: true),
        ]
    }
}
