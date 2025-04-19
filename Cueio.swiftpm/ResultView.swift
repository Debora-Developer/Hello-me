import SwiftUI

struct ResultView: View {
    @Environment(QuizDatabase.self) private var data
    @Binding var start : Bool
    
    var body: some View {
        VStack {
            Spacer()
            Text("Parabéns")
                .font(.title2)
            Spacer()
            Button {
                withAnimation(.bouncy) {
                    data.restartQuiz()
                    start = false
                }
            } label: {
                Text("Refazer Quiz")
                    .foregroundStyle(.blue)
            }
            .buttonStyle(.bordered)
            Spacer()
        }
    }
}
