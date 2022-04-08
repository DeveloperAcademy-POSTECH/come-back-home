//
//  ConfirmButton.swift
//  ComeBackHome
//
//  Created by ICHAN NAM on 2022/04/08.
//

import SwiftUI

struct ConfirmButton: View {
    var body: some View {
        Text("확인")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 84.0, height: 50.0)
            .background(Color("MainColor"))
            .cornerRadius(8.0)
    }
}

struct ConfirmButton_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmButton()
    }
}
