//
//  QnaAnswerWithProfileView.swift
//  ComeBackHome
//
//  Created by ICHAN NAM on 2022/04/07.
//

import SwiftUI

struct QnaAnswerWithProfileView: View {
    var answer: AnswerWithProfile
    
    var body: some View {
        VStack (alignment: .leading, spacing: 5.0) {
            QnaProfileView(answer.imageSet, 35.0, answer.name, .callout)
            
            QnaTextBox(
                Color("GraySky"),
                Text(answer.answer ?? "아직 답변을 작성하지 않았어요.")
                    .font(.headline)
                    .fontWeight(.medium)
                    .foregroundColor(Color("MainColor")))
        }
    }
}

struct QnaAnswerWithProfileView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            QnaAnswerWithProfileView(answer: AnswerWithProfile(id: 1000, imageSet: "Pang2", name: "Dana"))
            QnaAnswerWithProfileView(answer: AnswerWithProfile(id: 1001, imageSet: "Pang3", name: "Gun"))
        }
        .previewLayout(.fixed(width: 390.0, height: 200.0))
    }
}
