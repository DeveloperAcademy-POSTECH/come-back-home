//
//  MyPangView.swift
//  ComeBackHome
//
//  Created by Jun.Mac on 2022/04/11.
//

import SwiftUI

struct MyPangView : View {
      
    @State var index = 0
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
           var body: some View {
               ZStack{
                  
                   BackgroundOpacity()
                   VStack(spacing: 8){
                       Spacer()
                       Spacer()
                       TabView(selection: self.$index){
                           
                           ForEach(1...2,id: \.self){index in
                               
                               Image("PangLv\(index)")
                                   .resizable()
                                   .aspectRatio(contentMode: .fit)
                                   .frame(height: 500)
                                   .cornerRadius(15)
                                   .padding(.horizontal)
                                   .tag(index)
                                   
                               
                           }
                          
                       }.padding(.top)
                           .frame(height: 500)
                        .tabViewStyle(PageTabViewStyle())
                       
                       VStack(alignment: .leading, spacing: 8){
                           Text("펭귄을 성장시키고 싶다면?")
                               .font(.system(size: 20))
                               .fontWeight(.bold)
                               .foregroundColor(Color.white)
                               .multilineTextAlignment(.leading)
                               .padding(.trailing)
                           Text("오늘의 메뉴와 묻고 답하기를 통해 \n열심히 활동해서 받은 물고기를 받고 쑥쑥 자라요 :)")
                               .font(.system(size: 16))
                               .fontWeight(.regular)
                               .foregroundColor(Color.white)
                               .multilineTextAlignment(.leading)
                               .padding(.trailing)
                           
                           Spacer()
                           Spacer()
                           
                       }
                     
                      
                           
                       
                   }
                
                  
                       
               }
               .navigationBarBackButtonHidden(true)
               .navigationBarTitle("마이 펭귄")
               .foregroundColor(.white)
               .navigationBarTitleDisplayMode(.inline)
               .toolbar {
                   ToolbarItem(placement: .navigationBarLeading) {
                       Button(action: { presentationMode.wrappedValue.dismiss() }) {
                           Image(systemName: "arrow.backward")
                               .foregroundColor(.white)
                       }.buttonStyle(.plain)
                   }
               }
                    
               }
              
           }





struct MyPangView_Previews: PreviewProvider {
    static var previews: some View {
       
        NavigationView {
            MyPangView()
        }
        
    }
}


             
