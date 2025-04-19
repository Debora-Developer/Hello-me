import SwiftUI

@Observable class QuizDatabase {
    private let questions: [Question] = [
        Question(
            text: "Quantos coelhos eu já tive?", 
            options: [
                Option(text: "1", image: "no-fruits", correct: false),
                Option(text: "2", image: "tamara", correct: false),
                Option(text: "3", image: "abacate", correct: true),
                Option(text: "4", image: "limao", correct: false),
            ]
        ),
        Question(
            text: "Eu nunca chamei meu pet de:",
            options: [
                Option(text: "Judy", image: "mg", correct: true),
                Option(text: "Tambor", image: "op", correct: false),
                Option(text: "Princesa", image: "pan", correct: false),
                Option(text: "Amora", image: "aa", correct: false),
            ]
        ),
        Question(
            text: "Qual dessas afirmações é falsa:",
            options: [
                Option(text: "Perguntei para o fazendeiro se podia levar um coelho para casa", image: nil, correct: false),
                Option(text: "Minha vizinha ofereceu o seu coelho para mim", image: nil, correct: false),
                Option(text: "Minha irmã me convenceu a comprar um coelho", image: nil, correct: false),
                Option(text: "Um casal de coelhos de um conhecido procriou e eu peguei um pra mim", image: nil, correct: true),
            ]
        ),
        Question(
            text: "Qual a comida favorita da minha coelha?", 
            options: [
                Option(text: "Cenoura", image: nil, correct: false),
                Option(text: "Maça", image: nil, correct: true),
                Option(text: "Feno", image: nil, correct: false),
                Option(text: "Ração", image: nil, correct: false),
            ]
        ),
        Question(
            text: "O que minha coelha não faz:",
            options: [
                Option(text: "Lamber meu pé", image: "airtag", correct: false),
                Option(text: "Tomar banho", image: "lightning", correct: true),
                Option(text: "Arranhar a porta", image: "magsafe", correct: false),
                Option(text: "Bater as pernas", image: "galaxy", correct: false),
            ]
        ),
        Question(
            text: "Ela já roeu de tudo menos ___:",
            options: [
                Option(text: "a minha sandália", image: nil, correct: false),
                Option(text: "o fio do telefone", image: nil, correct: false),
                Option(text: "o pé da cama", image: nil, correct: true),
                Option(text: "a porta do quarto", image: nil, correct: false),
            ]
        ),
    ]
    
    private var currentIndex: Int = 0
    
    init() {
        currentIndex = 0
    }
    
    func restartQuiz() {
        currentIndex = 0
    }
    
    func hasFinished() -> Bool {
        return currentIndex >= questions.count
    }
    
    func getCurrentQuestion() -> Question {
        if currentIndex < questions.count {
            return questions[currentIndex]
        } else {
            return questions[0]
        }
    }

}
