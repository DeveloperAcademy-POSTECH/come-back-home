//
//  QnaQuestionRow.swift
//  ComeBackHome
//
//  Created by ICHAN NAM on 2022/04/07.
//

import SwiftUI

struct QnaQuestionRow: View {
    var question: Question
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 6.0) {
                Text(question.date)
                    .font(.system(size: 14.0, weight: .light))
                    .foregroundColor(Color("Black2"))
                HStack {
                    Text("Q. " + question.question)
                        .font(.system(size: 17.0, weight: question.isAnswered ? .semibold : .medium))
                        .foregroundColor(question.isAnswered ? Color("Black0") : Color("Black1"))
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
            }
            .padding(.bottom, 11.7)
            
            Divider()
                .padding(0.0)
        }
    }
}

struct QnaQuestionRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            QnaQuestionRow(question: Question(id: 1, date: "April 7. 2022", question: "오늘은 내가 요리사! 다가오는 일요일,\n우리 가족을 살찌울 필살기 요리가 있다면 ?", isAnswered: true))
            QnaQuestionRow(question: Question(id: 3, date: "April 5, 2022", question: "하루 끝에 혼자 힐링하며 즐길 수 있는 최고의 취미와 이와 함께하는 음식은?", isAnswered: false))
        }
        .previewLayout(.fixed(width: 390.0, height: 200.0))
    }
}
