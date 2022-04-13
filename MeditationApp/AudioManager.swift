//
//  AudioManager.swift
//  MeditationApp
//
//  Created by Sergey Shcheglov on 13.04.2022.
//

import Foundation
import AVKit

final class AudioManager: ObservableObject {
//    static let shared = AudioManager()
    
    var player: AVAudioPlayer?
    
    func startPlayer(track: String, isPreview: Bool = false) {
        guard let url = Bundle.main.url(forResource: track, withExtension: "mp3") else {
            print("Resource not found: \(track)")
            return
        }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            
            player = try AVAudioPlayer(contentsOf: url)
            if isPreview {
                player?.prepareToPlay()
            } else {
                player?.play()
            }
        } catch {
            print("Failed to initialize player", error)
        }
    }
}
