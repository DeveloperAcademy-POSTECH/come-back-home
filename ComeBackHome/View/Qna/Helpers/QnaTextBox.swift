//
//  QnaTextBox.swift
//  ComeBackHome
//
//  Created by ICHAN NAM on 2022/04/07.
//

import SwiftUI

struct QnaTextBox: View {
    var date: String
    var background: Color
    var text: Text
    var isEditable: Bool? = false
    
    init(_ date: String, _ background: Color, _ text: Text, isEditable: Bool = false) {
        self.date = date
        self.background = background
        self.text = text
        self.isEditable = isEditable
    }
    
    var body: some View {
        VStack(spacing: 0.0) {
            TextBlock(text)
            if isEditable! {
                HStack {
                    Spacer()
                    NavigationLink(destination: QnaAnswerView(date: date)) {
                        QnaEditButton()
                    }
                }
                .padding(EdgeInsets(top: 0.0, leading: 0.0, bottom: -22.0, trailing: -20.0))
            }
        }
        .padding(EdgeInsets(top: 22.0, leading: 20.0, bottom: 22.0, trailing: 20.0))
        .background(background)
        .cornerRadius(10.0)
    }
}

struct QnaTextBox_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            QnaTextBox(
                "Apr 7. 2022",
                Color("Black5"),
                Text("Q. " + "이번년도 가족과 함께 있던 시간 중 가장 좋았던 혹은 인상깊었던 순간은?")
                    .font(.headline)
                    .foregroundColor(Color("Black3")),
                isEditable: true)
            
            QnaTextBox(
                "Apr 7. 2022",
                Color("GraySky"),
                Text("여름에 캠핑장에 갔을 때 !\n오랜만에 모여서 고기 구워먹고 좋았어요~")
                    .font(.headline)
                    .fontWeight(.medium)
                    .foregroundColor(Color("MainColor")))
        }
        .previewLayout(.fixed(width: 390.0, height: 200.0))
    }
}
