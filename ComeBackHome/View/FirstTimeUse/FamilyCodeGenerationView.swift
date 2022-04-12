//
//  FamilyCodeGenerationView.swift
//  ComeBackHome
//
//  Created by 김남건 on 2022/04/12.
//

import SwiftUI

struct FamilyCodeGenerationView: View {
    let code: String
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        VStack {
            Spacer()
            Text("새 가족 코드 발급")
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(Color("Black1"))
                .padding(.bottom, 11)
            
            Text(code)
                .font(.title2)
                .fontWeight(.bold)
                .padding(.bottom, 32)
            
            Button(action: {}) {
                ButtonContent(text: "초대코드 복사", textColor: Color("MainColor"), backgroundColor: Color("Black5"))
            }
            
            NavigationLink(destination: HomeView()) {
                ButtonContent(text: "홈화면으로 가기", textColor: .white, backgroundColor: Color("MainColor"))
            }
        }
        .padding(.horizontal, 20)
        .padding(.bottom, 335)
        .navigationBarBackButtonHidden(true)
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: { presentationMode.wrappedValue.dismiss() }) {
                    Image(systemName: "arrow.backward")
                        .foregroundColor(Color("Black1"))
                }.buttonStyle(.plain)
            }
        }
    }
}

struct FamilyCodeGenerationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FamilyCodeGenerationView(code: "FC08T72")
        }
    }
}
