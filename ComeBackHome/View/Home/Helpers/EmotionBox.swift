//
//  EmotionBox.swift
//  ComeBackHome
//
//  Created by Jun.Mac on 2022/04/11.
//

import SwiftUI

struct EmotionBox : View {
   
    let imageList = ["Pang0", "Pang1", "Pang2", "Pang3", "Pang4", "Pang5"]
    
    
    var body: some View {
        
        VStack{
            
            HStack(){
               
                ForEach(0 ..< 3){ index in
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.white)
                        .frame(width: 110, height: 110)
                    Image(imageList[index])
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(10.0)
                                              
                        }
                  
                }
            }
            HStack(){
                
                ForEach(3 ..< 6){ index in
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.white)
                        .frame(width: 110, height: 110)
                    Image(imageList[index])
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(10.0)
                                              
                        }
                   
                }
            }
           
        }
       
    }
}

                               
  
                        
  
           
           
       
                  
    
      

        struct EmotionBox_Previews: PreviewProvider {
            static var previews: some View {
               
                EmotionBox()
                
        }
}
