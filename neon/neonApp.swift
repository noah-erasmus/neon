//
//  neonApp.swift
//  neon
//
//  Created by Caitie on 2021/07/28.
//

import SwiftUI

@main
struct neonApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    @StateObject var appearance = Appearance()
    @StateObject var filters = Filters()
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            }else{
                ContentView().environmentObject(appearance).environmentObject(filters).preferredColorScheme(.dark)
            }
        }
    }
}
