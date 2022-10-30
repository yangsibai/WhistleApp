//
//  SettingsView.swift
//  WhistleApp
//
//  Created by 杨思柏 on 2022/10/30.
//

import SwiftUI

struct GeneralSettingsView: View {
//    @AppStorage("showPreview") private var showPreview = true
//    @AppStorage("fontSize") private var fontSize = 12.0
    @AppStorage("whistlePort") private var whistlePort = DefaultSettings.whistlePort;

    var body: some View {
        Form {
//            Toggle("Show Previews", isOn: $showPreview)
//            Slider(value: $fontSize, in: 9...96) {
//                Text("Font Size (\(fontSize, specifier: "%.0f") pts)")
//            }
            TextField("Whistle Port", text: $whistlePort)
        }
        .padding(20)
        .frame(width: 350, height: 100)
    }
}

struct SettingsView: View {
    private enum Tabs: Hashable {
        case general, advanced
    }
    var body: some View {
        TabView {
            GeneralSettingsView()
                .tabItem {
                    Label("General", systemImage: "gear")
                }
                .tag(Tabs.general)
        }
        .padding(20)
        .frame(width: 375, height: 150)
    }
}
