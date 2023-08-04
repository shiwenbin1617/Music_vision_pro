//
//  Album.swift
//  visionMusicApp
//
//  Created by Fabricyo Figueira on 28/07/23.
//

import Foundation

struct Album: Identifiable {
    var id = UUID()
    var image: String
    var title: String
    var subTitle: String
}

let albums: [Album] = [
    Album(image: "https://m.media-amazon.com/images/I/81SfMiORihL._UF1000,1000_QL80_.jpg", title: "Hail to the Thief", subTitle: "Radiohead"),
    Album(image: "https://upload.wikimedia.org/wikipedia/pt/thumb/1/1d/X_y.jpg/220px-X_y.jpg", title: "X & Y", subTitle: "Coldplay"),
    Album(image: "https://upload.wikimedia.org/wikipedia/commons/9/98/Doors_-_Morrison_Hotel.jpg", title: "Morrison Hotel", subTitle: "The Doors"),
    Album(image: "https://upload.wikimedia.org/wikipedia/en/thumb/8/8a/Brmccover.jpg/220px-Brmccover.jpg", title: "B.R.M.C", subTitle: "Black Rebel Motorcycle Club"),
    Album(image: "https://upload.wikimedia.org/wikipedia/en/thumb/1/14/Inrainbowscover.png/220px-Inrainbowscover.png", title: "In Rainbows", subTitle: "Radiohead"),
    Album(image: "https://upload.wikimedia.org/wikipedia/en/thumb/0/03/Cleopatra_by_The_Lumineers.jpg/220px-Cleopatra_by_The_Lumineers.jpg", title: "Cleopatra", subTitle: "The Lumineers")
]
