//
//  Qna.swift
//  ComeBackHome
//
//  Created by ICHAN NAM on 2022/04/07.
//

import Foundation
import SwiftUI

struct Qna {
    static let dateFormatter = DateFormatter()
    static func dateToString(_ date: Date) -> String {
        dateFormatter.locale = Locale(identifier: "en_US")
        dateFormatter.dateFormat = "MMM d. YYYY"
        return dateFormatter.string(from: date)
    }
    
    static let navigationTitle = Text("묻고 답해요")
    static let navigationListButton: some View =
        Image(systemName: "list.dash")
            .foregroundColor(Color("Black1"))
    static let navigationCheckButton: some View =
        Image(systemName: "checkmark")
            .foregroundColor(Color("Black1"))
    static let navigationBackButton: some View =
        Image(systemName: "arrow.backward")
            .foregroundColor(Color("Black1"))
}
