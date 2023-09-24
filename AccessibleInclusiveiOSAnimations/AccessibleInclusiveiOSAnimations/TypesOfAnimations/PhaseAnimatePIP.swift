//
//  PhaseAnimatePIP.swift
//  OpenSwiftUIAnimations
//


import SwiftUI

struct PhaseAnimatePIP: View {
    enum Move: CaseIterable {
        case a, b, c, d
        
        var position: CGPoint {
            switch self {
            case .a: return CGPoint(x: 0.0, y: 0.0)
            case .b: return CGPoint(x: 0.0, y: -250.0)
            case .c: return CGPoint(x: 200, y: -250.0)
            case .d: return CGPoint(x: 200.0, y: 0.0)
            }
        }
        
        var changeColor: Color {
            switch self {
            case .a: .red
            case .b: .green
            case .c: .blue
            case .d: .white
            }
        }
        
        var chromaRotate: Double {
            switch self {
            case .a: 0.0
            case .b: 755.0
            case .c: 10.0
            case .d: 290.0
            }
        }
    }
    
    var body: some View {
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

#Preview {
    PhaseAnimatePIP()
        .preferredColorScheme(.dark)
}
