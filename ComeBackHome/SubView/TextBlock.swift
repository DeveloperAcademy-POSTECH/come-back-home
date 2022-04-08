//
//  TextBlock.swift
//  ComeBackHome
//
//  Created by ICHAN NAM on 2022/04/07.
//

import SwiftUI

struct TextBlock: View {
    var text: Text
    
    init(_ text: Text) {
        self.text = text
    }
    
    var body: some View {
        HStack {
            text
            Spacer()
        }
    }
}

struct TextBlock_Previews: PreviewProvider {
    static var previews: some View {
        TextBlock(
            Text("Q. 오늘은 내가 요리사! 다가오는 일요일,\n우리 가족을 살찌울 필살기 요리가 있다면 ? "))
    }
}
