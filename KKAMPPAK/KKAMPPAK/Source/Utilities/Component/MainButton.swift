//
//  MainButton.swift
//  KKAMPPAK
//
//  Created by 김다빈 on 7/27/24.
//

import SwiftUI

struct MainButton: View {
    let btnText: String
    let action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            Text(btnText)
                .font(.title3)
                .foregroundColor(.kkampakWhite)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.main)
                        
                }.padding(.horizontal,30)
                
        })
    }
}

#Preview {
    MainButton(btnText: "깜빡하러가기", action: {print("버튼누름")})
}
