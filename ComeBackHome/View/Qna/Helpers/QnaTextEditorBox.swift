//
//  QnaTextEditorBox.swift
//  ComeBackHome
//
//  Created by ICHAN NAM on 2022/04/08.
//

import SwiftUI

struct QnaTextEditorBox: View {
    @State private var answer: String
    var question: String
    
    init(_ question: String, _ answer: String) {
        self.question = question
        self.answer = answer
        UITextView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        VStack(spacing: 29.0) {
            TextBlock(
                Text(question)
                    .font(.headline)
                    .foregroundColor(Color("Black1")))
            
            TextEditor(text: $answer)
                .font(.headline)
                .foregroundColor(Color("Black0"))
        }
        .padding(EdgeInsets(top: 22.0, leading: 20.0, bottom: 22.0, trailing: 20.0))
        .frame(height: 345.0)
        .background(Color("Black5"))
        .cornerRadius(10.0)
    }
}

struct QnaTextEditorBox_Previews: PreviewProvider {
    static var previews: some View {
        QnaTextEditorBox(
            "Q. " + "오늘은 내가 요리사! 다가오는 일요일,\n우리 가족을 살찌울 필살기 요리가 있다면 ?",
            "나는 짜파게티 요리사 ~!\n불닭이랑 섞어서 만들까말까")
    }
}
