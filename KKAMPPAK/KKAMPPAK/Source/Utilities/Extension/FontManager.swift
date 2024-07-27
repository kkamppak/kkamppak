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

extension Font {
    static let title1 = Font.custom("Pretendard-Medium", size: 32)
    static let title1Bold = Font.custom("Pretendard-Bold", size: 32)
    static let title2 = Font.custom("Pretendard-Bold", size: 24)
    static let title3 = Font.custom("Pretendard-Medium", size: 20)
    static let title3Regular = Font.custom("Pretendard-Regular", size: 20)
    static let body = Font.custom("Pretendard-Regular", size: 18)
}
