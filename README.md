# Accessible and Inclusive iOS/SwiftUI Animation/Motion Cheatsheet For Developers 
## Animations and motion can be dizzying for some app users. Let's fix that with these practical examples and following the motion accessibility guidelines outlined in this repo. Do you see something missing? Contact [@amos_gyamfi](@amos_gyamfi) and [@stefanjblos](@stefanjblos) on Twitter. 

![Accessible and inclusive iOS animations](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/animationsTalk.gif)

## Resources we have

- **Apple Developer Videos**: [Accessibility](https://developer.apple.com/videos/all-videos/?q=Accessibility)
- **HIG**: [Accessibility](https://developer.apple.com/design/human-interface-guidelines/accessibility)
- **WCAG**: [Motion specific section](https://www.w3.org/WAI/WCAG21/Understanding/animation-from-interactions.html)
- **Apple Design Awards**: [Inclusivity section](https://developer.apple.com/design/awards/)
---

| Why use animations? | Example | 
| --------------- | --------------- | 
| Delight and playfulness (Duolingo)    | ![Duolingo animation](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/1-delightDuolingo.gif)    | 
| State change: Hamburger to close icon    | ![**amburger to close icon**](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/2-stateChange.gif)    | 
| Draw user’s attention    | ![Draw attention](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/3-attentionStitch.gif)    | 
---
|  🧑‍🦯 Guidance: Replace telling with showing   | ![Guidance animation](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/4-guideUsers.gif)    | 
---


## Build your animations with:

- **Symbols, Phase, Keyframe, Spring**:

![Animation types](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/7-animationTypes.gif)

---


| Types of Animations    | Example    |  
| --------------- | --------------- | 
| Programmatically initiated**: Loading (where the fun starts)    |![Loading animation](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/6-loading.gif)    | 
| User initiated: Gestural-based    | ![](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/5-userInitiated.gif)    | 

## How add your animations

**Implicit animation: .animation**:

```swift
import SwiftUI

struct Implicit: View {
    @State private var starting = false
    @State private var ending = false
    @State private var rotating = false
    
    var body: some View {
        
        VStack {
            Circle()
                .trim(from: starting ? 1/3 : 1/9, to: ending ? 2/5 : 1)
                .stroke(style: StrokeStyle(lineWidth: 3, lineCap: .round))
                .animation(.easeOut(duration: 1).delay(0.5).repeatForever(autoreverses: true), value: starting)
                .animation(.easeInOut(duration: 1).delay(1).repeatForever(autoreverses: true), value: ending)
                .frame(width: 50, height: 50)
                .rotationEffect(.degrees(rotating ? 360 : 0))
                .animation(.linear(duration: 1).repeatForever(autoreverses: false), value: rotating)
                .accessibilityLabel("Loading Animation")
                .onAppear {
                    starting.toggle()
                    rotating.toggle()
                    ending.toggle()
                }
            
            Image(.bmcLogo)
        } //
    }
}

#Preview {
    Implicit()
}
```
---

**Explicit animation: withAnimation()**:

```swift
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
```
---

**The implicit and explicit code samples above result in the same animation**

![Loading animation](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/6-loading.gif)


## How things move

- Standard Easing: default, linear, easeIn, easeOut, easeInOut 
- Timing Curves (custom): easeInOutBack
- Springs: bouncy, smooth, snappy. Visit [Purposeful SwiftUI Animation](https://github.com/GetStream/purposeful-ios-animations) to learn more.
--

## What animations/motion may be distractive?

- **Frequent particle animations:** Rain, clouds, slowly moving stars, thunder
- **Parallax: Multi-speed & multi-direction** (can cause mismatch)
- **UIMotionEffect**: Creates a perception of depth
- Fun to use but can be disorienting
- Can cause motion sickness
- **Persistent background and foreground effects**: Stars and clouds

| What animations/motion may be distractive?    | Example    |
| --------------- | --------------- | 
| Rain, clouds, slowly moving stars, thunder    | ![Weather animations](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/8-rainMain.gif)    | 
| Parallax: Multi-speed & multi-direction    | ![Parallax](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/9-odio.gif)    | 
| Zooming and scaling animations: App icon throwing animation on iOS    | ![Zooming](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/20-appIconZoom.gif)    | 
| Spinning or rotating effects    | ![Spinning](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/11-spinningRotationEffect.gif)    | 
| Bouncy & swoopy effects    | ![Swoopy effects](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/12-telegramReactions.gif)    | 
| Bouncing & wave-like movement    | ![Bouncing & wave-like movement](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/13-bouncingWaveLike.gif)    | 
| Animating depth changes: Z-axis layers and multi-axis. Card flip animation    | ![depth changes](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/14-cardFlip.gif)    |
| Multi-sliding animations: Moving in the opposite direction to the user’s scroll direction    | ![Multi-sliding animations](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/15-pragmaSite.gif)    |
| Intense Animations: Glitching and flicking effects.
Example: HoloVista    | ![Intense Animations](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/16-intenseGlitchHolovista.gif)    |
| Blinking animation: Can cause epileptic episodes    | ![Blinking animation](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/17-telegramBlinking.gif)    |
---

## Guide 1:** Pause, Play, Hide

- **Autoplaying GIFs and videos**: show play/
- pause buttons
- **Background animations:** Hide buttons
- **Animated illustration**: Play/pause controls
- (**looping more than 5x**)

![Pause, Play, Hide](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/18-playPaause.gif)
---

## Guide 2: Don’t blink/flash more than 3 in 1 sec

- **People with visual disabilities**: Distracting and not useful
- **Blinking**: Can cause seizures
- **Great example**: iOS Screen recording animation (Dynamic Island)
- **Replace flashing**: With varieties of SF Symbol animations to convey information
---

## Guide 3: User-initiated animations

- Provide a way to disable animations
- **Great example**: Animated bouncy reactions in Telegram

![User-initiated animations](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/5-userInitiated.gif)
---

## Reduce Motion: General Settings

- Provide unnoticeable or reduced behavior for animations
- Does not mean removing all animations
- **GIFs and videos**: Use image image-switching technique
- **App Store:** Horizontal card scrolling animation

![scrolling animation](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/19-appStoreScroll.gif)
---

## Reduce Motion: General Settings

- **Settings App:** limit animations/motion in all apps
- **Scaling and zooming animation**: Throwing animation of launching an iOS app icon

![Scaling and zooming animation](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/10-appZoomRM.gif)
---

## Reduce Motion: Prefer Cross-Fade (iOS 14)

- What?: SwiftUI NavigationLink -> Cross-fade transition
- **Push segues with slide-in/out animations**: UIs appearing/disappearing

![Prefer Cross-Fade](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/21-preferCrossFadeNoRM.gif)

```swift
NavigationLink {
                    PreJoinScreen()
                } label: {
                    VStack(alignment: .leading) {
                        HStack {
                            Image(systemName: "person.circle.fill")
                                .font(.title2)
                            Spacer()
                            Image(systemName: "ellipsis")
                                .rotationEffect(.degrees(90))
                        }
                        
                        Spacer()
                        
                        Text("New Meeting")
                    }
                    .padding()
                    .frame(width: 160, height: 160)
                    .background(.ultraThinMaterial)
                    .cornerRadius(20)
                }
```

---

## Reduce Motion: Prefer Cross-Fade (iOS 14)

- **When to use**: When there is no suitable replacement animation

![ Prefer Cross-Fade ](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/23-crossFade.gif)
---

## Reduce Motion:** Prefer Cross-Fade (iOS 14)

- **Enabled**: Replaces sliding transitions with a subtle fade
- **Use NavigationLink** to get it for free
- **Example**: Settings App

![Prefer Cross-Fade](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/22-preferCrossFadeRM.gif)
---

## Reduce Motion: Per-app Settings

- **Settings App:** Remove some animations for specific apps
- **App Store**: Autoplay animated images and video previews
- **Example:** Downloading Headspace

![Headspace animation](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/24-headSpaceAppstore.gif)
---

# Accessible & Inclusive Animations

- **Stitch Game:** Solve number puzzles by filling out patterns
- **Reduce Motion enabled**: Disables all sudden movements

![Reduce Motion enabled](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/25-stitchRM.gif)
---

## Use Motion: In-app Settings

- **Use Motion:** In-app Settings
- **Reduce Motion**: Does not stop all problematic animations
- Control what should stop and not
- **Great example**: PCalc

**Reduce Motion Off**

![PCalc animation](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/26-pCalc1.gif)

**Reduce Motion On**

![PCalc animation](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/26-pCalc2.gif)
---

## Adopting Reduce Motion

- **Bouncy Transition**: Reduce Motion Off

```swift

//
//  ReduceMotionAnimationNil.swift
//  Hamburger to Close
//

import SwiftUI

struct ReduceMotionAnimationSubtleFeel: View {
    
    @State private var isRotating = false
    @State private var isHidden = false
    
    // Reduce Motion On
    let subtleFeel = Animation.snappy
    
    // Reduce Motion OFF
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
        .accessibilityLabel("Menu and close icon transition")
        .onTapGesture {
            withAnimation(reduceMotion ? subtleFeel : bouncyFeel) {
                isRotating.toggle()
                isHidden.toggle()
            }
        }
        
    }
}

#Preview {
    ReduceMotionAnimationSubtleFeel()
        .preferredColorScheme(.dark)
}
```

![Bouncy Transition](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/26-bouncyFeel.gif)
---

## Adopting Reduce Motion

- **Alternative animation duration**: Short enough to make it unnoticeable (**0 sec**)
- **Remove animation** altogether: nil

```swift

//
//  ReduceMotionAnimationNil.swift
//  Hamburger to Close
//

import SwiftUI

struct ReduceMotionAnimationNil: View {
    
    @State private var isRotating = false
    @State private var isHidden = false
    
    // Reduce Motion On
    let subtleFeel = Animation.snappy
    
    // Reduce Motion OFF
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
        .accessibilityLabel("Menu and close icon transition")
        .onTapGesture {
            withAnimation(reduceMotion ? nil : bouncyFeel) {
                isRotating.toggle()
                isHidden.toggle()
            }
        }
        
    }
}

#Preview {
    ReduceMotionAnimationSubtleFeel()
        .preferredColorScheme(.dark)
}
```

![Remove animation altogether](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/28-reduceMotionNil.gif)
---

## Adopting Reduce Motion

- Provide an alternative **reduced behavior**
- **Example**: Switch a bouncy hamburger/close icon with a gentle one

```swift

//
//  ReduceMotionAnimationNil.swift
//  Hamburger to Close
//

import SwiftUI

struct ReduceMotionAnimationSubtleFeel: View {
    
    @State private var isRotating = false
    @State private var isHidden = false
    
    // Reduce Motion On
    let subtleFeel = Animation.snappy
    
    // Reduce Motion OFF
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
        .accessibilityLabel("Menu and close icon transition")
        .onTapGesture {
            withAnimation(reduceMotion ? subtleFeel : bouncyFeel) {
                isRotating.toggle()
                isHidden.toggle()
            }
        }
        
    }
}

#Preview {
    ReduceMotionAnimationSubtleFeel()
        .preferredColorScheme(.dark)
}
```

![Provide an alternative reduced behavio](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/29-reduceMotionSubtle.gif)
---

## Adopting Reduce Motion

- **Setting animation duration** to 0

```swift

//
//  ReduceMotionDurationZero.swift
//  Hamburger to Close
//

import SwiftUI

struct ReduceMotionDurationZero: View {
    
    @State private var isRotating = false
    @State private var isHidden = false
    
    // Reduce Motion On
    let durationZero = Animation.snappy(duration: 0)
    
    // Reduce Motion OFF
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
        .accessibilityLabel("Menu and close icon transition")
        .onTapGesture {
            withAnimation(reduceMotion ? durationZero : bouncyFeel) {
                isRotating.toggle()
                isHidden.toggle()
            }
        }
        
    }
}

#Preview {
    ReduceMotionDurationZero()
        .preferredColorScheme(.dark)
}
```

![Setting animation duration to 0](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/27-reduceMotion0.gif)
---

## Animation Description and VoiceOver

- **Test animations**: Ask Siri to “Turn on VoiceOver.”
- Hide decorative decorative animations

![VoiceOver testing](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/30-voiceOverOff.gif)
---

## VoiceOver: Animation Without a Label

- **Navigate** with a swipe gesture
- **VoiceOver** skips the animation

```swift
Circle()
    .trim(from: starting ? 1/3 : 1/9, to: ending ? 2/5 : 1)
    .stroke(style: StrokeStyle(lineWidth: 3, lineCap: .round))
    .frame(width: 50, height: 50)
    .rotationEffect(.degrees(rotating ? 360 : 0))
    .onAppear {
        withAnimation(.linear(duration: 1).repeatForever(autoreverses: false)) {
            rotating.toggle()
        }
                    
        withAnimation(.easeOut(duration: 1).delay(0.5).repeatForever(autoreverses: true)) {
            starting.toggle()
        }
    }
```

![Animation Without a Label](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/31-voiceOverOn.gif) 

Checkout the sound version on [Vimeo](#)
---

## VoiceOver: Animation With a Label

- Add labels for animations that have meaning

```swift
Circle()
    .trim(from: starting ? 1/3 : 1/9, to: ending ? 2/5 : 1)
    .stroke(style: StrokeStyle(lineWidth: 3, lineCap: .round))
    .frame(width: 50, height: 50)
    .rotationEffect(.degrees(rotating ? 360 : 0))
    .accessibilityLabel("Loading Animation")
    //.accessibilityAddTraits()
    .accessibilityValue("Animation")
    .onAppear {
        withAnimation(.linear(duration: 1).repeatForever(autoreverses: false)) {
            rotating.toggle()
        }
                    
        withAnimation(.easeOut(duration: 1).delay(0.5).repeatForever(autoreverses: true)) {
            starting.toggle()
        }
    }
```

![Animation With a Label](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/31-voiceOverOn.gif) 

Checkout the sound version on [Vimeo](#)
---

## **Adding Haptic Feedback To Animations**

- **Mimicking physical touch and drag**:
- **Example**: Stitch

![Mimicking physical touch and drag](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/3-attentionStitch.gif)
---

## Adding Haptic Feedback To Animations

- **Silent Mode On:** Emulate the absence of sound

- **Example**: Reporting an incoming or outgoing call

![Outgoing call animation](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/outgoingCall.gif)
---

## Follow the Basic Accessibility Guidelines

- **Screen flashing** can cause headaches and seizure
- **Provide similar visual effects** without requiring motion
- Excessive motion can cause **discomfort**, **dizziness**
- **Example**: Parallax, sliding animations

## Wrap Up

- Be mindful of motion usage
- **Prefer using NavigationLink**: Avoid custom slide transitions
- **Reduce Motion:** Provide options to limit ****animation and motion effects
- **Is VoiceOver enabled?** Think of how you can clearly translate animations
- Spent time on what can be dizzying/jarring
- Use subtle **motion effects**
- Can **this animation** cause discomfort?
- How can people with **motion sensitivities** enjoy my app?
- What if the user’s **reduced motion** setting is on?
- Will **springiness/bounciness** feel out of place?

## Where To Go From Here?

- [Apple Design Awards: Inclusivity Winners](https://developer.apple.com/design/awards/)
- [Apple Human Interface: Accessibility](https://developer.apple.com/design/human-interface-guidelines/accessibility)
- [Accessibility: Apple Developer Videos](https://developer.apple.com/videos/all-videos/?q=Accessibility)
- [Responsive Design For Motion](https://webkit.org/blog/7551/responsive-design-for-motion/)
- [Playing Haptics](https://developer.apple.com/design/human-interface-guidelines/playing-haptics)
- [Motion Sickness](https://source.opennews.org/articles/motion-sick/)
- [What Parallax Lacks](https://www.nngroup.com/articles/parallax-usability/#:~:text=Summary%3A%20Parallax%2Dscrolling%20effects%20add,benefits%20are%20worth%20the%20cost.)
- [Why iOS 7 Making Some People Sick](https://www.theguardian.com/technology/2013/sep/27/ios-7-motion-sickness-nausea)
- [Your Phone Will Never Throw You Up Anymore](https://www.buzzfeednews.com/article/charliewarzel/ios-7s-motion-sickness-problem-isnt-going-away)
- [Apple Accessibility: YouTube](https://www.youtube.com/playlist?list=PLIl2EzNYri0cLtSlZowttih25VnSvWITu)
- [Motion Sensitivity](https://alistapart.com/article/designing-safer-web-animation-for-motion-sensitivity/)
- [Play, Pause, Hide](https://www.w3.org/WAI/WCAG21/Understanding/pause-stop-hide.html)
- [Vestibular Disorder](https://www.a11yproject.com/posts/understanding-vestibular-disorders/, https://vestibular.org/article/what-is-vestibular/)

