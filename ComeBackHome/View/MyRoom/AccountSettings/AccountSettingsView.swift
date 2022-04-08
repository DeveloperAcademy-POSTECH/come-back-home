//
//  AccountSettingsView.swift
//  ComeBackHome
//
//  Created by 김남건 on 2022/04/07.
//

import SwiftUI

struct AccountSettingsView: View {
    let family = [
        FamilyMember(id: 1, name: "XXX", role: "아빠"),
        FamilyMember(id: 2, name: "XXX", role: "엄마"),
        FamilyMember(id: 3, name: "XXX", role: "첫째"),
        FamilyMember(id: 4, name: "XXX", role: "둘째(나)")
    ]
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Text("계정")
                        .fontWeight(.bold)
                        .font(.title3)
                    Spacer()
                }
                .padding(.bottom, 23)
                
                VStack {
                    Button(action: {}) {
                        InfoRow(left: "닉네임", right: "XXX   >")
                    }.buttonStyle(.plain)
                    
                    InfoRow(left: "이메일", right: "namkim22@pos.idserve.net")
                    InfoRow(left: "코드", right: "qx53asad")
                    
                    Button(action: {}) {
                        InfoRow(left: "회원탈퇴", right: ">")
                    }.buttonStyle(.plain)
                }.padding(.bottom, 17.5)
                    
                Divider()
                
                HStack {
                    Text("가족")
                        .fontWeight(.bold)
                        .font(.title3)
                    Spacer()
                }
                .padding(.bottom, 23)
                .padding(.top, 30.5)
                
                VStack {
                    ForEach(family) { member in
                        InfoRow(left: member.role, right: member.name)
                    }
                    
                    NavigationLink(destination: AddFamilyView()) {
                        HStack(spacing: 16) {
                            Image(systemName: "plus")
                                .foregroundColor(Color("MainColor"))
                            Text("가족 추가")
                            Spacer()
                        }.padding(.horizontal, 5)
                    }
                    .buttonStyle(.plain)
                    .padding(.vertical, 15)
                }
                
                Spacer()
            }
            .navigationTitle("계정/가족 관리")
            .navigationBarTitleDisplayMode(.inline)
            .padding(20)
        }
    }
}

struct AccountSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AccountSettingsView()
        }
    }
}
