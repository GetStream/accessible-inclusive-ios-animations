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





