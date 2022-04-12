//
//  FamilySelectionView.swift
//  ComeBackHome
//
//  Created by 김남건 on 2022/04/12.
//

import SwiftUI

struct FamilySelectionView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 12) {
            NavigationLink(destination: FamilyCodeGenerationView(code: "FC08T72")) {
                FamilySelectionButtonContent(icon: "plus", message: "처음 가입하는 가족 구성원이신가요?", title: "새 가족 추가")
            }
            
            NavigationLink(destination: FamilyCodeInputView()) {
                FamilySelectionButtonContent(icon: "personalhotspot", message: "이미 가입한 가족 구성원이 있나요?", title: "기존 가족과 연결하기")
            }
        }
        .padding(.horizontal, 20)
        .navigationBarHidden(true)
    }
}

struct FamilySelectionView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FamilySelectionView()
        }
    }
}
