//
//  MakesPeopleView.swift
//  KKAMPPAK
//
//  Created by 김다빈 on 7/14/24.
//

import SwiftUI

struct MakesPeopleView: View {
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack {
            Text("깜만사 뷰")
            
            Button(action: {
                router.pop()
            }, label: {
                Text("뒤로가기")
            })
        }.navigationBarBackButtonHidden()
    }
}

#Preview {
    MakesPeopleView()
}
