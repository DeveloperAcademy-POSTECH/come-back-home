//
//  ComeBackHomeApp.swift
//  ComeBackHome
//
//  Created by Jiyoung Park on 2022/04/06.
//

import SwiftUI

@main
struct ComeBackHomeApp: App {
    init() {
        let listDefaults: [String : Any] = ["version": "v 1.0.0",
                                            "pushIsOn": false,
                                            "vibrationIsOn": false]
        
        UserDefaults.standard.register(defaults: listDefaults)
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
