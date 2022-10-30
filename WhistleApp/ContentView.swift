//
//  ContentView.swift
//  WhistleApp
//
//  Created by 杨思柏 on 2022/10/27.
//

import SwiftUI
import WebKit

struct ContentView: View {
    @AppStorage("whistlePort") private var whistlePort = DefaultSettings.whistlePort;
    
    var body: some View {
        VStack {
            HStack{
                Text("Whistle")
                Spacer()
           
                Button(action: reload) {
                    Label("Reload", systemImage: "arrow.triangle.2.circlepath")
                }
                
                Link(destination: URL(string: "http://localhost:\(whistlePort)/")!, label: {
                    HStack {
                        Image(systemName: "globe")
                            .imageScale(.large)
                            .foregroundColor(.accentColor)
//                        Text("Browser").foregroundColor(.blue)
                    }
                })
            }.padding([.leading, .trailing, .top], 10)
            WebMacView(request: URLRequest(url: URL(string: "http://localhost:\(whistlePort)")!))
        }
        .padding(0)
    }
    
    func reload() {
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
