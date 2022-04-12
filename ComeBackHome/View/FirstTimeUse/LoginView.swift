//
//  LoginView.swift
//  ComeBackHome
//
//  Created by Jun.Mac on 2022/04/08.
//

import SwiftUI

struct LoginView : View {
    @State var email = ""
    @State var pass = ""
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        VStack() {
            Spacer()
            HStack {
                Text("환영합니다!\n컴백홈에 로그인 해주세요")
                    .font(.system(size: 22))
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: -0.291, green: 0.623, blue: 0.765))
                Spacer()
            }
            .padding(.bottom, 22)
            
            VStack(){
                LoginTextField(placeholder: "아이디를 입력하세요", isPassword: false, input: self.$email)
                
                LoginTextField(placeholder: "비밀번호를 입력하세요", isPassword: true, input: self.$pass)
            }
            .padding(.bottom, 20)
          
            HStack(){
                Text("자동 로그인")
                    .font(.system(size: 16))
                    .fontWeight(.regular)
                    .foregroundColor(Color.gray)
            
                Text("아이디 저장")
                    .font(.system(size: 16))
                    .fontWeight(.regular)
                    .foregroundColor(Color.gray)
            }.padding(.bottom, 95)
           
            VStack(){
                Button(action: {}) {
                    ButtonContent(text: "로그인", textColor: .white, backgroundColor: Color("MainColor"))
                }

                Button(action: {}) {
                    ButtonContent(text: "카카오로 3초안에 로그인하기", textColor: .black, backgroundColor: Color(red: 1.013, green: 0.914, blue: -0.32))
                }
            }.padding(.bottom, 15)
            
            HStack(){
                Text("계정을 잊으셨나요?")
                    .font(.system(size: 14))
               
                Button(action: {}) {
                    LinkText("아이디 찾기")
                }
                
                Text("또는")
                    .font(.system(size: 14))
                    
                Button(action: {}) {
                    LinkText("비밀번호 찾기")
                }
            }
            .padding(.bottom, 140)
        }
        .padding(.horizontal, 20)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: { presentationMode.wrappedValue.dismiss() }) {
                    Image(systemName: "arrow.backward")
                        .foregroundColor(Color("Black1"))
                }.buttonStyle(.plain)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LoginView()
        }
    }
}
