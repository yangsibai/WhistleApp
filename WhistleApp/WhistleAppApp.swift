//
//  WhistleAppApp.swift
//  WhistleApp
//
//  Created by 杨思柏 on 2022/10/27.
//

import SwiftUI

@main
struct WhistleAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .navigationTitle("Whistle")
                .frame(idealWidth: 1280, idealHeight: 800)
        }
        Settings {
            SettingsView()
        }
    }
}
