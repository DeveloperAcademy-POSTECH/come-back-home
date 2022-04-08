//
//  DetailView.swift
//  ComeBackHome
//
//  Created by Jiyoung Park on 2022/04/06.
//

import SwiftUI

struct DetailView: View {
    @State private var isShowingSheet = false
    @Environment(\.presentationMode) var presentationMode
    
    var post: Post?
    
    var body: some View {
        VStack {
            HStack {
                ProfileView(name: post!.author?.name ?? "", fontSize: .title3, width: 47, height: 47, color: Color("Black1"), img: Image("Pang0"))
                    .padding(.horizontal, 20)
//                    .onTapGesture {
//                        presentationMode.wrappedValue.dismiss()
//                    }
                Spacer()
            }
            ScrollView {
                ForEach(0..<post!.menuArr.count) {
                    DetailMenuView(menu: post!.menuArr[$0], title: post!.menuArr[$0].title, detail: post!.menuArr[$0].text, heart: post!.menuArr[$0].heart, comment: post!.menuArr[$0].commentArr, author: post!.author!)
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct DetailMenuView: View {
    
    @State private var isHidden = true
    
    var menu = Menu()
    var title = "아침"
    var time = "오전 10:02"
    var detail = "친구가 사 온 케이크 먹었다~"
    var heart: [User] = []
    var comment: [Comment] = []
    var author = User()
    
    var body: some View {
        let width: CGFloat = 392
        let height: CGFloat = 392
        VStack {
            Image(uiImage: menu.imgArr)
                .resizable()
                .frame(width: width, height: height, alignment: .center)
            VStack (alignment: .leading) {
                
                HStack {
                    Text("\(title)")
                        .font(.callout)
                    Text("\(time)")
                        .font(.callout)
                    Spacer()
                }
                .frame(height: 26)
                .foregroundColor(Color("Black1"))
                .padding(.top, 16)
                
                Text("\(detail)")
                    .font(.body)
                    .frame(height: 20)
                    .padding(.top, 7)
                
            }
            .padding(.horizontal, 20)
            
            HStack {
                CommentReactionView(heart: heart.count, comment: comment.count)
                .padding(.horizontal, 20)
                .onTapGesture {
                    isHidden.toggle()
                }
                Spacer()
            }
            .padding(.top, 10)
            .padding(.bottom, 20)
            
            if !isHidden {
                VStack (alignment: .leading) {
                    CommentModalView(menu: menu, author: author)
                        .background(Color("Black5"))
                }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}

