//
//  ContentView.swift
//  WhistleApp
//
//  Created by 杨思柏 on 2022/10/27.
//

import SwiftUI
import WebKit


//HStack{
//    Text("Whistle")
//    Spacer()
//
//    Link(destination: URL(string: "http://localhost:8899/")!, label: {
//        HStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("Browser")
//                .foregroundColor(.blue)
//        }
//    })
//}.padding([.leading,.trailing], 10)

struct ContentView: View {
    var body: some View {
        VStack {
            WebMacView(request: URLRequest(url: URL(string: "http://localhost:8899")!))
        }
        .padding(.top, 0)
    }
}


struct WebMacView: NSViewRepresentable {
    let request: URLRequest
        
    func makeNSView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateNSView(_ nsView: WKWebView, context: Context) {
        nsView.load(request)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
