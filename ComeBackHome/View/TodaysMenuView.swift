//
//  TodaysMenuView.swift
//  ComeBackHome
//
//  Created by Jiyoung Park on 2022/04/06.
//

import SwiftUI

//Test Data
var img = [
    UIImage(named: "Food0"),
    UIImage(named: "Food1"),
    UIImage(named: "Food2"),
    UIImage(named: "Food3")
]

var user: [User] = [
    User(name: "Jio", role: 0),
    User(name: "Dana", role: 0),
    User(name: "Timo", role: 0),
    User(name: "Gun", role: 0),
    User(name: "Lawn", role: 0)
]

var menu: [Menu] = [
    Menu(title: "아침", text: "친구가 사 온 케이크 먹었다~", imgArr: img[0] ?? UIImage(), time: Date(), commentArr: [comment[0], comment[1]], heart: [user[1], user[3]]),
    Menu(title: "점심", text: "김치볶음밥에 계란 후라이!", imgArr: img[1] ?? UIImage(), time: Date(), commentArr: [comment[0], comment[1]], heart: [user[1], user[3]]),
    Menu(title: "저녁", text: "맛있는 수제비~", imgArr: img[2] ?? UIImage(), time: Date(), commentArr: [comment[0]], heart: [user[1], user[3]]),
    Menu(title: "아침", text: "잉글리시 브랙퍼스트에 양송이 추가해서 건강한 아침!", imgArr: img[0] ?? UIImage(), time: Date(), commentArr: [], heart: [ user[3]]),
    Menu(title: "점심", text: "간단하게 라면", imgArr: img[1] ?? UIImage(), time: Date(), commentArr: [comment[0], comment[1]], heart: [ user[3]])
]

var comment: [Comment] = [
    Comment(text: "너 진짜... 좋은 친구를 두었구나... 맛있겠다 ㅜㅜ", replier: user[1]),
    Comment(text: "아침부터 빵~? 점심은 든든한 밥 먹으렴^.^", replier: user[3])
]

var post: [Post] = [
    Post(author: user[0], menuArr: [menu[0], menu[1], menu[2]], date: Date()),
    Post(author: user[3], menuArr: [menu[3], menu[4]], date: Date()),
    Post(author: user[2], menuArr: [menu[2], menu[3]], date: Date()),
    Post(author: user[4], menuArr: [menu[1], menu[0]], date: Date())
]

struct TodaysMenuView: View {
    
    @State var isShowingSheet = false
    
    var body: some View {
        NavigationView {
            VStack{
                CalendarView()
                ContentListView()
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {

                ToolbarItem(placement: .principal) {
                    Text("오늘의 메뉴")
                        .font(.title3)
                        .accessibilityAddTraits(.isHeader)
                }
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button {
                        isShowingSheet.toggle()
                    } label: {
                        Label("Add", systemImage: "camera.fill")
                    }
                }
            }
            .sheet(isPresented: $isShowingSheet) {
                AddPostView(isShowingSheet: self.$isShowingSheet)
            }
        }
    }
}

let dateFormat: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "MMMM YYYY"
    return formatter
}()

struct CalendarView: View {
    @State var date = Date()
    
    var body: some View {
        let today = Date()
        VStack {
            HStack {
                DatePicker("label", selection: $date, in: ...Date(), displayedComponents: [.date])
                    .datePickerStyle(CompactDatePickerStyle())
                    .labelsHidden()
//                Text("\(today, formatter: dateFormat)")
//                    .font(.system(size: 18))
//                    .fontWeight(.bold)
//                    .padding(.horizontal, 8)
                Spacer()
            }
            ScrollView(.horizontal) {
                HStack {
                    ForEach(1..<31){
                        Text("\($0)").padding(10)
                    }
                }
            }
        }
        .padding(.horizontal, 20)
    }
}

struct ContentListView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    NavigationLink(destination: DetailView(post: post[0])) {
                        HStack {
                            ProfileView(name: (post[0].author?.name)!, fontSize: .title3, width: 47, height: 47, img: Image("Pang0"))
                            Spacer()
                        }
                    }
                    ImageScrollView(menuArr: post[0].menuArr)
                        .padding(.top, 14)
                        .padding(.bottom, 18)
                    Divider()
                        .frame(width: 350)
                }
                ForEach(1..<post.count) {
                    let p = post[$0]
                    VStack {
                        NavigationLink(destination: DetailView(post: p)) {
                            HStack {
                                ProfileView(name: (p.author?.name)!, width: 45, height: 45, color: Color("Black1"), img: Image("Pang0"))
                                Spacer()
                            }
                        }
                        ImageScrollView(menuArr: p.menuArr)
                    }
                    .padding(.vertical, 10)
                }
            }
            .padding(.horizontal, 20)
            .navigationBarHidden(true)
        }
    }
}

struct TitleView: View {
    var name = ""
    var heartCnt = 0
    var commentCnt = 0
    var body: some View {
        HStack {
            ProfileView(name: name)
            Spacer()
            CommentReactionView(heart: heartCnt, comment: commentCnt)
        }
    }
}

struct ImageScrollView: View {
    var menuArr: [Menu] = []
    
    var body: some View {
        let width: CGFloat = 130
        let height: CGFloat = 130
        ScrollView(.horizontal) {
            HStack {
                ForEach(0..<menuArr.count) {
                    let uiImg = menuArr[$0].imgArr
                    let img = Image(uiImage: uiImg)
                    img
                        .resizable()
                        .frame(width: width, height: height, alignment: .center)
                        .cornerRadius(8.0)
                        .padding(.trailing, 5)
                }
            }
        }
    }
}


struct TodaysMenuView_Previews: PreviewProvider {
    static var previews: some View {
        TodaysMenuView()
    }
}
