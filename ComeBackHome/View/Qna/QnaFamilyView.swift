//
//  QnaFamilyView.swift
//  ComeBackHome
//
//  Created by ICHAN NAM on 2022/04/07.
//

import SwiftUI

struct QnaFamilyView: View {
    let dummyData: [AnswerWithProfile] = [
        AnswerWithProfile(id: 1000, imageSet: "Pang2", name: "Dana", answer: "여름에 캠핑장에 갔을 때 !\n오랜만에 모여서 고기 구워먹고 좋았어요~"),
        AnswerWithProfile(id: 1001, imageSet: "Pang3", name: "Gun", answer: "저는 결혼식 끝나고 다같이 뒷풀이 할 때가 가장 편하고 좋았어요 ㅎㅎ"),
        AnswerWithProfile(id: 1002, imageSet: "Pang4", name: "Timo", answer: "나는 로운이 용돈줬을 때 ~ ㅎㅎ\n장난이고 등산 갔을 때가 제일 좋았다"),
    ]
    
    var date: String
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 22.0) {
                    VStack(spacing: 18.0) {
                        QnaTodaysQuestionView(date, todaysQuestionColor: Color("Black1"))
                        
                        QnaTextBox(
                            Color("Black5"),
                            Text("Q. " + "이번년도 가족과 함께 있던 시간 중\n가장 좋았던 혹은 인상깊었던 순간은?")
                                .font(.headline)
                                .foregroundColor(Color("Black1")))
                    }
                    
                    VStack(spacing: 14.0) {
                        ForEach(dummyData) { d in
                            QnaAnswerWithProfileView(answer: d)
                        }
                    }
                }
            }
            // styling
            .padding(EdgeInsets(top: 22.0, leading: 20.0, bottom: 22.0, trailing: 20.0))
            // navigation bar
            .navigationBarHidden(true)
        }
        .navigationBarHidden(true)
    }
}

struct QnaFamilyView_Previews: PreviewProvider {
    static var previews: some View {
        QnaFamilyView(date: "April 7. 2022")
    }
}
