//
//  QnaPersonalTodaysQuestionView.swift
//  ComeBackHome
//
//  Created by ICHAN NAM on 2022/04/06.
//

import SwiftUI

struct QnaPersonalTodaysQuestionView: View {
    var date: String
    
    var body: some View {
        NavigationView {
            VStack(spacing: 18.0) {
                QnaTodaysQuestionView(date)
                
                NavigationLink {
                    QnaAnswerView(date: date)
                } label: {
                    QnaTextBox(
                        Color("GraySky"),
                        
                        // hard-coded data must be replaced with dynamic data
                        Text("Q. " + "오늘은 내가 요리사! 다가오는 일요일,\n우리 가족을 살찌울 필살기 요리가 있다면 ?")
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(Color("MainColor")),
                        bottomText: Text("이곳을 눌러 답변을 입력해주세요.")
                            .font(.headline)
                            .foregroundColor(Color("Black2")))
                }
                
                Spacer()
            }
            // styling
            .padding(EdgeInsets(top: 22.0, leading: 20.0, bottom: 22.0, trailing: 20.0))
            // navigation bar
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Qna.navigationTitle
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                    } label: {
                        Label("List", systemImage: "list.dash")
                            .foregroundColor(Color("Black1"))
                    }
                }
            }
        }
    }
}

struct QnaEntryView_Previews: PreviewProvider {
    static var previews: some View {
        QnaPersonalTodaysQuestionView(date: "April 7. 2022")
    }
}
