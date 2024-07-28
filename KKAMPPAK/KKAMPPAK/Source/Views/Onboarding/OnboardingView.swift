//
//  OnboardingView.swift
//  KKAMPPAK
//
//  Created by 김다빈 on 7/14/24.
//

import SwiftUI

struct OnboardingView: View {
    @Binding var isOnboarding: Bool
    @State private var moveNextPage: Bool = false
    @State private var offset: CGFloat = .zero
    @State private var cardIndex = 0
    @State private var timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    let cardItems = [OnboardingCard(imageName: "OnboardingImage1", discription: "밤에 스마트폰을 보느라\n 잠을 잘 수 없어요!", imageWidth: 156.66, imageHeight: 144.6, imgPaddingTop: 55, distance: 23.39),
                     OnboardingCard(imageName: "OnboardingImage2", discription: "시간 가는 줄\n모르겠어요!", imageWidth: 136.4, imageHeight: 136.4, imgPaddingTop: 67, distance: 20.6),
                     OnboardingCard(imageName: "OnboardingImage3", discription: "화면을 오래 보니\n눈이 뻑뻑해요!", imageWidth: 129.89, imageHeight: 117.49, imgPaddingTop: 75, distance: 34.51),
    ]
    
    var body: some View {
        NavigationStack {
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
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            ForEach(0..<100) { i in
                                let idx = i % cardItems.count
                                OnboardingCard(imageName: cardItems[idx].imageName, discription: cardItems[idx].discription, imageWidth: cardItems[idx].imageWidth, imageHeight: cardItems[idx].imageHeight, imgPaddingTop: cardItems[idx].imgPaddingTop, distance:  cardItems[idx].distance)
                            }
                            .offset(x: offset)
                            .onReceive(timer) { _ in
                                withAnimation(.default) {
                                    let scrollSpeed: CGFloat = 5
                                    offset -= scrollSpeed
                                    
                                    if offset >= UIScreen.main.bounds.width {
                                        cardIndex += 1
                                        offset -= UIScreen.main.bounds.width
                                    }
                                    
                                    if cardIndex >= cardItems.count + 1 {
                                        cardIndex = 1
                                        offset = 0
                                    }
                                }
                            }
                        }
                        .padding(.leading,20)
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
                        moveNextPage = true
                        
                    }
                    .padding(.top, 92)
                    .padding(.bottom, 105)
                    .navigationDestination(isPresented: $moveNextPage) {
                        OnboardingSettingView(isOnboarding: $isOnboarding)
                            .navigationBarBackButtonHidden()
                    }
                }
            }
            .background(Color.kkampakBlack)
        }
    }
}

// Ex+ views
extension OnboardingView {
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
