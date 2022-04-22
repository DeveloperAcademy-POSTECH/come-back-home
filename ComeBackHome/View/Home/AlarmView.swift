//
//  AlarmView.swift
//  ComeBackHome
//
//  Created by Jun.Mac on 2022/04/11.
//

import SwiftUI

struct AlarmView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        
        VStack{
            HStack{
                Text("활동알림")
                    .font(.system(size: 18))
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                
                Spacer().frame(width: 100)
                
                Text("일정알림")
                    .font(.system(size: 18))
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
            }
            ZStack{
                Rectangle()
                    .fill(Color.gray)
                    .frame(width: 400, height: 1)
                    
                Rectangle()
                    .fill(Color.MainColor)
                    .frame(width: 200, height: 3)
                    .offset(x: -100)
            }
            VStack{
                VStack(alignment: .leading, spacing: 10){
                    Text("Lawn님이 맛있는 점심기록을 올렸어요 !")
                        .font(.system(size: 17))
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                    
                    Text("1시간전")
                        .font(.system(size: 14))
                        .fontWeight(.light)
                        .foregroundColor(Color.gray)
                        .padding(.bottom, 5)
                    Divider()
                    
                }.padding()
                VStack(alignment: .leading, spacing: 10){
                    Text("Dana님이 새로운 답변을 업데이트 했어요 !")
                        .font(.system(size: 17))
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                    
                    Text("2시간전")
                        .font(.system(size: 14))
                        .fontWeight(.light)
                        .foregroundColor(Color.gray)
                        .padding(.bottom, 5)
                    Divider()
                    
                }.padding()
                VStack(alignment: .leading, spacing: 10){
                    Text("Timo님이 Jio님의 점심 기록에 댓글을 남겼어요 !")
                        .font(.system(size: 17))
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                    
                    Text("2시간전")
                        .font(.system(size: 14))
                        .fontWeight(.light)
                        .foregroundColor(Color.gray)
                        .padding(.bottom, 5)
                    Divider()
                    
                }.padding()
                VStack(alignment: .leading, spacing: 10){
                    Text("Jio님이 오늘의 표정을 업데이트 했어요 !")
                        .font(.system(size: 17))
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                    
                    Text("2시간전")
                        .font(.system(size: 14))
                        .fontWeight(.light)
                        .foregroundColor(Color.gray)
                        .padding(.bottom, 5)
                    Divider()
                    
                }.padding()
                VStack(alignment: .leading, spacing: 10){
                    Text("Gun님이 아침 기록을 올리고 물고기 \n5개를 획득했어요 !")
                        .font(.system(size: 17))
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                    
                    Text("3시간전")
                        .font(.system(size: 14))
                        .fontWeight(.light)
                        .foregroundColor(Color.gray)
                        .padding(.bottom, 5)
                    Divider()
                    
                }.padding()
                Spacer().frame(height: 100)
            }
        
        } .navigationBarBackButtonHidden(true)
            .navigationBarTitle("알람")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: { presentationMode.wrappedValue.dismiss() }) {
                        Image(systemName: "arrow.backward")
                            .foregroundColor(.gray)
                    }.buttonStyle(.plain)
                }
            }
   
    }
           
}


struct AlarmView_Previews: PreviewProvider {
    static var previews: some View {
       
        AlarmView()
        
    }
}

