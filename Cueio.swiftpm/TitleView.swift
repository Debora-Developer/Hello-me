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
        Text("Escolher título")
            .font(.largeTitle)
            .bold()
        Button {
            withAnimation {
                start = true
            }
        } label: {
            Text("Começar")
                .foregroundStyle(.blue)
        }
        .buttonStyle(.bordered)

    }
}
