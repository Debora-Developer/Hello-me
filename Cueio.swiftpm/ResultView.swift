import SwiftUI
import SpriteKit

struct ResultView: View {
    @Environment(QuizDatabase.self) private var data
    @Binding var start : Bool


    var scene: SKScene {
        let s = PhysicsScene(size: CGSize(width: 500, height: UIScreen.main.bounds.size.height))
        s.scaleMode = .aspectFit
        return s
    }

    var body: some View {
        SpriteView(scene: scene)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.black)
        //        .background(Image("nome da imagem"))
            .ignoresSafeArea()
    }
}
