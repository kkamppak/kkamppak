//
//  Router.swift
//  KKAMPPAK
//
//  Created by 김다빈 on 7/14/24.
//

import SwiftUI

public enum Destination: Hashable {
    case setting
    case loading
    case eyeBlinking
    case eyeMoving
    case trainingFinish
    case makesPeople
}

public final class Router: ObservableObject {
    @Published public var route: [Destination] = []
    
    func push(to destination: Destination) {
        route.append(destination)
    }
    
    func pop() {
        route.removeLast()
    }
    
    func popToRoot() {
        route.removeLast(route.count)
    }
}
