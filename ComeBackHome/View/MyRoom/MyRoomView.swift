//
//  MyRoomView.swift
//  ComeBackHome
//
//  Created by 김남건 on 2022/04/07.
//

import SwiftUI

struct MyRoomView: View {
    let image: String
    let name: String
    
    var body: some View {
        NavigationView {
            VStack {
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 126, height: 113, alignment: .center)
                    .padding(.top, 42)
                
                Text(name)
                    .fontWeight(.semibold)
                    .font(.title2)
                    .padding(.top, 13.0)
                
                HStack(spacing: 10) {
                    MyRoomButton(image: "person", title: "계정/가족 관리")
                    MyRoomButton(image: "megaphone", title: "공지사항").disabled(true)
                    MyRoomButton(image: "person.crop.circle.badge.questionmark", title: "문의하기").disabled(true)
                }.padding(.top, 23)
                
                Spacer()
            }
            .navigationTitle("마이룸")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: AppSettingsView()) {
                        Image(systemName: "gearshape.fill")
                            .foregroundColor(Color("Black2"))
                    }
                }
            }
        }
    }
}

struct MyRoomView_Previews: PreviewProvider {
    static var previews: some View {
        MyRoomView(image: "Pang0", name: "Gun")
    }
}
