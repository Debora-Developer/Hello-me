import SwiftUI
import SpriteKit

struct ResultView: View {
    @Environment(QuizDatabase.self) private var data
    @Binding var start : Bool


    var scene: SKScene {
        let s = PhysicsScene(size: CGSize(width: 800, height: 800))
        s.scaleMode = .aspectFit
        return s
    }

    var body: some View {
        ZStack {
            SpriteView(scene: scene)
                .ignoresSafeArea()
                .zIndex(0)

            VStack {
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
            }
        }
    }
}
