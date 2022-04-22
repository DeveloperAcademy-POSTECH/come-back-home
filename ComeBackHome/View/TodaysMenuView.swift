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
    UIImage(named: "Food3"),
    UIImage(named: "Food4"),
    UIImage(named: "Food5"),
    UIImage(named: "Food6"),
    UIImage(named: "Food7")
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
    Menu(title: "저녁", text: "멜론~", imgArr: img[2] ?? UIImage(), time: Date(), commentArr: [comment[0]], heart: [user[1], user[3]]),
    Menu(title: "아침", text: "초밥~", imgArr: img[3] ?? UIImage(), time: Date(), commentArr: [], heart: [ user[3]]),
    Menu(title: "점심", text: "바나나 우유~", imgArr: img[4] ?? UIImage(), time: Date(), commentArr: [comment[0], comment[1]], heart: [ user[3]]),
    Menu(title: "저녁", text: "아보카도~", imgArr: img[5] ?? UIImage(), time: Date(), commentArr: [comment[0], comment[1]], heart: [ user[3]]),
    Menu(title: "점심", text: "만둣국~", imgArr: img[6] ?? UIImage(), time: Date(), commentArr: [comment[0], comment[1]], heart: [ user[3]]),
    Menu(title: "저녁", text: "샌드위치~", imgArr: img[7] ?? UIImage(), time: Date(), commentArr: [comment[0], comment[1]], heart: [ user[3]])
]

var comment: [Comment] = [
    Comment(text: "너 진짜... 좋은 친구를 두었구나... 맛있겠다 ㅜㅜ", replier: user[1]),
    Comment(text: "아침부터 빵~? 점심은 든든한 밥 먹으렴^.^", replier: user[3])
]

var post: [Post] = [
    Post(author: user[0], menuArr: [menu[0], menu[1], menu[2]], date: Date()),
    Post(author: user[3], menuArr: [menu[3], menu[4], menu[5]], date: Date()),
    Post(author: user[2], menuArr: [menu[6], menu[7]], date: Date()),
    Post(author: user[4], menuArr: [menu[1], menu[0]], date: Date())
]

struct TodaysMenuView: View {
    
    @State var isShowingSheet = false
    @State var isShowingBackButton = false
    
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        NavigationView {
            VStack{
                ContentListView(isShowingBackButton: $isShowingBackButton)
                    .id(appState.menuRootViewId)
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("오늘의 메뉴")
                        .font(.title3)
                        .accessibilityAddTraits(.isHeader)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        isShowingSheet.toggle()
                    } label: {
                        Label("Add", systemImage: "camera.fill")
                    }
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    if isShowingBackButton {
                        Button {
                            appState.menuRootViewId = UUID()
                        } label: {
                            Label("Back", systemImage: "arrow.backward")
                        }
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
            HStack {
                DatePicker("label", selection: $date, in: ...Date(), displayedComponents: [.date])
                    .datePickerStyle(CompactDatePickerStyle())
                    .labelsHidden()
                    .padding(.vertical, 15)
//                Text("\(today, formatter: dateFormat)")
//                    .font(.system(size: 18))
//                    .fontWeight(.bold)
//                    .padding(.horizontal, 8)
                Spacer()
            }
    }
}

struct ContentListView: View {
    @Binding var isShowingBackButton: Bool
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    CalendarView()
                    NavigationLink(destination: DetailView(isShowingBackButton: $isShowingBackButton, post: post[0]).navigationBarBackButtonHidden(true)) {
                        HStack {
                            ProfileView(name: (post[0].author?.name)!, fontSize: .title3, width: 47, height: 47, img: Image("Pang0"))
                            Spacer()
                        }
                    }
                    ImageScrollView(menuArr: post[0].menuArr)
                        .padding(.top, 5)
                        .padding(.bottom, 18)
                    Divider()
                        .frame(width: 350)
                }
                ForEach(1..<post.count) {
                    let p = post[$0]
                    VStack {
                        NavigationLink(destination: DetailView(isShowingBackButton: $isShowingBackButton, post: p).navigationBarBackButtonHidden(true)) {
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
