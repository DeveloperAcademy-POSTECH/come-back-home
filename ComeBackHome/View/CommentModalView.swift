//
//  CommentModalView.swift
//  ComeBackHome
//
//  Created by Jiyoung Park on 2022/04/06.
//

import SwiftUI

struct CommentModalView: View {
    @State var newText = ""
    @State var isCommented = false
    
    var menu = Menu()
    var author = User()
    
    var body: some View {
        
        let heart = menu.heart.count
        let comment = menu.commentArr.count
        
        VStack (alignment: .leading) {
            VStack (alignment: .leading) {
                HStack {
                    Text("좋아요")
                        .font(.system(size: 14))
                        .fontWeight(.bold)
                        .frame(width: 350)
                    Spacer()
                }
                .padding(.horizontal, 20)
                HStack {
                    Image("Pang0")
                        .resizable()
                        .frame(width: 35, height: 35, alignment: .center)
                    Image("Pang0")
                        .resizable()
                        .frame(width: 35, height: 35, alignment: .center)
                    Spacer()
                }
                .padding(.horizontal, 20)
            }
            Divider()
                .frame(width: 350)
                .padding(.horizontal, 20)
            HStack {
                Text("댓글")
                    .font(.system(size: 14))
                    .fontWeight(.bold)
                    .frame(width: 350)
                Spacer()
            }
            .padding(.horizontal, 20)
                VStack(alignment: .leading) {
                    ForEach(0..<comment) {
                        SheetCommentView(comment: menu.commentArr[$0].text ?? "", name: menu.commentArr[$0].replier?.name ?? "", img: Image("Pang0"))
                    }
                    .padding(.horizontal, 20)
                    if newText != "" {
                        SheetCommentView(comment: newText, time: "방금", name: author.name!, img: Image("Pang0"))
                            .padding(.horizontal, 20)
                    }
                    CommentWritingView(newText: $newText, isCommented: $isCommented)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 18)
            }
        }
        .padding(.top)
    }
    
    mutating func saveComment() {
        menu.commentArr.append(Comment(text: newText, replier: author))
    }
}

struct SheetCommentView: View {
    var comment = "너 진짜 ... 좋은 친구를 두었구나 ... 맛있겠다 ㅜㅜ"
    var time = "19분"
    var name = ""
    var img = Image("")
    
    var body: some View {
        VStack (alignment: .leading) {
            HStack {
                ProfileView(name: name, color: Color("Black1"), img: img)
                Text("\(comment)")
                    .font(.system(size: 14))
                    .padding(.vertical, 2)
            }
            Text("\(time) 전")
                .font(.footnote)
                .fontWeight(.light)
                .foregroundColor(Color("Black2"))
        }
        .padding(.vertical, 10)
    }
}

struct CommentWritingView: View {
    @Binding var newText: String
    @Binding var isCommented: Bool
    @State var content: String = ""
    var body: some View {
        HStack(spacing: 10) {
            TextField("눌러서 댓글을 남기세요.", text: $content)
                .background(RoundedRectangle(cornerRadius: 6).fill(Color("Black4")).frame(width: 275, height: 40))
                .frame(width: 275, height: 40)
            Button {
                //Add my heart
            } label: {
                Image(systemName: "heart")
            }
            .padding(.horizontal, 5)
            Button {
                //Save my comment
                newText = content
                content = ""
            } label: {
                Image(systemName: "paperplane.fill")
            }
        }
    }
}
