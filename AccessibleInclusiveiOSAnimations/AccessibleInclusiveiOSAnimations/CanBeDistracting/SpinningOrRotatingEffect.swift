//
//  SpinningOrRotatingEffect.swift

import SwiftUI

struct SpinningOrRotatingEffect: View {
    let sunHue = Color(#colorLiteral(red: 0.9983865619, green: 0.7612105012, blue: 0, alpha: 1))
    let duoYellow = Color(#colorLiteral(red: 1, green: 0.8685938716, blue: 0.009017970413, alpha: 1))
    
    @State private var isSpinning = false
    @State private var isDrawing = false
    @State private var isMoving = false
    
    var body: some View {
        NavigationView {
            VStack(alignment: .trailing) {
                
                Spacer()
                Image(systemName: "moon.circle")
                    .font(.title)
                
                
                ZStack {
                    Divider()
                    
                    HStack {
                        ZStack {
                            Circle()
                                .frame(width: 10, height: 10)
                        }
                        
                        Spacer()
                        
                        Circle()
                            .frame(width: 10, height: 10)
                    }
                    .padding(11)
                    .foregroundColor(duoYellow)
                    
                    VStack {
                        ZStack {
                            Circle()
                                .trim(from: 1/2, to: 1)
                                .stroke(style: StrokeStyle(lineWidth: 2, lineCap: .round, lineJoin: .round, dash: [7, 7]))
                                .fill(.secondary)
                                .frame(width: 366, height: 366)
                                .padding()
                            
                            Circle()
                                .trim(from: 1/2, to: isDrawing ? 1 : 0.2)
                                .stroke(style: StrokeStyle(lineWidth: 2, lineCap: .round, lineJoin: .round, dash: [7, 7]))
                                .fill(duoYellow)
                                .frame(width: 366, height: 366)
                                .padding()
                                .animation(.easeOut.repeatCount(1).speed(0.15), value: isDrawing)
                            
                            Text("Wind 9,7 km/h SW")
                                .font(.headline)
                                .padding(.top, -140)
                            
                            // Sun icon
                            Image(systemName: "sun.max.fill")
                                .font(.title)
                                .foregroundColor(sunHue)
                                .offset(x: -183)
                                .rotationEffect(.degrees(isMoving ? 180 : 0))
                            
                                .padding(.horizontal, -12)
                                .animation(.easeInOut.repeatCount(1).speed(0.15), value: isMoving)
                            
                            HStack(alignment: .bottom, spacing: -16) {
                                VStack(spacing: -24) {
                                    Image("fan_l")
                                        .zIndex(1)
                                        .rotationEffect(.degrees(isSpinning ? 360 : 0))
                                        .animation(.linear.repeatForever(autoreverses: false).speed(0.15), value: isSpinning)
                                    Image("stand_l")
                                }
                                
                                VStack(spacing: -12) {
                                    Image("fan_s")
                                        .zIndex(1)
                                        .rotationEffect(.degrees(isSpinning ? 360 : 0))
                                        .animation(.linear.repeatForever(autoreverses: false).speed(0.15), value: isSpinning)
                                    Image("stand_s")
                                }
                                Spacer()
                            }
                            .padding(EdgeInsets(top: -108, leading: 60, bottom: 0, trailing: 0))
                        }
                        
                        HStack {
                            Text("04:40")
                            Spacer()
                            Text("22:12")
                        }
                        .padding(.top, -180)
                    }
                    .onAppear{
                        isSpinning.toggle()
                        isDrawing.toggle()
                        isMoving.toggle()
                    }
                }
            }
            .navigationTitle("Sun and Wind")
            .padding()
        }
    }
}

#Preview {
    SpinningOrRotatingEffect()
}
