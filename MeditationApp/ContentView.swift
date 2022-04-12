//
//  ContentView.swift
//  MeditationApp
//
//  Created by Sergey Shcheglov on 12.04.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MeditationView(meditationVM: MeditationViewModel(meditation: Meditation.data))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
