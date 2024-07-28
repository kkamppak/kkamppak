//
//  OnboardingCard.swift
//  KKAMPPAK
//
//  Created by 김다빈 on 7/27/24.
//

import SwiftUI

// TODO: 이미지별 패딩값 등록해야함
struct OnboardingCard: View {
    let imageName: String
    let discription: String
    let imageWidth: CGFloat
    let imageHeight: CGFloat
    let imgPaddingTop: CGFloat
    let distance: CGFloat

    var body: some View {
        VStack(spacing: 0) {
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 280, height: 300)
                .foregroundStyle(Color.white)
                .overlay(alignment: .top) {
                    VStack(alignment:.center,spacing: 0) {
                        Image(imageName)
                            .resizable()
                            .frame(width: imageWidth,height: imageHeight)
                            .scaledToFill()
                            .padding(.trailing, imageName == "OnboardingImage1" ? 12 : 0)
                            .padding(.top, imgPaddingTop)
                        
                        Text(discription)
                            .font(.title3Regular)
                            .foregroundStyle(Color.third)
                            .multilineTextAlignment(.center)
                            .padding(.top,distance)
                        
                    }
                }
                .frame(width: 280, height: 300)
        }
    }
}
