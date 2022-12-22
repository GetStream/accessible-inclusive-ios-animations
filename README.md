# Jiggle Of Jello
## Neat and Simple ChatGPT - SwiftUI Animations and Transitions for Your Next Project. 

| Prompt | 
|--------|
| **Prompt** | 
| Create a SwiftUI animation that wobbles forever | 
| **Code** | 
| ´struct WobbleView: View {
    @State private var wobbleAmount: CGFloat = 0
    
    var body: some View {
        VStack {
            Text("Wobble")
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding()
                .background(Color.red)
                .offset(x: wobbleAmount, y: 0)
                .animation(.easeInOut(duration: 0.1).repeatForever(autoreverses: true), value: wobbleAmount)
                .onAppear {
                    wobbleAmount = 10
                }
        }
    }
}´ | 
| **Preview** | 
| Display text in a green font | 




