//
//  GitView.swift
//  ComeBackHome
//
//  Created by Jun.Mac on 2022/04/11.
//

import SwiftUI

struct GiftView : View {
      
           
           var body: some View {
               ZStack{
                  
                   BackgroundOpacity()
                    
                       VStack(spacing: 10){
                           HStack(spacing: 50){
                               Text("물고기를 모아 선물을 뽑아보세요 !")
                                   .font(.system(size: 22))
                                   .fontWeight(.medium)
                                   .foregroundColor(Color.white)
                               
                               Image(systemName: "bag.fill")
                                   .resizable()
                                   .aspectRatio(contentMode: .fit)
                                   .foregroundColor(Color.white)
                                   .frame(width: 20, height: 20)
                           }
                           VStack(spacing: 10){
                               ForEach(0 ..< 4){ index in
                                   
                           HStack(spacing: 10){
                                       ForEach(0 ..< 3){ index in
                                           GiftBox()
                                      
                                        }
                      
                                }
                    
                            }
               
                           }
          
                       }
       
               }
              
           }

}
        




struct GiftView_Previews: PreviewProvider {
    static var previews: some View {
       
        GiftView()
        
    }
}


             
