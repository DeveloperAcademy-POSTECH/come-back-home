//
//  QnaTextEditorBox.swift
//  ComeBackHome
//
//  Created by ICHAN NAM on 2022/04/08.
//

import SwiftUI

struct QnaTextEditorBox: View {
    @State private var answer: String = "이곳을 눌러 답변을 입력해 주세요."
    var question: String
    
    init(_ question: String) {
        self.question = question
        UITextView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        VStack(spacing: 18.0) {
            TextBlock(
                Text(question)
                    .font(.headline)
                    .foregroundColor(Color("MainColor")))
                    .lineSpacing(7.0)
            
            TextEditor(text: $answer)
                .font(.body)
                .foregroundColor(Color("Black1"))
                .lineSpacing(7.0)
        }
        .padding(EdgeInsets(top: 22.0, leading: 20.0, bottom: 22.0, trailing: 20.0))
        .frame(height: 250.0)
        .background(Color("GraySky"))
        .cornerRadius(10.0)
    }
}

struct QnaTextEditorBox_Previews: PreviewProvider {
    static var previews: some View {
        QnaTextEditorBox("Q." + "오늘은 내가 요리사! 다가오는 일요일, 우리 가족을 살찌울 필살기 요리가 있다면?")
    }
}
