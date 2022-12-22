# Jiggle Of Jello
## Neat and Simple ChatGPT - SwiftUI Animations and Transitions for Your Next Project. 

| Create a SwiftUI animation that wobbles forever | 
|--------|

```swift
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







