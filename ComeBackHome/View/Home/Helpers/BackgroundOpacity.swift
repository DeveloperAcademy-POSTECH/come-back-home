//
//  BackgroundOpacity.swift
//  ComeBackHome
//
//  Created by Jun.Mac on 2022/04/11.
//

import SwiftUI

struct BackgroundOpacity : View {
   
    var body: some View {
       
        ZStack{
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            Rectangle()
                .fill(Color.black)
                .ignoresSafeArea()
                .opacity(0.3)
        }
    }
}

struct BackgroundOpacity_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundOpacity()
    }
}

