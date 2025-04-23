//
//  SwiftUIView.swift
//  My App
//
//  Created by Gustavo Binder on 24/02/25.
//

import SwiftUI

struct TitleView: View {
    @Binding public var start: Bool
    
    var body: some View {
        VStack{
//            Text("")
//                .font(.largeTitle)
//                .bold()
            Button {
                withAnimation {
                    start = true
                }
            } label: {
                Text("Começar")
                    .foregroundStyle(.white)
            }
            .buttonStyle(.bordered)
            .padding(.top, 150)
            .tint(Color(red:0.58,green:0.1,blue: 0.5))
        }
        .frame(width: 393, height: 852)
        .background(
            Image("Coelha")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
        )

//        .background(Image("nome da imagem"))
    }
}
