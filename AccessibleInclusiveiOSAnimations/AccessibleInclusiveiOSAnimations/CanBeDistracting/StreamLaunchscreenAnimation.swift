//
//  StreamLaunchScreenAnimation.swift

import SwiftUI

struct StreamLaunchScreenAnimation: View {
    @State private var move = false
    @State private var splash = false
    let StreamBlue = Color(#colorLiteral(red: 0, green: 0.368627451, blue: 1, alpha: 1))
    @State private var swinging = false
    var body: some View {
        
        ZStack {
            StreamBlue
                .opacity(0.25)
                .ignoresSafeArea()
            ZStack {
                Image(.STREAMMARK)
                    .scaleEffect(0.6)
                    .rotationEffect(.degrees(swinging ? -10 : 10), anchor: swinging ? .bottomLeading : .bottomTrailing)
                    .offset(y: -15)
                    .animation(.easeInOut(duration: 1).repeatCount(14, autoreverses: true), value: swinging)
                VStack(spacing: -46) {
                    Image(.wave)
                        .offset(y: 20)
                        .offset(x: move ? -160 : 160)
                        .animation(.bouncy(duration: 14), value: move)
                    Image(.wave)
                        .offset(y: 10)
                        .offset(x: move ? -150 : 150)
                        .animation(.easeInOut(duration: 14), value: move)
                }
                .mask(Image(.waveTop))
            }
            .onAppear {
                move.toggle()
                swinging.toggle()
                
                withAnimation(.easeInOut(duration: 1).delay(13).repeatCount(1, autoreverses: false)){
                    splash.toggle()
                }
            }
            .scaleEffect(2)
        }
    }
}

#Preview {
    StreamLaunchScreenAnimation()
}

