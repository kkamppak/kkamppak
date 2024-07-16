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
                Text("메인 뷰")
                
                Button(action: {
                    router.push(to: .setting)
                }, label: {
                    Text("설정 화면")
                })
                Button {
                    router.push(to: .loading)
                } label: {
                    Text("로딩화면으로 갑니다.")
                }
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
