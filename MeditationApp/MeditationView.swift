//
//  MeditationView.swift
//  MeditationApp
//
//  Created by Sergey Shcheglov on 12.04.2022.
//

import SwiftUI

struct MeditationView: View {
    var body: some View {
        VStack(spacing: 0) {
            //MARK: - Image
            Image("MeditationApp")
                .resizable()
                .scaledToFill()
                .frame(height: UIScreen.main.bounds.height / 3)
            
            //MARK: - Meditation details
            ZStack {
                //MARK: - Background
                Color(red: 24/255, green: 23/255, blue: 22/225)
                
                VStack(alignment: .leading, spacing: 8) {
                    //MARK: - Type & Duration
                    
                    VStack(alignment: .leading, spacing: 24) {
                        Text("Music")
                        
                        Text("0s")
                    }
                    .font(.subheadline)
                    .textCase(.uppercase)
                    .opacity(0.7)
                    
                    
                    //MARK: - Title
                    Text("1 Minute Relaxing Meditation")
                        .font(.title)
                    
                    //MARK: - Play Button
                    Button {
                        
                    } label: {
                        Label("Play", systemImage: "play.fill")
                            .font(.title)
                            .foregroundColor(.black)
                            .padding(.vertical, 10)
                            .frame(maxWidth: .infinity)
                            .background(.white)
                            .cornerRadius(20)
                    }
                    
                    //MARK: - Description
                    Text("Clear your mind and slumber into nothingness. Allocate only a few moments for a quick breather.")
                    
                    Spacer()
                    
                    
                }
                .foregroundColor(.white)
                .padding(20)
            }
            .frame(height: UIScreen.main.bounds.height * 2 / 3)
        }
        .ignoresSafeArea()
    }
}

struct MeditationView_Previews: PreviewProvider {
    static var previews: some View {
        MeditationView()
    }
}
