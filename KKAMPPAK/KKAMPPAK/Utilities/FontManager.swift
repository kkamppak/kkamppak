//
//  FontManager.swift
//  KKAMPPAK
//
//  Created by 김다빈 on 7/27/24.
//

import SwiftUI
/*
 Title 1 medium 32
 Title 1 Bold = Bold 32
 Title 2 Bold 24
 Title 3 medium 20
 Title 3 Regular Regular 20
 Body Regular 18
 */


enum Pretendard: String {
    case bold = "Pretendard-Bold"
    case medium = "Pretendard-Medium"
    case regular = "Pretendard-Regular"

}

extension Text {
    static let title1 = Font.custom(Pretendard.medium.rawValue, size: 32)
    static let title1Bold = Font.custom(Pretendard.bold.rawValue, size: 32)
    static let title2 = Font.custom(Pretendard.bold.rawValue, size: 24)
    static let title3 = Font.custom(Pretendard.medium.rawValue, size: 20)
    static let title3Regular = Font.custom(Pretendard.regular.rawValue, size: 20)
    static let body = Font.custom(Pretendard.regular.rawValue, size: 18)
}
