import SwiftUI

struct ContentView: View {
    @Environment(QuizDatabase.self) private var data
    @State private var start = false

    var body: some View {
       if start {
           if data.hasFinished() {
               
           } else {
               QuizView()
           }
       } else {
           TitleView(start: $start)
       }
    }
}
