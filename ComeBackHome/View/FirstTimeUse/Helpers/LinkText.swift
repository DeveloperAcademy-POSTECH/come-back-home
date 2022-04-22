//
//  LinkText.swift
//  ComeBackHome
//
//  Created by 김남건 on 2022/04/12.
//

import SwiftUI

struct LinkText: View {
    let text: String
    
    init(_ text: String) {
        self.text = text
    }
    
    var body: some View {
        Text(text)
            .font(.system(size: 14))
            .fontWeight(.bold)
            .foregroundColor(Color(red: -0.011, green: 0.625, blue: 0.764))
        
    }
}

struct LinkText_Previews: PreviewProvider {
    static var previews: some View {
        LinkText("아이디 찾기")
    }
}
