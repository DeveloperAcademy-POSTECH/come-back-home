//
//  QnaDateText.swift
//  ComeBackHome
//
//  Created by ICHAN NAM on 2022/04/07.
//

import SwiftUI

struct QnaDateText: View {
    private let date: String
    
    init(_ date: String) {
        self.date = date
    }
    
    var body: some View {
        Text(date)
            .font(.footnote)
            .fontWeight(.light)
            .foregroundColor(Color("Black1"))
    }
}

struct QnaDateText_Previews: PreviewProvider {
    static var previews: some View {
        QnaDateText("April 7. 2022")
    }
}
