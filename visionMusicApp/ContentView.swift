//
//  ContentView.swift
//  visionMusicApp
//
//  Created by Fabricyo Figueira on 28/07/23.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationSplitView {
                // Sidebar view
                SideBarView()
            } detail: {
                // Album view
                AlbumsView()
            }
            .tabItem {
                Label("Browse", systemImage: "music.note")
            }.tag(0)
            
            Text("Favorite")
                .tabItem {
                    Label("Favorite", systemImage: "heart.fill")
                }.tag(1)
            
            Text("Playlist")
                .tabItem {
                    Label("Playlist", systemImage: "play.square.stack")
                }.tag(2)
        }
    }
}

#Preview {
    NavigationStack {
        ContentView()
    }
}
