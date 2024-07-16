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
        Button(action: {
            isOnboarding = false
        }, label: {
            Text("온보딩 끝")
        })
    }
}
