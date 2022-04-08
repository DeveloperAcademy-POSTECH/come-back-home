//
//  CommentReactionView.swift
//  ComeBackHome
//
//  Created by Jiyoung Park on 2022/04/06.
//

import SwiftUI

struct CommentReactionView: View {
    var heart = 0
    var comment = 0
    var body: some View {
        HStack {
            Image(systemName: "heart")
            Text("\(heart)")
                .font(.callout)
            Image(systemName: "bubble.left")
            Text("\(comment)")
                .font(.callout)
        }
    }
}
struct CommentReactionView_Previews: PreviewProvider {
    static var previews: some View {
        CommentReactionView()
    }
}
