//
//  QnaListView.swift
//  ComeBackHome
//
//  Created by ICHAN NAM on 2022/04/07.
//

import SwiftUI

struct QnaListView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    // dummy data will be removed to enhance the app
    let questionDummy: [Question] = [
        Question(id: 2, date: "Apr 6, 2022", question: "이번년도 가족과 함께 있던 시간 중 가장 좋았던 혹은 인상깊었던 순간은?", isAnswered: true),
        Question(id: 3, date: "Apr 5, 2022", question: "하루 끝에 혼자 힐링하며 즐길 수 있는 최고의 취미와 이와 함께하는 음식은?", isAnswered: false),
        Question(id: 4, date: "Apr 4, 2022", question: "우리 가족이 가장 자랑스러운 순간은?", isAnswered: true),
        Question(id: 5, date: "Apr 3, 2022", question: "초등학생 때 잊혀지지 않는 재미있거나 창피했던 기억은?", isAnswered: false),
        Question(id: 6, date: "Apr 2, 2022", question: "할아버지, 할머니가 나이드셨구나 생각이 드는 순간은 언제인가요?", isAnswered: true),
        Question(id: 7, date: "Apr 1, 2022", question: "어린 시절 친구들 사이에서 별명이 무엇이었나요?", isAnswered: true),
        Question(id: 8, date: "Mar 30. 2022", question: "오늘은 내가 요리사! 다가오는 일요일, 우리 가족을 살찌울 필살기 요리가 있다면?", isAnswered: true),
        Question(id: 9, date: "Mar 29, 2022", question: "이번년도 가족과 함께 있던 시간 중 가장 좋았던 혹은 인상깊었던 순간은?", isAnswered: true),
        Question(id: 10, date: "Mar 28, 2022", question: "하루 끝에 혼자 힐링하며 즐길 수 있는 최고의 취미와 이와 함께하는 음식은?", isAnswered: false),
        Question(id: 11, date: "Mar 27, 2022", question: "우리 가족이 가장 자랑스러운 순간은?", isAnswered: true),
        Question(id: 12, date: "Mar 26, 2022", question: "초등학생 때 잊혀지지 않는 재미있거나 창피했던 기억은?", isAnswered: false),
        Question(id: 13, date: "Mar 25, 2022", question: "할아버지, 할머니가 나이드셨구나 생각이 드는 순간은 언제인가요?", isAnswered: true),
        Question(id: 14, date: "Mar 24, 2022", question: "어린 시절 친구들 사이에서 별명이 무엇이었나요?", isAnswered: true)
    ]
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(questionDummy) { d in
                    NavigationLink(destination: QnaFamilyView(date: d.date)) {
                        QnaQuestionRow(question: d)
                    }
                }
            }
        }
        // styling
        .padding(EdgeInsets(top: 22.0, leading: 20.0, bottom: 22.0, trailing: 20.0))
        // navigation bar
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle(Text("지난 질문 보기"))
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: { presentationMode.wrappedValue.dismiss() }) {
                    Qna.navigationBackButton
                }
            }
        }
    }
}

struct QnaListView_Previews: PreviewProvider {
    static var previews: some View {
        QnaListView()
    }
}
