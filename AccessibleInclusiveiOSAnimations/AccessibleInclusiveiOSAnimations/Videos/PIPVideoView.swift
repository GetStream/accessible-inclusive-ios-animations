//
//  PIPVideoView.swift
//  OpenSwiftUIAnimations
//

import AVFoundation
import SwiftUI
import AVKit

struct PIPVideoView: View {
    
    @State var player = AVPlayer()
    let avPlayer = AVPlayer(url: Bundle.main.url(forResource: "pipVideo", withExtension: "mp4")!)
    
    var body: some View {
        VideoPlayer(player: avPlayer)
            .scaleEffect(0.5)
            .mask(Rectangle().frame(width: 140, height: 240).cornerRadius(8))
        
            .onAppear {
                avPlayer.play()
                avPlayer.actionAtItemEnd = .none
                
                NotificationCenter.default.addObserver(forName: .AVPlayerItemDidPlayToEndTime, object: avPlayer.currentItem, queue: .main) { _ in
                    avPlayer.seek(to: .zero)
                    avPlayer.play()
                }
            }
    }
}

#Preview {
    PIPVideoView()
        .preferredColorScheme(.dark)
}
