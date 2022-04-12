//
//  QnaAnswerWithProfileView.swift
//  ComeBackHome
//
//  Created by ICHAN NAM on 2022/04/07.
//

import SwiftUI

struct QnaAnswerWithProfileView: View {
    var date: String
    var answer: AnswerWithProfile
    var isEditable: Bool? = false
    
    var body: some View {
        VStack (alignment: .leading, spacing: 5.0) {
            QnaProfileView(answer.imageSet, 35.0, answer.name, .callout)
            
            QnaTextBox(
                date,
                Color("GraySky"),
                Text(answer.answer ?? "아직 답변을 작성하지 않았어요.")
                    .font(.headline)
                    .fontWeight(.medium)
                    .foregroundColor(Color("MainColor")),
                isEditable: isEditable!)
        }
    }
}

struct QnaAnswerWithProfileView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            QnaAnswerWithProfileView(
                date: "Apr 6. 2022",
                answer: AnswerWithProfile(id: 1000, imageSet: "Pang2", name: "Dana", answer: "여름에 캠핑장에 갔을 때!\n오랜만에 모여서 고기 구워먹고 좋았어요~"),
                isEditable: true)
            
            QnaAnswerWithProfileView(
                date: "Apr 6. 2022",
                answer: AnswerWithProfile(id: 1001, imageSet: "Pang3", name: "Gun"))
        }
        .previewLayout(.fixed(width: 390.0, height: 200.0))
    }
}
