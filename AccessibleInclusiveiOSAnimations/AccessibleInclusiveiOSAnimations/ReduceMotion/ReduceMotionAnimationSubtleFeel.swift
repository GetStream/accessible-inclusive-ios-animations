
//
//  ReduceMotionAnimationNil.swift
//  Hamburger to Close
//

import SwiftUI

struct ReduceMotionAnimationNil: View {
    
    @State private var isRotating = false
    @State private var isHidden = false
    
    let subtleFeel = Animation.snappy // Use when Reduce Motion is On
    
    let bouncyFeel = Animation.bouncy(duration: 0.4, extraBounce: 0.2)
    
    // Detect and respond to reduce motion
    @Environment(\.accessibilityReduceMotion) var reduceMotion
    
    var body: some View {
        VStack(spacing: 14){
            
            Rectangle() // top
                .frame(width: 64, height: 10)
                .cornerRadius(4)
                .rotationEffect(.degrees(isRotating ? 48 : 0), anchor: .leading)
            
            Rectangle() // middle
                .frame(width: 64, height: 10)
                .cornerRadius(4)
                .scaleEffect(isHidden ? 0 : 1, anchor: isHidden ? .trailing: .leading)
                .opacity(isHidden ? 0 : 1)
            
            Rectangle() // bottom
                .frame(width: 64, height: 10)
                .cornerRadius(4)
                .rotationEffect(.degrees(isRotating ? -48 : 0), anchor: .leading)
        }
        .accessibilityElement(children: .combine)
        .accessibilityAddTraits(.isButton)
        .accessibilityLabel("Hamburger menu")
        .onTapGesture {
            withAnimation(reduceMotion ? subtleFeel : bouncyFeel) {
                isRotating.toggle()
                isHidden.toggle()
            }
        }
        
    }
}

#Preview {
    ReduceMotionAnimationNil()
        .preferredColorScheme(.dark)
}
