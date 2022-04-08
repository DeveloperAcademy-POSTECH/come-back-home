//
//  MyRoomButton.swift
//  ComeBackHome
//
//  Created by 김남건 on 2022/04/07.
//

import SwiftUI

struct MyRoomButton: View {
    let image: String
    let title: String

    var body: some View {
        NavigationLink(destination: AccountSettingsView()) {
            VStack {
                Image(systemName: image)
                    .resizable()
                    .frame(width: 35, height: 35)
                    .foregroundColor(.white)
                    .padding(.top, 24)
                Spacer()
                Text(title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("MainColor"))
                    .padding(.bottom, 12)
                    .font(.subheadline)
            }
        }
        .frame(width: 110, height: 110)
        .background(Color("ServeColor"))
        .cornerRadius(10)
    }
}

struct MyRoomButton_Previews: PreviewProvider {
    static var previews: some View {
        MyRoomButton(image: "person", title: "계정/가족 관리")
    }
}
