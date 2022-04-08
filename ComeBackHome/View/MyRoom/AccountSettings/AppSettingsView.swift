//
//  AddFamilyView.swift
//  ComeBackHome
//
//  Created by 김남건 on 2022/04/07.
//

import SwiftUI

struct AppSettingsView: View {
    let version = "v 1.0.0"
    @State private var pushAlarmIsOn = true
    @State private var vibrationIsOn = true
    
    var body: some View {
        VStack {
            InfoRow(left: "버전", right: version)
            Toggle("푸시 알림", isOn: $pushAlarmIsOn)
                .frame(height: 46)
            Toggle("진동", isOn: $vibrationIsOn)
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
