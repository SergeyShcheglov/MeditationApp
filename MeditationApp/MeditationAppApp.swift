//
//  MeditationAppApp.swift
//  MeditationApp
//
//  Created by Sergey Shcheglov on 12.04.2022.
//

import SwiftUI

@main
struct MeditationAppApp: App {
    @StateObject var audioManager = AudioManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(audioManager)
        }
    }
}
