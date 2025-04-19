import SwiftUI
import SpriteKit

struct ResultView: View {
    @Environment(QuizDatabase.self) private var data
    @Binding var start : Bool
    
    // var body: some View {
    //     VStack {
    //         Spacer()
    //         Text("Parabéns")
    //             .font(.title2)
    //         Spacer()
    //         Button {
    //             withAnimation(.bouncy) {
    //                 data.restartQuiz()
    //                 start = false
    //             }
    //         } label: {
    //             Text("Refazer Quiz")
    //                 .foregroundStyle(.blue)
    //         }
    //         .buttonStyle(.bordered)
    //         Spacer()
    //     }
    // }

    var scene: SKScene {
        let s = PhysicsScene(size: CGSize(width: 800, height: 800))
        s.scaleMode = .aspectFit
        return s
    }

    var body: some View {
        ZStack {
//            VStack {
//                Spacer()
//                Text("Parabéns")
//                    .font(.title2)
//                Spacer()
//                Button {
//                    withAnimation(.bouncy) {
//                        data.restartQuiz()
//                        start = false
//                    }
//                } label: {
//                    Text("Refazer Quiz")
//                        .foregroundStyle(.blue)
//                }
//                .buttonStyle(.bordered)
//                Spacer()
//            }
//            .zIndex(1)

            SpriteView(scene: scene)
                .ignoresSafeArea()
                .zIndex(0)
        }
    }
}
