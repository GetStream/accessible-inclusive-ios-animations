//
//  Loading.swift
//  AccessibleInclusiveiOSAnimations
//
//  Created by amos.gyamfi@getstream.io on 23.9.2023.
//

import SwiftUI

struct Loading: View {
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
                .accessibilityHint("Circular image loading animation")
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
                
            // Tell VoiceOver to skip this image
            Image(decorative: "bmcLogo")
            // Hide the image completely
                .accessibilityHidden(true)
        }
        // Define how VoiceOver should interact with the group of elements
        .accessibilityElement(children: .combine)
        // Don't read the children but the combined element
    }
}

#Preview {
    Loading()
}
