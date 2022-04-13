//
//  QnaFamilyView.swift
//  ComeBackHome
//
//  Created by ICHAN NAM on 2022/04/07.
//

import SwiftUI

struct QnaFamilyView: View {
    // dummy data will be removed to enhance the app
    let myAnswerDummy = AnswerWithProfile(id: 1000, imageSet: "Pang2", name: "Dana", answer: "여름에 캠핑장에 갔을 때 !\n오랜만에 모여서 고기 구워먹고 좋았어요~")
    
    // dummy data will be removed to enhance the app
    let othersAnswerDummy: [AnswerWithProfile] = [
        AnswerWithProfile(id: 1001, imageSet: "Pang3", name: "Gun", answer: "저는 결혼식 끝나고 다같이 뒷풀이 할 때가 가장 편하고 좋았어요 ㅎㅎ"),
        AnswerWithProfile(id: 1002, imageSet: "Pang4", name: "Timo", answer: "나는 로운이 용돈줬을 때 ~ ㅎㅎ\n장난이고 등산 갔을 때가 제일 좋았다"),
    ]
    
    var date: String
    
    var body: some View {
        ScrollView {
            VStack(spacing: 24.0) {
                VStack(spacing: 22.0) {
                    // QnaTodaysQuestionView(date, todaysQuestionColor: Color("Black1"))
                    QnaTodaysQuestionView("Apr 6. 2022", todaysQuestionColor: Color("Black1")) // temporary
                        
                    // hard-coded data must be replaced with dynamic data
                    QnaTextBox(
                        "Apr 6. 2022",
                        Color("Black5"),
                        Text("Q. " + "이번년도 가족과 함께 있던 시간 중 가장 좋았던 혹은 인상깊었던 순간은?")
                            .font(.headline)
                            .foregroundColor(Color("Black1")))
                }
                
                // hard-coded data must be replaced with dynamic data
                QnaAnswerWithProfileView(date: "Apr 6, 2022", answer: myAnswerDummy, isEditable: true)
                    .padding(.bottom, -4.0)
                
                VStack(spacing: 20.0) {
                    ForEach(othersAnswerDummy) { d in
                        // hard-coded data must be replaced with dynamic data
                        QnaAnswerWithProfileView(date: "Apr 6. 2022", answer: d)
                    }
                }
            }
        }
        // styling
        .padding(EdgeInsets(top: 22.0, leading: 20.0, bottom: 22.0, trailing: 20.0))
        // navigation bar
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle(Qna.navigationTitle)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                NavigationLink(destination: QnaListView()) {
                    Qna.navigationListButton
                }
            }
        }
    }
}

struct QnaFamilyView_Previews: PreviewProvider {
    static var previews: some View {
        QnaFamilyView(date: "April 7. 2022")
    }
}
