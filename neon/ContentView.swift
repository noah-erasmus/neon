//
//  ContentView.swift
//  neon
//
//  Created by Caitie on 2021/07/28.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var appearance: Appearance
    let neonPink = UIColor(red: 239/255, green: 0/255, blue: 120/255, alpha: 1.0)
    init()
    {
        UITabBar.appearance().backgroundColor = neonPink
    }
    var body: some View {
        TabView{
            LibraryView()
                .tabItem { Label("Library", systemImage: "book") }
                .environmentObject(appearance)
            SettingsView()
                .tabItem { Label("Settings", systemImage: "gearshape") }
                .environmentObject(appearance)
        }
        .accentColor(Color("offWhite"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
