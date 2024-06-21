//
//  MainView.swift
//  ZotConnect
//
//  Created by Manush P Murali on 3/25/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
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

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView().preferredColorScheme(.dark)
    }
}
