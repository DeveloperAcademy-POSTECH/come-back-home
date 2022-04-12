//
//  QnaAnswerView.swift
//  ComeBackHome
//
//  Created by ICHAN NAM on 2022/04/07.
//

import SwiftUI

struct QnaAnswerView: View {
    // dummy data will be removed to enhance the app
    let dateToQuestionDummy = [
        "Apr 7. 2022": "오늘은 내가 요리사! 다가오는 일요일, 우리 가족을 살찌울 필살기 요리가 있다면?",
        "Apr 6. 2022": "이번년도 가족과 함께 있던 시간 중 가장 좋았던 혹은 인상깊었던 순간은?",
        "Apr 5. 2022": "하루 끝에 혼자 힐링하며 즐길 수 있는 최고의 취미와 이와 함께하는 음식은?",
        "Apr 4. 2022": "우리 가족이 가장 자랑스러운 순간은?",
        "Apr 3. 2022": "초등학생 때 잊혀지지 않는 재미있거나 창피했던 기억은?",
        "Apr 2. 2022": "할아버지, 할머니가 나이드셨구나 생각이 드는 순간은 언제인가요?"]
    
    var date: String = "Apr 6. 2022"
    
    var body: some View {
        NavigationView {
            VStack(spacing: 18.0) {
                QnaTodaysQuestionView(date, todaysQuestionColor: Color("Black1"))
                
                // hard-coded data must be replaced with dynamic data
                QnaTextEditorBox("Q. " + (dateToQuestionDummy[date] ?? "이번년도 가족과 함께 있던 시간 중 가장 좋았던 혹은 인상깊었던 순간은?"))
                .padding(.bottom, 2.0)
                
                Spacer()
            }
            .padding(EdgeInsets(top: 22.0, leading: 20.0, bottom: 22.0, trailing: 20.0))
            // navigation bar
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle(Qna.navigationTitle)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    NavigationLink(destination: QnaListView()) {
                        Qna.navigationListButton
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: QnaFamilyView(date: date)) {
                        Qna.navigationCheckButton
                    }
                }
            }
        }
        .navigationViewStyle(.stack)
        .navigationBarHidden(true)
    }
}

struct QnaAnswerView_Previews: PreviewProvider {
    static var previews: some View {
        QnaAnswerView(date: "April 7. 2022")
    }
}
