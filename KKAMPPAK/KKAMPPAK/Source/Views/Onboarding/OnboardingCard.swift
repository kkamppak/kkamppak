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

    var body: some View {
        VStack(spacing: 0) {
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 280, height: 300)
                .foregroundStyle(Color.white)
                .overlay {
                    VStack(spacing: 0) {
                        Image(imageName)
                            .resizable()
                            .frame(width: imageWidth,height: imageHeight)
                            .scaledToFill()
                            .border(.black)
                        Text(discription)
                            .font(.title3Regular)
                            .foregroundStyle(Color.third)
                            .multilineTextAlignment(.center)
                        
                    }
                }
        }
        .border(.red)
        
        
    }
}

#Preview {
    OnboardingCard(imageName: "OnboardingImage1", discription: "밤에 스마트폰을 보느라 잠을 잘 수 없어요!", imageWidth: 156.66, imageHeight: 144.61)
}
