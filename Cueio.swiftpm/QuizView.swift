import SwiftUI

struct QuizView: View {
    @Environment(QuizDatabase.self) private var data
    
    let columns = [
        GridItem(spacing: 16),
        GridItem()
    ]
    // @State - deixa reativo 
    @State private var selectedOption: Option? = nil
    @State private var isCorrect: Bool? = nil
    @State private var background = "Fundo2"
    
    var body: some View {
        VStack {
            Text("Hello me and my pet")
                .font(.headline)
                .foregroundStyle(.white)
                .padding()
            
            Spacer().frame(height: 64)
            
            Text(data.getCurrentQuestion().text)
                .font(.title)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(data.getCurrentQuestion().options) { option in
                    Button {
                        selectedOption = option
                        isCorrect = data.answerQuestion(option: option)
                    } label: {
                        VStack {
                            if let text = option.text {
                                Text(text)
                                    .font(.title3)
                                    .foregroundStyle(.white)
                            }
                            if let image = option.image {
                                Image(image)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 120, height: 120)
                                    .clipShape(RoundedRectangle(cornerRadius: 12))
                            }
                        }
                        .frame(maxWidth: .infinity, maxHeight: 150)
                        .frame(height: 150)
                        .padding(.vertical, 32)
                        .padding(.horizontal, 16)
                        .background {
                            RoundedRectangle(cornerRadius: 12)
                                .foregroundStyle(backgroundColor(for: option))
                        }
                    }
                }
            }
            Spacer()
        }
        .padding(.horizontal, 16)
        .frame(width: 393, height: 852)
        .background(
            Image(background)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
        )
    }
    
    func backgroundColor(for option: Option) -> Color {
        guard let selected = selectedOption else {
            return .white.opacity(0.1)
        }
        if option.id == selected.id {
//            return isCorrect == true ? Color.green.opacity(0.6) : Color.red.opacity(0.6)
            print(background)
            if (isCorrect!) {
                background = "Fundo2"
                return Color.green.opacity(0.6)
            } else {
                background = "Fundo4"
                return Color.red.opacity(0.6)
            }
        }
        return .white.opacity(0.1)
    }
}
