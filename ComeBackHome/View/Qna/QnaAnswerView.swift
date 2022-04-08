//
//  QnaAnswerView.swift
//  ComeBackHome
//
//  Created by ICHAN NAM on 2022/04/07.
//

import SwiftUI

struct QnaAnswerView: View {
    var date: String
    
    var body: some View {
        NavigationView {
            VStack(spacing: 18.0) {
                QnaTodaysQuestionView(date, todaysQuestionColor: Color("Black1"))
                
                // hard-coded data must be replaced with dynamic data
                QnaTextEditorBox(
                    "Q. " + "오늘은 내가 요리사! 다가오는 일요일,\n우리 가족을 살찌울 필살기 요리가 있다면 ?",
                    "나는 짜파게티 요리사 ~!\n불닭이랑 섞어서 만들까말까")
                .padding(.bottom, 2.0)
                
                HStack {
                    Spacer()
                    NavigationLink {
                        QnaFamilyView(date: date)
                    } label: {
                        ConfirmButton()
                    }
                }
                
                Spacer()
            }
            // styling
            .padding(EdgeInsets(top: 22.0, leading: 20.0, bottom: 22.0, trailing: 20.0))
            // navigation bar
            .navigationBarHidden(true)
        }
        .navigationTitle(Qna.navigationTitle)
    }
}

struct QnaAnswerView_Previews: PreviewProvider {
    static var previews: some View {
        QnaAnswerView(date: "April 7. 2022")
    }
}
