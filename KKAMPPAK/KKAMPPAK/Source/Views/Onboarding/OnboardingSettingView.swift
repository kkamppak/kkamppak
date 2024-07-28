//
//  OnboardingSettingView.swift
//  KKAMPPAK
//
//  Created by 김다빈 on 7/28/24.
//

import SwiftUI

struct OnboardingSettingView: View {
    @Binding var isOnboarding: Bool
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            VStack(alignment: .center, spacing: 20) {
                Text("스마트폰을 사용하실\n최대 시간을 알려주세요.")
                    .font(.custom("Pretendard-SemiBold", size: 24))
                    .foregroundStyle(Color.white)
                    .multilineTextAlignment(.center)
                
                Text("스마트폰을 이 시간만큼 쉬지않고 사용한다면,\n깜빡이가 알려드릴게요!")
                    .font(.custom("Pretendard-Regular", size: 16))
                    .foregroundStyle(Color.second)
                    .multilineTextAlignment(.center)
            }.padding(.top, 123)
            
            VStack {
                Text("시간 컴포넌트")
            }.padding(.top,93)
            
            VStack(spacing: 24) {
                MainButton(btnText: "이 시간으로 설정하기") {
                    // TODO: 시간설정
                }
                
                Text("지금은 넘어가기")
                    .font(.title3Regular)
                    .underline()
                    .foregroundStyle(Color.second)
                    .onTapGesture {
                        isOnboarding.toggle()
                    }
            }
            .padding(.top, 104)
            .padding(.bottom, 49)
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .ignoresSafeArea()
        .background(Color.kkampakBlack)
        .navigationBarBackButtonHidden()
    }
}


#Preview {
    OnboardingSettingView(isOnboarding: .constant(false))
}
