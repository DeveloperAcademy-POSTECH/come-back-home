//
//  ShowAlarm.swift
//  ComeBackHome
//
//  Created by Jun.Mac on 2022/04/12.
//

import SwiftUI

struct ShowAlarm: View {
   
    @State private var showText = false
    
    var body: some View {
        
        VStack {
            if showText {
                Image("Pang0")
            }
            Button(action: {
                self.showText.toggle()
            }) {
                Image(systemName: "envelope.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 18)
            }
        }
    }
}

struct ShowAlarm_Previews: PreviewProvider {
    static var previews: some View {
        ShowAlarm()
    }
}

