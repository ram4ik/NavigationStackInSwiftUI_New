//
//  Router.swift
//  NavigationStackInSwiftUI
//
//  Created by Ramill Ibragimov on 17.10.2022.
//

import Foundation
import SwiftUI

enum Route: Hashable {
    case ContentView
    case View1
    case View2
    case View3(String)
}

final class Router: ObservableObject {
    @Published var navigationPath = NavigationPath()
    
    func pushView(route: Route) {
        navigationPath.append(route)
    }
    
    func popToRootView() {
        navigationPath = .init()
    }
    
    func popToSpecificView(k: Int) {
        navigationPath.removeLast(k)
    }
}
