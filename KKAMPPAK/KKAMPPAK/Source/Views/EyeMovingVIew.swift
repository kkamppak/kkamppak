//
//  EyeMovingVIew.swift
//  KKAMPPAK
//
//  Created by 김다빈 on 7/14/24.
//

import SwiftUI

struct EyeMovingVIew: View {
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack {
            Text("눈움직이기 뷰")
            
            Button(action: {
                router.route.append(.trainingFinish)
            }, label: {
                Text("훈련이 끝났을때 결과화면으로 넘어가기")
            })
            
            Button(action: {
                router.popToRoot()
            }, label: {
                Text("중단하기")
            })
        }.navigationBarBackButtonHidden()
    }
}

#Preview {
    EyeMovingVIew()
}
