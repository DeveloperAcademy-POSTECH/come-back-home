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
                                             .foregroundColor(.MainColor)
                                             .opacity(0.7)
                                     }
                                 }
                             }
                             
                             ToolbarItem(placement: .navigationBarTrailing) {
                                 Button {
                                 } label: {
                                     NavigationLink(destination: AlarmView()) {
                                         Label("Alarm", systemImage: "bell.fill")
                                             .foregroundColor(.MainColor)
                                             .opacity(0.7)
                                     }
                                 }
                             }
                         }
                          Button {
                          } label: {
                              NavigationLink(destination: EmotionView()) {
                                  Image("Pang2")
                                      .resizable()
                                      .aspectRatio(contentMode: .fit)
                                      .frame(width: 60, height: 60)
                                      .padding(.leading, 280)
                                      .padding(.top, 400)
                                  
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

