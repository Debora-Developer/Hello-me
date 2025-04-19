import SwiftUI

class Option: Identifiable {
    let id = UUID()
    let text: String?
    let image: String?
    let correct: Bool?
    
    init(text: String?, image: String?, correct: Bool?) {
        self.text = text
        self.image = image
        self.correct = correct
    }
}
