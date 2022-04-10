//
//  AddFamilyView.swift
//  ComeBackHome
//
//  Created by 김남건 on 2022/04/07.
//

import SwiftUI

struct AppSettingsView: View {
    let version = UserDefaults.standard.string(forKey: "version")
    @State private var pushIsOn = UserDefaults.standard.bool(forKey: "pushIsOn")
    @State private var vibrationIsOn = UserDefaults.standard.bool(forKey: "vibrationIsOn")
    
    var body: some View {
        VStack {
            InfoRow(left: "버전", right: version!)
            Toggle("푸시 알림", isOn: $pushIsOn)
                .onChange(of: pushIsOn) { value in
                    UserDefaults.standard.set(value, forKey: "pushIsOn")
                }
                .frame(height: 46)
            Toggle("진동", isOn: $vibrationIsOn)
                .onChange(of: vibrationIsOn) { value in
                    UserDefaults.standard.set(value, forKey: "vibrationIsOn")
                }
                .frame(height: 46)
            Spacer()
        }
        .padding(.horizontal, 20)
        .navigationTitle("앱 설정")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct AppSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AppSettingsView()
        }
    }
}
