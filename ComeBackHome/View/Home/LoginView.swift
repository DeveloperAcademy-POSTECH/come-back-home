//
//  LoginView.swift
//  ComeBackHome
//
//  Created by Jun.Mac on 2022/04/11.
//

import SwiftUI

struct LoginView : View {
    
    @State var index = 0
    
    var body: some View{
        
        Login(index: self.$index)
                                       
    }
}

struct Login : View {
    
    @State var email = ""
    @State var pass = ""
    @Binding var index : Int
    
    var body: some View{
        VStack(){
            
            VStack(alignment: .leading, spacing: 10){
                
                Text("환영합니다!\n컴백홈에 로그인 해주세요")
                    .font(.system(size: 22))
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: -0.291, green: 0.623, blue: 0.765))
                   
                   
                Text("회원가입으로 가족과함께 \n사랑스러운 펭귄마을에 입주하세요")
                    .font(.system(size: 16))
                    .fontWeight(.regular)
                    .foregroundColor(Color.gray)
                   
            }
                .padding(.trailing, 120.0)
                .padding(.bottom, 10.0)
            
            VStack(){
                    ZStack(){
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color(red: 0.973, green: 0.973, blue: 0.973))
                            .frame(width: 350, height: 50)
                        
                        TextField("아이디를 입력하세요", text: self.$email)
                            .padding(.leading, 30.0)
                            .font(.system(size: 16))
                            .foregroundColor(Color.gray)
                            
                    }
                    ZStack(){
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color(red: 0.973, green: 0.973, blue: 0.973))
                            .frame(width: 350, height: 50)
                       
                        SecureField("비밀번호를 입력하세요", text: self.$pass)
                            .padding(.leading, 30.0)
                            .font(.system(size: 16))
                            .foregroundColor(Color.gray)
                }
            }.padding(.bottom, 10)
          
            HStack(){
                
                    Text("자동 로그인")
                        .font(.system(size: 16))
                        .fontWeight(.regular)
                        .foregroundColor(Color.gray)
            
                    Text("아이디 저장")
                        .font(.system(size: 16))
                        .fontWeight(.regular)
                        .foregroundColor(Color.gray)
                    }.padding(.bottom, 30)
           
            VStack(){
               
                    Button(action: {}) {
                        
                        Text("로그인")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .padding(.vertical)
                            .padding(.horizontal, 145)
                            .background(Color(red: -0.291, green: 0.623, blue: 0.765))
                            .cornerRadius(8)
                        }

                    Button(action: {}) {
                            
                        Text("카카오로 3초안에 로그인하기")
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                            .padding(.vertical)
                            .padding(.horizontal, 70)
                            .background(Color(red: 1.013, green: 0.914, blue: -0.32))
                            .cornerRadius(8)
                              
                        }
                
            }.padding(.bottom, 10)
            
            HStack(){
                
                    Text("계정을 잊으셨나요?")
                        .font(.system(size: 14))
               
                Button(action: {}) {
                        
                    Text("아이디 찾기")
                        .font(.system(size: 14))
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: -0.011, green: 0.625, blue: 0.764))
                       
                          
                    }
               
                Text("또는")
                    .font(.system(size: 14))
                    
                Button(action: {}) {
                        
                    Text("비밀번호 찾기")
                        .font(.system(size: 14))
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: -0.011, green: 0.625, blue: 0.764))
                      
                    }
                }.padding(.bottom, 60)
            
            HStack(){
                
                Text("아직 회원이 아닌가요?")
                    .font(.system(size: 14))
                
                Button(action: {}) {
                        
                    Text("회원가입 ")
                        .font(.system(size: 14))
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: -0.011, green: 0.625, blue: 0.764))
                      
                    }
                }
            }
        }
    }

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
       
        LoginView()
    }
}
