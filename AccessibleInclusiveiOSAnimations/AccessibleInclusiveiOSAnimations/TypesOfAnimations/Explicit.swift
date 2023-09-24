//
//  Explicit.swift
//  AccessibleInclusiveiOSAnimations
//
//  Created by amos.gyamfi@getstream.io on 23.9.2023.
//

import SwiftUI

struct Explicit: View {
    @State private var starting = false
    @State private var ending = false
    @State private var rotating = false
    
    var body: some View {
        
        VStack {
            Circle()
                .trim(from: starting ? 1/3 : 1/9, to: ending ? 2/5 : 1)
                .stroke(style: StrokeStyle(lineWidth: 3, lineCap: .round))
                .frame(width: 50, height: 50)
                .rotationEffect(.degrees(rotating ? 360 : 0))
                .accessibilityLabel("Loading Animation")
                .onAppear {
                    withAnimation(.linear(duration: 1).repeatForever(autoreverses: false)) {
                        rotating.toggle()
                    }
                    
                    withAnimation(.easeOut(duration: 1).delay(0.5).repeatForever(autoreverses: true)) {
                        starting.toggle()
                    }
                    
                    withAnimation(.easeInOut(duration: 1).delay(1).repeatForever(autoreverses: true)) {
                        ending.toggle()
                    }
                }
            
            Image(.bmcLogo)
        } //
    }
}

#Preview {
    Explicit()
}
