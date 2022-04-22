//
//  LoginTextField.swift
//  ComeBackHome
//
//  Created by 김남건 on 2022/04/12.
//

import SwiftUI

struct LoginTextField: View {
    let placeholder: String
    let isPassword: Bool
    @Binding var input: String
    
    
    var body: some View {
        Group {
            if isPassword {
                SecureField(placeholder, text: $input, onCommit: {})
            } else {
                TextField(placeholder, text: $input, onCommit: {})
            }
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 14)
        .background(Color("Black5"))
        .cornerRadius(10)
    }
}

struct LoginTextField_Previews: PreviewProvider {
    static var previews: some View {
        LoginTextField(placeholder: "아이디를 입력하세요", isPassword: true, input: .constant(""))
    }
}
