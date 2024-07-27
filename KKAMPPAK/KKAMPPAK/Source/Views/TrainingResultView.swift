//
//  TrainingResultView.swift
//  KKAMPPAK
//
//  Created by 김다빈 on 7/14/24.
//

import SwiftUI

struct TrainingResultView: View {
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack {
            Text("훈련결과 뷰")
            
            Button(action: {
                router.popToRoot()
            }, label: {
                Text("메인으로 되돌아가기")
            })
            
            Button(action: {
                router.push(to: .loading)
            }, label: {
                Text("다시 깜빡하러가기")
            })
        }.navigationBarBackButtonHidden()
    }
}

#Preview {
    TrainingResultView()
}
