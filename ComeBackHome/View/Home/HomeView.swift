//
//  HomeView.swift
//  ComeBackHome
//
//  Created by Jun.Mac on 2022/04/11.
//

import SwiftUI

struct HomeView : View {
      
//       @State var isNavigationBarHidden : Bool = false
           
           var body: some View {
               
               
                  NavigationView {
                      ZStack{
                      Background()
                    
                        
                         .navigationBarTitle("Home")
                         .navigationBarTitleDisplayMode(.inline)
                         .toolbar {
                             
                             ToolbarItem(placement: .navigationBarLeading) {
                                 Button {
                                 } label: {
                                     NavigationLink(destination: GiftView()) {
                                         Label("Gift", systemImage: "gift.fill")
                                             .foregroundColor(.Black1)
                                     }
                                 }
                             }
                             
                             ToolbarItem(placement: .navigationBarTrailing) {
                                 Button {
                                 } label: {
                                     NavigationLink(destination: AlarmView()) {
                                         Label("Alarm", systemImage: "bell.fill")
                                             .foregroundColor(.Black1)
                                     }
                                 }
                             }
                         }
                     
                    }
                }
           }
}
               


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
       
        HomeView()
        
    }
}

