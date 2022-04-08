//
//  QnaTextBox.swift
//  ComeBackHome
//
//  Created by ICHAN NAM on 2022/04/07.
//

import SwiftUI

struct QnaTextBox: View {
    var background: Color
    var topText: Text
    var bottomText: Text?
    
    init(_ background: Color, _ topText: Text, bottomText: Text? = nil) {
        self.background = background
        self.topText = topText
        self.bottomText = bottomText
    }
    
    var body: some View {
        VStack(spacing: 29.0) {
            TextBlock(topText)
            if bottomText != nil {
                TextBlock(bottomText!)
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
                Color("GraySky"),
                Text("Q. " + "오늘은 내가 요리사! 다가오는 일요일,\n우리 가족을 살찌울 필살기 요리가 있다면 ?")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(Color("MainColor")),
                bottomText: Text("이곳을 눌러 답변을 입력해주세요.")
                    .font(.headline)
                    .foregroundColor(Color("Black2")))
            
            QnaTextBox(
                Color("Black5"),
                Text("Q. " + "이번년도 가족과 함께 있던 시간 중\n가장 좋았던 혹은 인상깊었던 순간은?")
                    .font(.headline)
                    .foregroundColor(Color("Black1")))
            
            QnaTextBox(
                Color("GraySky"),
                Text("여름에 캠핑장에 갔을 때 !\n오랜만에 모여서 고기 구워먹고 좋았어요~")
                    .font(.headline)
                    .fontWeight(.medium)
                    .foregroundColor(Color("MainColor")))
        }
        .previewLayout(.fixed(width: 390.0, height: 200.0))
    }
}
