//
//  PlayerView.swift
//  MeditationApp
//
//  Created by Sergey Shcheglov on 12.04.2022.
//

import SwiftUI

struct PlayerView: View {
    @State private var value: Double = 0.0
    
    var body: some View {
        ZStack {
            //MARK: - Background image
            Image("image-ripple")
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width)
                .ignoresSafeArea()
            
            VStack(spacing: 32) {
                //MARK: - Dismiss Button
                
                HStack {
                    Button {
                        
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.system(size: 36))
                            .foregroundColor(.white)
                    }
                    
                    Spacer()
                }
                
                //MARK: - Title
                
                Text("1 Minute Relaxing Meditation")
                    .font(.title)
                    .foregroundColor(.white)
                
                Spacer()
                
                
                //MARK: - Playback
                VStack(spacing: 5) {
                    
                    //MARK: - Playback Timeline
                    Slider(value: $value, in: 0...60)
                        .accentColor(.white)
                    
                    //MARK: - Playback Time
                    HStack {
                        Text("0:00")
                        
                        Spacer()
                        
                        Text("1:00")
                    }
                    .font(.caption)
                    .foregroundColor(.white)
                }
            }
            .padding(20)
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
