//
//  PhaseAnimatePIP.swift
//  OpenSwiftUIAnimations
//


import SwiftUI

struct PhaseAnimatePIP: View {
    
    var body: some View {
        ZStack {
            FullScreenVideoView()
                .phaseAnimator(Move.allCases) { content, phase in
                    content
                        .hueRotation(.degrees(phase.chromaRotate))
                    
                } animation: { phase in // Override the default spring animation SwiftUI provides
                        .easeInOut(duration: 2)
                }
            
            PIPVideoView()
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .offset(x: -100, y: 250)
                .phaseAnimator(Move.allCases) { content, phase in
                    content
                        .offset(x: phase.position.x, y: phase.position.y)
                    
                } animation: { phase in // Override the default spring animation SwiftUI provides
                        .timingCurve(0.68, -0.6, 0.32, 1.6, duration: 2.0).delay(0.5)
                }
        }
    }
}

#Preview {
    PhaseAnimatePIP()
}
