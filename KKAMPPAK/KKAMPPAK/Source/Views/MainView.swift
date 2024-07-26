//
//  MainView.swift
//  KKAMPPAK
//
//  Created by 김다빈 on 7/14/24.
//

import SwiftUI

struct MainView: View {
    @StateObject private var router = Router()
    
    var body: some View {
        NavigationStack(path: $router.route) {
            VStack {
                Text("기본 글꼴")
                    .font(.system(size: 20))
                Text("기본 글꼴")
                    .font(.title3)
                Text("메인 뷰")
                    .foregroundColor(.primary)
                
                Button(action: {
                    router.push(to: .setting)
                }, label: {
                    Text("설정 화면")
                })
                MainButton(btnText: "로딩화면으로", action: {router.push(to: .loading)})

            }
            .navigationDestination(for: Destination.self) { page in
                pageDesintaion(with: page)
            }
        }
    }
}

extension MainView {
    @ViewBuilder
    private func pageDesintaion(with type: Destination) -> some View {
        switch type {
        case .eyeBlinking:
            EyeBlinkingView()
                .environmentObject(router)
        case .setting:
            SettingView()
                .environmentObject(router)
        case .loading:
            LoadingView()
                .environmentObject(router)
        case .eyeMoving:
            EyeMovingVIew()
                .environmentObject(router)
        case .trainingFinish:
            TrainingResultView()
                .environmentObject(router)
        case .makesPeople:
            MakesPeopleView()
                .environmentObject(router)
        }
    }
}

#Preview {
    MainView()
}
