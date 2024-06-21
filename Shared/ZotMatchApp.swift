//
//  ZotMatchApp.swift
//  Shared
//
//  Created by Manush P Murali on 4/8/22.
//

import SwiftUI

@main
struct ZotMatchApp: App {
    var body: some Scene {
        WindowGroup{
            HStack{
                Image("ZotConnect")
                    .resizable()
                    .frame(width: 80.0, height: 80.0, alignment: .center)
                    .padding(.trailing, 232)
                Button(action: {
                    print("Delete button tapped!")
                }) {
                    NavigationLink("", destination: NotificationsView())
                    Image(systemName: "bell.fill")
                        .font(.title)
                        .foregroundColor(.red)
                        
                }
            }
            TabView{
                ProfileView()
                    .tabItem{
                        Label("Profile", systemImage: "person.crop.circle.fill")
                    }
                ContentView()
                    .tabItem{
                        Label("Connect", systemImage: "point.3.filled.connected.trianglepath.dotted")
                    }
                ChatView()
                    .tabItem{
                        Label("Chat", systemImage: "message.fill")
                    }
                SettingsView()
                    .tabItem{
                        Label("Settings", systemImage: "gearshape.fill")
                    }
            }.accentColor(Color(red: 0/255, green: 163/255, blue: 108/255))
        }
    }
}
