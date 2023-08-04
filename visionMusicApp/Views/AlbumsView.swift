//
//  AlbumsView.swift
//  visionMusicApp
//
//  Created by Fabricyo Figueira on 28/07/23.
//

import SwiftUI

struct AlbumsView: View {
    @State private var searchText: String = ""
    @State private var currentlyPlaying: Album = albums[0]
    private let columns: [GridItem] = [GridItem(.adaptive(minimum: 160, maximum: 200))]
    var body: some View {
        ScrollView {
            TextField("Search in Albums", text: $searchText)
                .textFieldStyle(.roundedBorder)
                .padding(.bottom)
            
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(albums) { album in
                   AlbumViewButton(album)
                }
            }
        }
        .padding(.horizontal, 20)
        .toolbar {
            ToolbarItemGroup(placement: .topBarLeading) {
                VStack (alignment: .leading) {
                    Text("Albums")
                        .font(.largeTitle)
                    Text("48 songs")
                        .foregroundStyle(.tertiary)
                }
            }
            ToolbarItem {
                Button(action: {}, label: {
                    Image(systemName: "line.3.horizontal.decrease")
                })
            }
        }
        .toolbar {
            PlayerControls()
        }
    }
    
    @ViewBuilder
    func AlbumViewButton(_ album: Album) -> some View {
        Button(action: {}) {
            VStack {
                AsyncImage(url: URL(string: album.image)) { image in
                    image.resizable()
                } placeholder: {
                    Rectangle()
                }
                .aspectRatio(1, contentMode: .fill)
                .scaledToFit()
                .cornerRadius(10)
                
                Text(album.title)
                    .lineLimit(1)
                Text(album.subTitle)
                    .lineLimit(1)
                    .foregroundStyle(.tertiary)
            }
            .hoverEffect()
        }
        .buttonStyle(.plain)
    }
    
    @ToolbarContentBuilder
    func PlayerControls() -> some ToolbarContent {
        ToolbarItemGroup(placement: .bottomOrnament) {
            HStack {
                Button {} label: {
                    Image(systemName: "backward.fill")
                }
                
                Button {} label: {
                    Image(systemName: "pause.fill")
                }
                
                Button {} label: {
                    Image(systemName: "forward.fill")
                }
                
                HStack {
                    AsyncImage(url: URL(string: currentlyPlaying.image)) { image in
                        image.resizable()
                    } placeholder: {
                        Rectangle().foregroundStyle(.tertiary)
                    }
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                    
                    VStack (alignment: .leading, content: {
                        Text(currentlyPlaying.title)
                        Text(currentlyPlaying.subTitle)
                            .font(.caption)
                    })
                    .frame(width: 160, alignment: .leading)
                    
                    Button(action: {}) {
                        Image(systemName: "ellipsis")
                    }
                    .buttonBorderShape(.circle)
                }
                .padding(.all, 8)
                .background(.regularMaterial, in: .rect(cornerRadius: 1))
                
                Button {} label: {
                    Image(systemName: "quote.bubble")
                }
                
                Button {} label: {
                    Image(systemName: "list.bullet")
                }
                
                Button {} label: {
                    Image(systemName: "speaker.wave.3.fill")
                }
                
            }
            .padding(.vertical, 8)
        }
    }
    
}

#Preview {
    ContentView()
}
