//
//  VideoPlayerView.swift
//  VideoPlayerView
//
//  Created by Ezequiel Rasgido on 13/09/2021.
//

import SwiftUI
import AVKit
import MapKit

struct VideoPlayerView: View {
    //MARK: - PROPERTIES Section

    var videoSelected: String
    var videoTitle: String

    //MARK: - BODY Section
    var body: some View {
        VStack {
            VideoPlayer(
                player: playVideo(videoSelected, "mp4")
            ) {
                // Text(videoTitle)
            }
            .overlay(
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding(.top, 6)
                    .padding(.horizontal, 8)
                , alignment: .topLeading
            )
        } //: VSTACK
        .accentColor(.accentColor)
        .navigationBarTitle(videoTitle.capitalized)
        .navigationBarTitleDisplayMode(.inline)
    }
}

//MARK: - PREVIEW Section
struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
        }
    }
}
