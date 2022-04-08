//
//  ProfileImage.swift
//  ComeBackHome
//
//  Created by ICHAN NAM on 2022/04/07.
//

import SwiftUI

struct ProfileImage: View {
    private let imageSet: String
    private let size: CGFloat
    
    init (_ imageSet: String, _ size: CGFloat) {
        self.imageSet = imageSet
        self.size = size
    }
    
    var body: some View {
        Image(imageSet)
            .resizable()
            .frame(width: size, height: size)
    }
}

struct ProfileImage_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            // hard-coded data must be replaced with dynamic data
            ProfileImage("Pang2", 55.0)
            // hard-coded data must be replaced with dynamic data
            ProfileImage("Pang2", 35.0)
        }
        .previewLayout(.fixed(width: 100.0, height: 100.0))
    }
}
