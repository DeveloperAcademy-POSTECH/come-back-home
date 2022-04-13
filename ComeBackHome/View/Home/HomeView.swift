//
//  HomeView.swift
//  ComeBackHome
//
//  Created by Jun.Mac on 2022/04/11.
//

import SwiftUI

struct HomeView : View {
      
           
           var body: some View {
               
               
                  NavigationView {
                      ZStack{
                      Background()
                          
                         .toolbar {
                             
                             ToolbarItem(placement: .navigationBarLeading) {
                                 Button {
                                 } label: {
                                     NavigationLink(destination: MyPangView()) {
                                        Image("Pangicon")
                                             .resizable()
                                             .aspectRatio(contentMode: .fit)
                                             .frame(width: 20)
                                             
                                             
                                     }
                                 }
                             }
                             
                             ToolbarItem(placement: .navigationBarTrailing) {
                                 Button {
                                 } label: {
                                     NavigationLink(destination: AlarmView()) {
                                         Label("Alarm", systemImage: "bell.fill")
                                             .foregroundColor(Color.white)
                                            
                                     }
                                 }
                             }
                         }
                          VStack(spacing: 15){
                            
                              ZStack{
                                  RoundedRectangle(cornerRadius: 10)
                                      .fill(Color.GraySky)
                                      .frame(width: 350, height: 80)
                                      .opacity(0.7)
                                  
                                  HStack{
                                      VStack(alignment: .leading, spacing: 5){
                                          
                                         
                                              Text("D - 3")
                                                  .font(.system(size: 24))
                                                  .fontWeight(.bold)
                                                  .foregroundColor(Color.MainColor)
                                    
                                              
                                          Text("막내펭귄의 생일이 3일 남았어요!")
                                              .font(.system(size: 18))
                                              .fontWeight(.medium)
                                              .foregroundColor(Color.black)
                                              
                                      }.padding(.trailing, 60)
                                      
                                      Image(systemName: "xmark.circle.fill")
                                          .font(.system(size: 15))
                                          .foregroundColor(Color.gray)
                                          .padding(.bottom, 40)
                                      
                                  }
                                  
                                  
                                }
                              ZStack{
                                  RoundedRectangle(cornerRadius: 10)
                                      .fill(Color.GraySky)
                                      .frame(width: 350, height: 80)
                                      .opacity(0.7)
                                  VStack(alignment: .leading, spacing: 5){
                                      Text("묻고 답하기")
                                          .font(.system(size: 24))
                                          .fontWeight(.bold)
                                          .foregroundColor(Color.MainColor)
                                          
                                      Text("새로운 답변이 업데이트 되었어요 ~")
                                          .font(.system(size: 18))
                                          .fontWeight(.medium)
                                          .foregroundColor(Color.black)
                                          
                                  }.padding(.trailing, 70)
                                 
                                  
                              }
                              
                          }.offset(y: -250)
                          
                          Button {
                          } label: {
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
           

               


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
       
        HomeView()
        
    }
}

