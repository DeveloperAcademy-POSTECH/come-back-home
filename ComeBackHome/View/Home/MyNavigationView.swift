//
//  MyNavigationView.swift
//  ComeBackHome
//
//  Created by Jun.Mac on 2022/04/11.
//

import SwiftUI

struct MyNavigationView : View {
    var body: some View{
        
        NavigationView{
//            Text("MyNavigationView")

            HomeView()
            
           
            .navigationBarTitle("Home", displayMode: .inline)
           
                .navigationBarItems(leading:
                    Button(action:{
                        print("호호")
                        }){
                          Text("호호")
                        }
                    , trailing:
                    NavigationLink(destination:
                        Text("넘어온 화면입니다.")
                    ){
//                        Text("네비게이션")
                        Image(systemName: "bookmark.fill")
                            .font(.system(size: 25))
                            .foregroundColor(Color.black)
                    }
                )
        }
        
        
    }
}

struct MyNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        MyNavigationView()
    }
}
