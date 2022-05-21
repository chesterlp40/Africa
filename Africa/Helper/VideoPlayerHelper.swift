//
//  VideoPlayerHelper.swift
//  VideoPlayerHelper
//
//  Created by Ezequiel Rasgido on 13/09/2021.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

func playVideo(
    _ fileName: String,
    _ fileFormat: String
) -> AVPlayer {
    if let url = Bundle.main.url(forResource: fileName, withExtension: fileFormat) {
        videoPlayer = AVPlayer(url: url)
        videoPlayer?.play()
    }
    return videoPlayer!
}
