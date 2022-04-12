//
//  Background.swift
//  ComeBackHome
//
//  Created by Jun.Mac on 2022/04/11.
//

import SwiftUI

struct Background : View {
   
    var body: some View {
       
        ZStack(){
            
            
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            Image("Igloo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300)
                .offset(x: 100 ,y: 40)
            
            Image("PangFam")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 400)
                .offset(x: 0 ,y: 120)
            
            }
        
        
        }

    }




struct Background_Previews: PreviewProvider {
    static var previews: some View {
       
        Background()
        
    }
}

