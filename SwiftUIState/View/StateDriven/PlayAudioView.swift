//
//  PlayAudioView.swift
//  SwiftUIState
//
//  Created by Nadia Lovely on 01/07/24.
//

import SwiftUI

struct PlayAudioView: View {
//    ga perlu di set type data gpp, soalnya sama swift nya udah tau (type inference
    @State private var isPlaying = false
    @State private var counter = 1
    
    var body: some View {
        VStack(spacing: 20) {
            // MARK: - BUTTON PLAY

            Button {
                isPlaying.toggle()
                counter += 1
            } label: {
                Image(
                    systemName: isPlaying ? "stop.circle.fill": "play.circle.fill")
                .font(.system(size: 150)
                )
                .foregroundStyle(isPlaying ? .red : .green)
            }
            
            // MARK: - counter
            CounterButton(counter: $counter)
            
            Button("Reset") {
                counter = 1
            }

        }
    }
}

#Preview {
    PlayAudioView()
}
