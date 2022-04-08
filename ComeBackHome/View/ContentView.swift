//
//  ContentView.swift
//  ComeBackHome
//
//  Created by Jiyoung Park on 2022/04/06.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor(Color.white)
    }
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                }
            Text("Drawer")
                .tabItem {
                    Image(systemName: "book.closed.fill")
                }
            TodaysMenuView()
                .tabItem {
                    Image(systemName: "fork.knife")
                }
            MyRoomView(image: "Pang0", name: "Gun")
                .tabItem {
                    Image(systemName: "person.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

