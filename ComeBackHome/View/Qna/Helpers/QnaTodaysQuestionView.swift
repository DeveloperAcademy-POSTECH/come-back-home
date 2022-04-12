//
//  QnaTodaysQuestionView.swift
//  ComeBackHome
//
//  Created by ICHAN NAM on 2022/04/06.
//

import SwiftUI

struct QnaTodaysQuestionView: View {
    private let date: String
    private let bottomColor: Color
    
    init(_ date: String, todaysQuestionColor: Color = Color("Black0")) {
        self.date = date
        bottomColor = todaysQuestionColor
    }
    
    var body: some View {
        VStack(spacing: 11.0) {
            QnaDateText(date)
            ProfileImage("Question", 55.0)
            Text("오늘의 질문")
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(bottomColor)
        }
    }
}

struct TodaysQuestionBox_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            QnaTodaysQuestionView("Mar 30. 2022")
            QnaTodaysQuestionView("Mar 30. 2022", todaysQuestionColor: Color("Black1"))
        }
        .previewLayout(.fixed(width: 200.0, height: 200.0))
    }
}
