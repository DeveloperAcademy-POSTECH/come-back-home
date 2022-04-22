//
//  ButtonContent.swift
//  ComeBackHome
//
//  Created by 김남건 on 2022/04/12.
//

import SwiftUI

struct ButtonContent: View {
    let text: String
    let textColor: Color
    let backgroundColor: Color
    
    var body: some View {
        Text(text)
            .foregroundColor(textColor)
            .font(.headline)
            .fontWeight(.bold)
            .padding(.vertical)
            .frame(maxWidth: .infinity)
            .background(backgroundColor)
            .cornerRadius(8)
    }
}

struct ButtonContent_Previews: PreviewProvider {
    static var previews: some View {
        ButtonContent(text: "로그인", textColor: Color("MainColor"), backgroundColor: Color("Black5"))
    }
}
