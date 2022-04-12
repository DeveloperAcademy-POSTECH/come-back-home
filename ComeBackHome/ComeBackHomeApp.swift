//
//  ComeBackHomeApp.swift
//  ComeBackHome
//
//  Created by Jiyoung Park on 2022/04/06.
//

import SwiftUI

@main
struct ComeBackHomeApp: App {
    @ObservedObject var appState = AppState()
    
    var body: some Scene {
        
        WindowGroup {
            SplashScreenView()
        }
        
        WindowGroup {
            ContentView()
                .environmentObject(appState)
        }
    }
}
