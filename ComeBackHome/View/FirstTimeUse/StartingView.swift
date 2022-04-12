//
//  StartingView.swift
//  ComeBackHome
//
//  Created by 김남건 on 2022/04/12.
//

import SwiftUI

struct StartingView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("Pang0")
                    .resizable()
                    .frame(width: 89, height: 89)
                    .padding(.top, 189)
                
                Text("ComeBackHome")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color("MainColor"))
                    .padding(.top, 19)
                
                NavigationLink(destination: LoginView()) {
                    ButtonContent(text: "로그인", textColor: Color("MainColor"), backgroundColor: Color("Black5"))
                }
                .padding(.top, 189)
                
                Button (action: {}) {
                    ButtonContent(text: "회원가입", textColor: .white, backgroundColor: Color("MainColor"))
                }.padding(.bottom, 176)
                
                Spacer()
            }
            .padding(.horizontal, 20)
        }
        .navigationBarHidden(true)
        
    }
}

struct StartingView_Previews: PreviewProvider {
    static var previews: some View {
        StartingView()
    }
}
