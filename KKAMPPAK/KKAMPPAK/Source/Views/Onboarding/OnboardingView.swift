//
//  OnboardingView.swift
//  KKAMPPAK
//
//  Created by 김다빈 on 7/14/24.
//

import SwiftUI

struct OnboardingView: View {
    @Binding var isOnboarding: Bool
    @StateObject private var router = OnboardingRouter()
    
    var body: some View {
        NavigationStack(path: $router.route) {
            ScrollView {
                VStack(alignment: .center, spacing: 0) {
                    VStack(alignment: .center, spacing: 10) {
                        Text("깜빡이와 함께하는")
                            .font(.custom("Pretendard-Regular", size: 16))
                            .foregroundStyle(Color.second)
                        Text("눈, 깜빡했나요?\n스마트폰 사용시간,\n깜빡했나요?")
                            .multilineTextAlignment(.center)
                            .font(.custom("Pretendard-SemiBold", size: 24))
                            .foregroundStyle(Color.white)
                        
                    }
                    .padding(.top, 94)
                    
                    ScrollView(.horizontal) {
                        HStack {
                            OnboardingCard(imageName: "OnboardingImage1", discription: "밤에 스마트폰을 보느라\n 잠을 잘 수 없어요!", imageWidth: 156.66, imageHeight: 144.61)
                            
                        }
                    }
                    .padding(.top, 78)
                    
                    
                    introArea()
                        .padding(.top, 95)
                    
                    VStack(alignment: .center, spacing: 120) {
                        discriptionArea("눈 깜빡 운동\n3초당 1회, 1분에 15회 이상", "스마트폰 사용 중에 발생하는\n안구건조증, 각종 각막질환을 예방해요", "OnboardingBlink", 172,96)
                        discriptionArea("눈 상하좌우 운동\n양 옆 위아래 1분", "누적된 눈 피로에 더욱 효과적으로!", "OnoboardingSide",172,96)
                        discriptionArea("원하는 시간에,\n 깜빡이의 알림을!", "지키고자 하는 스마트폰 스크린타임을\n깜빡이가 알려줘요", "NextCard",216,229)
                        
                    }
                    .padding(.top, 73)
                    
                    MainButton(btnText: "다음으로") {
                        router.push(to: .onboardingSetting)
                    }.id(1)
                    
                    .padding(.top, 92)
                    .padding(.bottom, 105)
                }
            }
            .background(Color.kkampakBlack)
        }
        
    }
}

// Ex+ views
extension OnboardingView {
    @ViewBuilder
    private func pageDesintaion(with type: OnboardingDestination) -> some View {
        switch type {
        case .onboardingIntro:
            OnboardingView(isOnboarding: $isOnboarding)
                .environmentObject(router)
        case .onboardingSetting:
            OnboardingSettingView(isOnboarding: $isOnboarding)
                .environmentObject(router)
        }
    }
    
    private func introArea() -> some View {
        VStack(alignment: .center, spacing: 0) {
            Text("Z세대의\n스마트폰 사용\n하루 평균 7시간")
                .font(.custom("Pretendard-SemiBold", size: 24))
                .multilineTextAlignment(.center)
                .foregroundStyle(Color.white)
                .padding(.bottom, 50)
            
            Text("건강한 일상을 가로막는 주된 원인!")
                .font(.custom("Pretendard-Regular", size: 16))
                .foregroundStyle(Color.second)
                .padding(.bottom, 27)
            
            GifView(gifName: "OnboardingGif")
                .frame(width: 350, height: 350)
            
        }
    }
    
    private func discriptionArea(_ headString: String, _ bodyString: String, _ gifName: String, _ gifWidth: CGFloat, _ gifHeight: CGFloat ) -> some View{
        VStack(alignment: .center ,spacing: 0) {
            Text(headString)
                .font(.title2)
                .multilineTextAlignment(.center)
                .foregroundStyle(Color.white)
                .padding(.bottom, 21)
            
            Text(bodyString)
                .font(.custom("Pretendard-Regular", size: 16))
                .multilineTextAlignment(.center)
                .foregroundStyle(Color.second)
                .padding(.bottom, 50)
            
            GifView(gifName: gifName)
                .frame(width: gifWidth,height: gifHeight)
        }
    }
}



#Preview {
    OnboardingView(isOnboarding: .constant(false))
}
