//
//  EyeBlinkingView.swift
//  KKAMPPAK
//
//  Created by 김다빈 on 7/14/24.
//

import SwiftUI

struct EyeBlinkingView: View {
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack {
            Text("눈 깜빡 뷰")
            
            Button(action: {
                router.popToRoot()
            }, label: {
                Text("중단하기")
            })
            
            Button(action: {
                router.push(to: .loading)
            }, label: {
                Text("로딩화면으로 넘어가기")
            })
        }.navigationBarBackButtonHidden()
    }
}

#Preview {
    EyeBlinkingView()
}
