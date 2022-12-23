# Jiggle Of Jello
## Neat and Simple ChatGPT - SwiftUI Animations and Transitions for Your Next Projects.

| ChatGPT Prompt | Preview |
|--------|---------|
| Create a SwiftUI animation that wobbles forever | ![Wobble](https://github.com/GetStream/JiggleOfJello/blob/main/Previews/wobble.png) |

```swift
//  MARK: Create a SwiftUI animation that jiggles forever

import SwiftUI

struct WobbleView: View {
    @State private var wobbleAmount = 0.0
    
    var body: some View {
        VStack {
            Text("Wobble")
                .font(.largeTitle)
                .padding()
                .background(Color.red)
                .offset(x: wobbleAmount, y: 0)
                .animation(.easeInOut(duration: 0.1).repeatForever(autoreverses: true), value: wobbleAmount)
                .onAppear {
                    wobbleAmount = 10
                }
        }
    }
} 
```
-----

| ChatGPT Prompt | Preview |
|--------|---------|
| Create a SwiftUI animation that jiggles forever | ![Jiggle](https://github.com/GetStream/JiggleOfJello/blob/main/Previews/jiggle.png) |

```swift
//  MARK: Create a SwiftUI animation that jiggles forever

import SwiftUI

struct JiggleView: View {
    @State private var jiggleAmount = -10.0
    
    var body: some View {
        VStack {
            Text("Jiggle")
                .font(.largeTitle)
                .padding()
                .background(Color.red)
                .rotationEffect(.degrees(jiggleAmount))
                .animation(Animation.easeInOut(duration: 0.1).repeatForever(autoreverses: true), value: jiggleAmount)
                .onAppear {
                    jiggleAmount = 10.0
                }
        }
    }
}
```
----

| ChatGPT Prompt | Preview |
|--------|---------|
| Create a SwiftUI animation that uses the dashPhase of a rectangle to create marching ants effect. Repeat the animation forever | ![Marching Ants](https://github.com/GetStream/JiggleOfJello/blob/main/Previews/marchnigAnts.gif) |

```swift
//  MARK: Create a SwiftUI animation that uses the dashPhase of a rectangle to create marching ants effect. Repeat the animation forever
//

import SwiftUI

struct MarchingAntsRectangle: View {
    @State private var dashPhase = 100.0

    var body: some View {
        Rectangle()
            .stroke(style: StrokeStyle(lineWidth: 6, dash: [10, 5], dashPhase: dashPhase))
            .animation(.linear(duration: 1).repeatForever(autoreverses: false), value: dashPhase)
            .frame(width: 300, height: 200)
            .onAppear {
                dashPhase = 10.0
            }
    }
}
```
----

| ChatGPT Prompt | Preview |
|--------|---------|
| Create a SwiftUI animation that makes the tip of the SF Symbol pencil moves around a stroked circle forever | ![Move along circle](https://github.com/GetStream/JiggleOfJello/blob/main/Previews/moveAlongCircle.gif) |

```swift
//  MARK: Create a SwiftUI animation that makes the tip of the SF Symbol pencil moves around a stroked circle forever

import SwiftUI

struct PencilCircleView: View {
    @State private var angle: Angle = .degrees(0)
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color.red, lineWidth: 2)
                .frame(width: 200, height: 200)
            
            Image(systemName: "pencil.tip")
                .font(.system(size: 64))
                .offset(x: 100)
                .rotationEffect(angle)
                .animation(.linear(duration: 2).repeatForever(autoreverses: false), value: angle)
                .onAppear {
                    self.angle = .degrees(360)
                }
        }
    }
}
```
----

| ChatGPT Prompt | Preview |
|--------|---------|
| Create a SwiftUI animation that jellos forever | ![Jello](https://github.com/GetStream/JiggleOfJello/blob/main/Previews/jello.gif) |

```swift
//  MARK: Create a SwiftUI animation that jellos forever
//
import SwiftUI

struct JelloView: View {
    @State private var jelloAmount = 0.0
    
    var body: some View {
        VStack {
            Text("Jello")
                .font(.largeTitle)
                .padding()
                .background(.red)
                .offset(x: 0, y: jelloAmount)
                .animation(.easeInOut(duration: 0.1).repeatForever(autoreverses: true), value: jelloAmount)
                .onAppear {
                    jelloAmount = 10.0
                }
        }
    }
}
```
----

| ChatGPT Prompt | Preview |
|--------|---------|
| 1. Create a SwiftUI app animation that is triggered by tapping the SF Symbol button hand.thumbsup.fill. Use a ZStack for the animated views which consist of a splash at the bottom, a green circle in the middle, and a number on the top. When the button is tapped, the opacity of the splash and the green circle change from 0 to 1 with animation, and the number increments by 1 with animation. Use 12 small circles of different colors for the splash and rotate them around a central point by placing their offset above rotation. 2. Increment the number anytime the button is tapped. Change the opacity of the green circle and the splash back to 0 with animation after they animate to an opacity of 1, anytime the button is tapped | ![Medium-style clap](https://github.com/GetStream/JiggleOfJello/blob/main/Previews/mediumStyleReaction.gif) |

```swift
import SwiftUI

struct MediumClap3: View {
    @State private var showAnimation = false
    @State private var count = 0

    var body: some View {
        VStack(spacing: 64) {
            ZStack {
                // Splash view
                ForEach(0..<12, id: \.self) { i in
                    Circle()
                        .fill(getCircleColor(i))
                        .frame(width: 12, height: 12)
                        .opacity(showAnimation ? 1 : 0)
                        .animation(.easeInOut(duration: 1.5), value: showAnimation)
                        .offset(x: 0, y: -130)
                        .rotationEffect(.degrees(Double(i * 30)))
                }
                
                // Green circle
                Circle()
                    .fill(.green)
                    .frame(width: 200, height: 200)
                    //.scaleEffect(showAnimation ? 1.3 : 1)
                    .opacity(showAnimation ? 1 : 0)
                    .animation(.easeInOut(duration: 1.5), value: showAnimation)

                // Number label
                Text("\(count)")
                    .font(.largeTitle)
                    .animation(.easeInOut(duration: 0.5), value: count)
            }
            
            // Button
            Button(action: {
                showAnimation = true
                count += 1

                // Change the opacity of the green circle and the splash back to 0 with animation
                withAnimation(.default.delay(1)) {
                    showAnimation = false
                }
            }) {
                Image(systemName: "hand.thumbsup.fill")
                    .font(.largeTitle)
            }
        }
    }

    // Helper function to get the color for each circle in the splash
    func getCircleColor(_ index: Int) -> Color {
        switch index % 4 {
        case 0:
            return .red
        case 1:
            return .yellow
        case 2:
            return .blue
        case 3:
            return .purple
        default:
            return .black
        }
    }
}
```
----

| ChatGPT Prompt | Preview |
|--------|---------|
| Soon... | ![Twitter-style like](https://github.com/GetStream/JiggleOfJello/blob/main/Previews/twitterStyleLike.gif) |

```swift
import SwiftUI

struct TwitterLikeAnimation: View {
    @State private var isLiked = false
    @State private var isSplashing = false
    
    var body: some View {
        ZStack {
            if isLiked {
                // Pink-filled SF symbol heart icon
                Image(systemName: "heart.fill")
                    .font(.largeTitle)
                    .foregroundColor(.pink)
                    .animation(.spring(), value: isLiked)
                
                // Circle with stroke border of 0
                Circle()
                    .stroke(lineWidth: 0)
                    .frame(width: 28, height: 28)
                    .animation(.easeOut(duration: 0.2), value: isLiked)
                
                if isSplashing {
                    ForEach(0..<8, id: \.self) { index in
                        Circle()
                            .foregroundColor(self.color(for: index))
                            .frame(width: 6, height: 6)
                            .offset(x: 25)
                            .rotationEffect(.degrees(45 * Double(index)))
                        
                    }
                }
            } else {
                // Stroked SF symbol heart icon
                Image(systemName: "heart")
                    .font(.largeTitle)
                    .foregroundColor(.pink)
            }
            
            
        } // All views
        .scaleEffect(2)
        .onTapGesture {
            withAnimation(.spring()) {
                isLiked.toggle()
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                withAnimation(Animation.easeOut(duration: 0.5)) {
                    isSplashing = true
                }
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
                withAnimation(Animation.easeOut(duration: 0.5)) {
                    isSplashing = false
                }
            }
        }
    }
    
    func color(for index: Int) -> Color {
        let colors: [Color] = [.pink, .red, .orange, .yellow, .green, .blue, .purple, .pink]
        return colors[index % colors.count]
    }
}

```
----








