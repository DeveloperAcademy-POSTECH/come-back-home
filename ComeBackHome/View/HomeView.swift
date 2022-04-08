//
//  HomeView.swift
//  ComeBackHome
//
//  Created by Jun.Mac on 2022/04/08.
//

import SwiftUI

struct HomeView : View {

    var body: some View {
       
        ZStack(){
            
            
            
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            VStack(){
                
                Image("Igloo")
                
            }
            
        }
        
        
    }

}



struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
       
        HomeView()
        
    }
}
