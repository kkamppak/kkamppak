//
//  SettingView.swift
//  KKAMPPAK
//
//  Created by 김다빈 on 7/14/24.
//

import SwiftUI

struct SettingView: View {
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack {
            Text("셋팅 뷰")
            
            Button(action: {
                router.pop()
            }, label: {
                Text("뒤로가기")
            })
            
            Button(action: {
                router.push(to: .makesPeople)
            }, label: {
                Text("깜만사가기")
            })
        }.navigationBarBackButtonHidden()
    }
}

#Preview {
    SettingView()
}
