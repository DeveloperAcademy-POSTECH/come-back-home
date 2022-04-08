//
//  AddFamilyView.swift
//  ComeBackHome
//
//  Created by 김남건 on 2022/04/07.
//

import SwiftUI

struct AddFamilyView: View {
    @State private var codeInput = ""
    
    var body: some View {
        VStack {
            HStack() {
                Text("새 가족의 코드를 입력하세요")
                Spacer()
            }
            
            TextField("", text: $codeInput, onCommit: addFamily)
                .frame(height: 48)
                .background(Color("Black5"))
                .cornerRadius(10)
                
            Button("확인", action: addFamily) 
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, maxHeight: 48)
            .background(Color("MainColor"))
            .cornerRadius(10)
            
            Spacer()
        }
        .navigationTitle("가족 추가")
        .navigationBarTitleDisplayMode(.inline)
        .padding(20)
        
    }
    
    func addFamily() {
        
    }
}

struct AddFamilyView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddFamilyView()
        }
    }
}
