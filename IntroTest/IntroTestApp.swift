//
//  IntroTestApp.swift
//  IntroTest
//
//  Created by Jihun Kang on 1/1/24.
//

import SwiftUI

@main
struct IntroTestApp: App {
    @StateObject var launchScreenState = LaunchScreenStateManager()
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                ContentView()
                
                if launchScreenState.state != .finished {
                    LaunchScreenView()
                }
            }.environmentObject(launchScreenState)
        }
    }
}
