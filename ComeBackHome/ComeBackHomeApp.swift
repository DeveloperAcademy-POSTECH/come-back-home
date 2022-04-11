//
//  ComeBackHomeApp.swift
//  ComeBackHome
//
//  Created by Jiyoung Park on 2022/04/06.
//

import SwiftUI

@main
struct ComeBackHomeApp: App {
    
    var body: some Scene {
        
        WindowGroup {
            SplashScreenView()
        }
        
        WindowGroup {
            ContentView()
        }
    }
}
