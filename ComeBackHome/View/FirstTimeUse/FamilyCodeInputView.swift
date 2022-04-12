//
//  FamilyCodeInputView.swift
//  ComeBackHome
//
//  Created by 김남건 on 2022/04/12.
//

import SwiftUI

struct FamilyCodeInputView: View {
    @State private var codeInput = ""
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        VStack {
            Spacer()
            Text("가족 코드 입력")
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(Color("MainColor"))
                .padding(.bottom, 25)
            
            ZStack {
                TextField("이곳을 눌러 입력하세요.", text: $codeInput)
                    .font(.subheadline)
                    .padding(.horizontal, 12)
                    .frame(height: 48)
                    .background(Color("Black5"))
                    .cornerRadius(10)
                    
                HStack {
                    Spacer()
                    NavigationLink("확인") {
                        ContentView()
                    }
                    .frame(width: 84, height: 50)
                    .background(Color(red: 10/255, green: 132/255, blue: 1))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
            }
        }
        .padding(.horizontal, 20)
        .padding(.bottom, 397)
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

struct FamilyCodeInputView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FamilyCodeInputView()
        }
    }
}
