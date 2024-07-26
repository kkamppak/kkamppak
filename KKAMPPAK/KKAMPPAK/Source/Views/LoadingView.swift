//
//  LoadingView.swift
//  KKAMPPAK
//
//  Created by 김다빈 on 7/14/24.
//

import SwiftUI

struct LoadingView: View {
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack {
            Text("로딩 뷰")
            
            Button(action: {
                router.push(to: .eyeBlinking)
            }, label: {
                Text("눈깜빡이기로 갑니다.")
            })
            
            Button(action: {
                router.push(to: .eyeMoving)
            }, label: {
                Text("눈 움직이기로 갑니다.")
            })
            
            MainButton(btnText: "asdf") {
                print("a")
            }
        }.navigationBarBackButtonHidden()
    }
}

#Preview {
    LoadingView()
}
