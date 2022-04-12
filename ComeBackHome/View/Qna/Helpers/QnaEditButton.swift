//
//  QnaEditButton.swift
//  ComeBackHome
//
//  Created by ICHAN NAM on 2022/04/12.
//

import SwiftUI

struct QnaEditButton: View {
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            Image(systemName: "square.and.pencil")
            Spacer()
        }
        .foregroundColor(Color("Black1"))
        .frame(width: 45.0, height: 45.0)
    }
}

struct QnaSubmitButton_Previews: PreviewProvider {
    static var previews: some View {
        QnaEditButton()
    }
}
