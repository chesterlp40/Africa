//
//  MainView.swift
//  MainView
//
//  Created by Ezequiel Rasgido on 11/09/2021.
//

import SwiftUI

struct MainView: View {
    //MARK: - PROPERTIES Section

    //MARK: - BODY Section
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("Browse")
                }

            VideoListView()
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("Watch")
                }

            MapView()
                .tabItem {
                    Image(systemName: "map")
                    Text("Locations")
                }

            GalleryView()
                .tabItem {
                    Image(systemName: "photo")
                    Text("Gallery")
                }
        } //: TAB
    }
}

//MARK: - PREVIEW Section
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
