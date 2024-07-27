//
//  OnboardingView.swift
//  KKAMPPAK
//
//  Created by 김다빈 on 7/14/24.
//

import SwiftUI

struct OnboardingView: View {
    @Binding var isOnboarding: Bool
    
    var body: some View {
        ScrollView {
            VStack {
                Text("깜빡")
                    .font(.system(size: 20))
                Text("깜빡")
                    .font(.title3)
                MainButton(btnText: "a", action: {
                    isOnboarding = false }
                )
            }
            
        }
    }
}

#Preview {
    OnboardingView(isOnboarding: .constant(false))
}
