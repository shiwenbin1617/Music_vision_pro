//
//  SideBarView.swift
//  visionMusicApp
//
//  Created by Fabricyo Figueira on 28/07/23.
//

import SwiftUI

struct SideBarView: View {
    var body: some View {
        List (sideMenuItems) { item in
            NavigationLink(value: item.self) {
                Label(item.name, systemImage: item.icon)
                    .foregroundStyle(.primary)
            }
            .navigationDestination(for: SideMenuItem.self) { item in
                // Menu item view
            }
        }
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                VStack (alignment: .leading) {
                    Text("Library")
                        .font(.largeTitle)
                    Text("All Music")
                        .foregroundStyle(.tertiary)
                }
            }
            ToolbarItem {
                Button(action: {}, label: {
                    Image(systemName: "ellipsis")
                })
            }
        }
    }
}

#Preview {
    ContentView()
}
