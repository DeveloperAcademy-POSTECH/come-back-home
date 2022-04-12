//
//  FamilySelectionButton.swift
//  ComeBackHome
//
//  Created by 김남건 on 2022/04/12.
//

import SwiftUI

struct FamilySelectionButtonContent: View {
    let icon: String
    let message: String
    let title: String
    
    var body: some View {
        HStack(alignment: .center, spacing: 14) {
            Image(systemName: icon)
                .resizable()
                .scaledToFit()
                .frame(width: 28, height: 22)
                .foregroundColor(Color("MainColor"))
            
            VStack(alignment: .leading, spacing: 3) {
                Text(message)
                    .font(.footnote)
                    .foregroundColor(Color("Black1"))
                Text(title)
                    .font(.body)
                    .fontWeight(.bold)
                    .foregroundColor(Color("MainColor"))
            }
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .resizable()
                .frame(width: 9.55, height: 16.96)
                .foregroundColor(Color("Black3"))
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal, 20)
        .padding(.vertical, 17)
        .background(Color("Black5"))
        .cornerRadius(10)
    }
}

struct FamilySelectionButton_Previews: PreviewProvider {
    static var previews: some View {
        FamilySelectionButtonContent(icon: "plus", message: "처음 가입하는 가족 구성원이신가요?", title: "새 가족 추가")
    }
}
