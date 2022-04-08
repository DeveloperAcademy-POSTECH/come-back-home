//
//  InfoRow.swift
//  ComeBackHome
//
//  Created by 김남건 on 2022/04/07.
//

import SwiftUI

struct InfoRow: View {
    let left: String
    let right: String
    
    var body: some View {
        HStack {
            Text(left)
            Spacer()
            Text(right)
        }
        .padding(.vertical, 15.0)
        .font(.callout)
    }
}

struct InfoRow_Previews: PreviewProvider {
    static var previews: some View {
        InfoRow(left: "닉네임", right: "XXX >")
    }
}
