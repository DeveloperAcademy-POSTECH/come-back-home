//
//  EmotionView.swift
//  ComeBackHome
//
//  Created by Jun.Mac on 2022/04/11.
//

import SwiftUI

struct EmotionView : View {
      
           
           var body: some View {
               
               ZStack{
                   
                   BackgroundOpacity()
                   
                   VStack(spacing: 10){
                       Spacer()
                       Text("오늘 Lawn님의 감정을 확인하세요 !")
                           .font(.system(size: 22))
                           .fontWeight(.medium)
                           .foregroundColor(Color.white)
                           .multilineTextAlignment(.leading)
                           .padding(.trailing, 60)
                     
                       EmotionBox()
                       
                       HStack{
                           
                           Spacer()
                           Button(action: {}) {
                           ZStack{
                               RoundedRectangle(cornerRadius: 10)
                                   .foregroundColor(.AccentColor)
                                   
                                   .frame(width: 70, height: 50)
                    
                                Text("확인")
                                   .font(.system(size: 20))
                                   .fontWeight(.bold)
                                   .foregroundColor(Color.white)
                                       
                           
                           }.padding(.top, 0)
                            .padding(.trailing, 10)
                               
                           }
                           
                       }
                       Spacer()
                       Spacer()
                   }
               }

           }
}

struct EmotionView_Previews: PreviewProvider {
    static var previews: some View {
       
        EmotionView()
        
    }
}
