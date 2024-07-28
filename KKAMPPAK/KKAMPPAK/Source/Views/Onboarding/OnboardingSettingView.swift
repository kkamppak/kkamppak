//
//  OnboardingSettingView.swift
//  KKAMPPAK
//
//  Created by 김다빈 on 7/28/24.
//

import SwiftUI

struct OnboardingSettingView: View {
    @Binding var isOnboarding: Bool
    @EnvironmentObject var router: Router
    
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
            }
        }
        .padding(.top,123)
    }
}


#Preview {
    OnboardingSettingView(isOnboarding: .constant(false))
}
