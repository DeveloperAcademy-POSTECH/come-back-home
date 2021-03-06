//
//  AddPostView.swift
//  ComeBackHome
//
//  Created by Jiyoung Park on 2022/04/06.
//

import SwiftUI

struct AddPostView: View {
    @State private var detail: String = ""
    
    @State var isShowingActionSheet = false
    @State var isGalleryChoosed = false
    @State var isCameraChoosed = false
    @Binding var isShowingSheet: Bool
    @State var isImageSelected = false
    
    @State private var presentingToast: Bool = false
    
    @State var imageSelected = UIImage()
    
    @State private var time = Date()
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Button(action: {
                        isShowingActionSheet = true
                        isImageSelected = true
                    }){
                        if isImageSelected {
                            Image(uiImage: imageSelected)
                                .resizable()
                                .frame(width: 390, height: 383)
                        } else {
                            ZStack {
                                Rectangle()
                                    .stroke(Color("MainColor"), lineWidth: 1)
                                    .frame(width: 386, height: 383)
                                Image(systemName: "camera.fill")
                                    .resizable()
                                    .frame(width: 200, height: 150)
                            }
                        }
                    }
                    .padding(.vertical, 10)
                    .confirmationDialog("How would you like to add your menu?", isPresented: $isShowingActionSheet) {
                        Button("Choose from my gallery", role: .none) {
                            isGalleryChoosed.toggle()
                        }
                        Button("Snap a photo", role: .none) {
                            isCameraChoosed.toggle()
                        }
                        Button("Cancel", role: .cancel) {}
                    }
                    VStack (alignment: .leading) {
                        
                        VStack (alignment: .leading) {
                            Text("??????")
                                .font(.callout)
                                .foregroundColor(Color("Black1"))
                            ScrollView(.horizontal) {
                                HStack {
                                    MealButton(time: "??????")
                                    MealButton(time: "??????")
                                    MealButton(time: "??????")
                                    MealButton(time: "??????")
                                    MealButton(time: "??????")
                                }
                            }
                        }
                        .padding(.vertical, 13)
                        
                        VStack (alignment: .leading) {
                            Text("??????")
                                .font(.callout)
                                .foregroundColor(Color("Black1"))
                            DatePicker("label", selection: $time, displayedComponents: [.hourAndMinute])
                                .datePickerStyle(CompactDatePickerStyle())
                                .labelsHidden()
                        }
                        .padding(.vertical, 13)
                        
                        VStack (alignment: .leading) {
                            Text("??????")
                                .font(.callout)
                                .foregroundColor(Color("Black1"))
                            TextField("????????? ????????? ?????? ?????????. (??????)", text: $detail)
                                //.background(RoundedRectangle(cornerRadius: 4).fill(Color("Black5")).frame(height: 40)
                        }
                        .padding(.vertical, 13)
                    }
                    .padding(.horizontal, 20)
                    
    //                TextEditor(text: $detail)
    //                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 200)
    //                    .border(Color("Black3"), width: 1)
    //                    .padding(.vertical)
                }
            }
            .navigationBarTitle(Text("????????? ?????? ??????"), displayMode: .inline)
                .navigationBarItems(leading: Button(action: {
                    self.isShowingSheet = false
                }) {
                    Text("Cancel").bold()
                }, trailing: Button(action: {
                    self.isShowingSheet = false
                    //Upload data
                    self.presentingToast = true
                }) {
                    Text("Done").bold()
                })
        }
        .sheet(isPresented: $isGalleryChoosed) {
            ImagePicker(selectedImage: $imageSelected, sourceType: .photoLibrary)
        }
        .sheet(isPresented: $isCameraChoosed) {
            ImagePicker(selectedImage: $imageSelected, sourceType: .camera)
        }
    }
}

struct MealButton: View {
    var time = "??????"
    @State private var isOnTapped = false
    var body: some View {
        Text(time)
            .background(Capsule()
                .fill(isOnTapped ? Color("Black2") : Color("Black4"))
                .frame(width: 69, height: 37, alignment: .center))
            .frame(width: 69, height: 37, alignment: .center)
            .font(.body)
            .padding(.trailing, 5)
            .onTapGesture {
                isOnTapped.toggle()
            }
    }
}
