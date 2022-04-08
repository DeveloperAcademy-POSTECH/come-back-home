//
//  ProfileView.swift
//  ComeBackHome
//
//  Created by Jiyoung Park on 2022/04/06.
//

import SwiftUI

struct ProfileView: View {
    var name = "Name"
    var fontSize: Font = .callout
    var width: CGFloat = 35
    var height: CGFloat = 35
    var color: Color = Color.black
    var img: Image = Image("")
    
    var body: some View {
        HStack {
            img
                .resizable()
                .frame(width: width, height: height, alignment: .center)
            Text("\(name)")
                .font(fontSize)
                //.font(.system(size: fontSize))
                .foregroundColor(color)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
