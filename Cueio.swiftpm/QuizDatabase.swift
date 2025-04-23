import SwiftUI

@Observable class QuizDatabase {
    private let questions: [Question] = [
        Question(
            text: "Quantos coelhos eu já tive?", 
            options: [
                Option(text: "1", image: "1", correct: false),
                Option(text: "2", image: "2", correct: false),
                Option(text: "3", image: "3", correct: true),
                Option(text: "4", image: "16", correct: false),
            ]
        ),
        Question(
            text: "Eu nunca chamei meu pet de:",
            options: [
                Option(text: "Judy", image: "5", correct: true),
                Option(text: "Tambor", image: "6", correct: false),
                Option(text: "Princesa", image: "7", correct: false),
                Option(text: "Amora", image: "8", correct: false),
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
                Option(text: "Cenoura", image: "9", correct: false),
                Option(text: "Maça", image: "10", correct: true),
                Option(text: "Feno", image: "11", correct: false),
                Option(text: "Ração", image: "12", correct: false),
            ]
        ),
        Question(
            text: "O que minha coelha não faz:",
            options: [
                Option(text: "Lamber meu pé", image: "13", correct: false),
                Option(text: "Tomar banho", image: "14", correct: true),
                Option(text: "Arranhar a porta", image: "15", correct: false),
                Option(text: "Bater as pernas", image: "16", correct: false),
            ]
        ),
        Question(
            text: "Ela já roeu de tudo menos ___:",
            options: [
                Option(text: "a minha sandália", image: "17", correct: false),
                Option(text: "o fio do telefone", image: "18", correct: false),
                Option(text: "o pé da cama", image: "19", correct: true),
                Option(text: "minhas roupas", image: "20", correct: false),
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

    func answerQuestion(option: Option) -> Bool {
        if hasFinished() || !option.correct {
            return false
        }

        currentIndex += 1
        return true
    }
}
