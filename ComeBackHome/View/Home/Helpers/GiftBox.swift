//
//  GiftBox.swift
//  ComeBackHome
//
//  Created by Jun.Mac on 2022/04/11.
//

import SwiftUI

struct GiftBox : View {
   
    var body: some View {


ZStack(){
    
    Button(action: {}) {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
                .frame(width: 110, height: 110)
           
            HStack{
                
                Image("Bigfish1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20, height: 15)
                
                Text("X10")
                    .font(.system(size: 10))
                    
           
            }.padding(.leading, 40)
            .padding(.top, 75)
       
        
        VStack{
            
            Image(systemName: "gift.fill")
                .padding(15.0)
                .font(.system(size: 40))
                .foregroundColor(Color.blue)
                .opacity(0.5)
           
           
                    }
           
                }
            
            }
            
        }
    }
}
      

        struct GiftBox_Previews: PreviewProvider {
            static var previews: some View {
               
                GiftBox()
                
        }
}


