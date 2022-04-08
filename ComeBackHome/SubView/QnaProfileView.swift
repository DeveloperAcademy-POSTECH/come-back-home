//
//  QnaProfileView.swift
//  ComeBackHome
//
//  Created by ICHAN NAM on 2022/04/08.
//

import SwiftUI

struct QnaProfileView: View {
    private let imageSet: String
    private let size: CGFloat
    private let name: String
    private let font: Font
    
    init(_ imageSetName: String, _ imageSize: CGFloat, _ userName: String, _ nameFont: Font) {
        imageSet = imageSetName
        size = imageSize
        name = userName
        font = nameFont
    }
    
    var body: some View {
        HStack {
            ProfileImage(imageSet, size)
            
            Text(name)
                .font(font)
                .fontWeight(.semibold)
                .foregroundColor(Color("Black1"))
        }
    }
}

struct QnaProfileView_Previews: PreviewProvider {
    static var previews: some View {
        QnaProfileView("Pang2", 35.0, "Dana", .callout)
    }
}
