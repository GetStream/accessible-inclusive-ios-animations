
# Accessible and Inclusive iOS/SwiftUI Animation/Motion Cheatsheet For Developers 
## Animations and motion can be dizzying for some app users. Let's fix that with these practical examples and following the motion accessibility guidelines outlined in this repo. Do you see something else? Contact [@amos_gyamfi](@amos_gyamfi) and [@stefanjblos](@stefanjblos) on Twitter. 

![Accessible and inclusive iOS animations](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/animationsTalk.gif)

## **Resources we have**

- **Apple Developer Videos**: [Accessibility]()
- **HIG**: [Accessibility]()
- **WCAG**: [Motion specific section]()
- **Apple Design Awards**: [Inclusion section]()
---

## **Why use animations?**
- **Delight and playfulness (Duolingo)**
![Duolingo animation]([https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/1-delightDuolingo.gif](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/1-delightDuolingo.gif))

---

- **State change: Hamburger to close icon**

![**amburger to close icon**]([https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/2-stateChange.gif](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/2-stateChange.gif))

---

**‼ Draw user’s attention**

![Draw attention]([https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/3-attentionStitch.gif](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/3-attentionStitch.gif))

---

- **Guidance: Replace telling with showing**

![**Guidance**]([https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/4-guideUsers.gif](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/4-guideUsers.gif))

---

## Types of Animations

- **Programmatically initiated**: Loading (where the fun starts)

![Loading animation]([https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/6-loading.gif](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/6-loading.gif))

---

### How to build your animations

- **Symbols, Phase, Keyframe, Spring**:

![Animation types]([https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/7-animationTypes.gif](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/7-animationTypes.gif))

---

## **What animations/motion may be distractive?**

- **Frequent particle animations:** Rain, clouds, slowly moving stars, thunder
- **Parallax: Multi-speed & multi-direction** (can cause mismatch)
- **UIMotionEffect**: Creates a perception of depth
- Fun to use but can be disorienting
- Can cause motion sickness
- **Persistent background and foreground effects**: Stars and clouds

![Weather animations]([https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/8-rainMain.gif](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/8-rainMain.gif))

---

- **Zooming and scaling animations**: App icon throwing animation on iOS

![**Zooming and scaling animation**]([https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/10-appZoomRM.gif](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/10-appZoomRM.gif))

---

- **Spinning or rotating effects**

![**Spinning or rotating effects**]([https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/11-spinningRotationEffect.gif](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/11-spinningRotationEffect.gif))

---

- **Bouncy & swoopy effects**: Reactions in Telegram

![**Bouncy & swoopy effects**]([https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/12-telegramReactions.gif](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/12-telegramReactions.gif))

---

- **Bouncing & wave-like movement**

![**Bouncing & wave-like movement**]([https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/13-bouncingWaveLike.gif](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/13-bouncingWaveLike.gif))

---

- **Animating depth changes**: Z-axis layers and multi-axis
- **Edit Widgets:** Card flip animation

![]()

---

- **Multi-sliding** animations
- Moving in the **opposite direction** to the user’s scroll direction

![**Multi-sliding** animations]([https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/15-pragmaSite.gif](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/15-pragmaSite.gif))

---

- **Intense Animations**: Glitching and flicking effects

**Example**: HoloVista

![]()

---

- **Blinking animation**: Can cause epileptic

episodes

![**Blinking animation**]([https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/17-telegramBlinking.gif](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/17-telegramBlinking.gif))

---

## **Guide 1:** Pause, Play, Hide

- **Autoplaying GIFs and videos**: show play/
- pause buttons
- **Background animations:** Hide buttons
- **Animated illustration**: Play/pause controls
- (**looping more than 5x**)

![Pause, Play, Hide]([https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/18-playPaause.gif](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/18-playPaause.gif))

---

## **Guide 2:** Don’t **blink/flash** more than 3 in 1 sec

- **People with visual disabilities**: Distracting and not useful
- **Blinking**: Can cause seizures
- **Great example**: **iOS** **Screen recording animation**

(Dynamic Island)

- **Replace flashing**: Varieties of SF Symbol animations to

convey information

![]()

---

## **Guide 3:** User-initiated animations

- Provide a way to disable animations
- **Great example**: Animated bouncy reactions in Telegram

![User-initiated animations]([https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/5-userInitiated.gif](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/5-userInitiated.gif))

---

## **Reduce Motion:** General Settings

- Provide unnoticeable or reduced behavior
- Not removing all animations
- **GIFs and videos**: Use image image-switching

technique

- **App Store:** Horizontal card scrolling animation

![scrolling animation]([https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/19-appStoreScroll.gif](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/19-appStoreScroll.gif))

---

## **Reduce Motion:** General Settings

- **Settings App:** limit animations/motion in all apps
- **Scaling and zooming animation**: Throwing animation of launching an iOS app icon

![**Scaling and zooming animation**]([https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/10-appZoomRM.gif](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/10-appZoomRM.gif))

---

## **Reduce Motion:** Prefer Cross-Fade (iOS 14)

- **What?:** SwiftUI NavigationLink **-** Cross-fade transition
- **Push segues with slide-in/out animations**: UIs appearing/disappearing

![Prefer Cross-Fade]([https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/21-preferCrossFadeNoRM.gif](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/21-preferCrossFadeNoRM.gif))

---

## **Reduce Motion:** Prefer Cross-Fade (iOS 14)

- **When to use**: When there is no suitable replacement animation

![ ****Prefer Cross-Fade ]([https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/23-crossFade.gif](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/23-crossFade.gif))

---

## **Reduce Motion:** Prefer Cross-Fade (iOS 14)

- **Enabled**: Replaces sliding transitions with a subtle fade
- **Use NavigationLink** to get it for free
- **Example**: Settings App

![Prefer Cross-Fade]([https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/22-preferCrossFadeRM.gif](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/22-preferCrossFadeRM.gif))

---

## **Reduce Motion:** Per-app Settings

**Settings App:** Remove some animations for

specific apps

**App Store**: Autoplay animated images and video

previews

**Example:** Downloading Headspace

![Headspace animation]([https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/24-headSpaceAppstore.gif](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/24-headSpaceAppstore.gif))

---

# **A c c e s s i b l e + I n c l u s i v e A n i m a tions**

- **Stitch Game:** Solve number puzzles by filling out patterns
- **Reduce Motion enabled**: Disables all sudden movements

![**Reduce Motion enabled**:]([https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/25-stitchRM.gif](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/25-stitchRM.gif))

---

## **Use Motion:** In-app Settings

- **Use Motion:** In-app Settings
- **Reduce Motion**: Does not stop all problematic animations
- Control what should stop and not
- **Great example**: PCalc

![PCalc animation]([https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/26-pCalc1.gif](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/26-pCalc1.gif))

---

![PCalc animation]([https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/26-pCalc2.gif](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/26-pCalc2.gif))

---

## **Checking Reduce Motion**

## **Adopting Reduce Motion**

- **Bouncy Transition**: Reduce Motion Off

![**Bouncy Transition**]([https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/26-bouncyFeel.gif](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/26-bouncyFeel.gif))

---

## **Adopting Reduce Motion**

- **Alternative animation duration**: Short enough to make it unnoticeable (**0 sec**)
- **Remove animation** altogether: nil

![**Remove animation** altogether]([https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/28-reduceMotionNil.gif](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/28-reduceMotionNil.gif))

---

## **Adopting Reduce Motion**

- Provide an alternative **reduced behavior**
- **Example**: Switch a bouncy hamburger/close icon with a gentle one

![Provide an alternative **reduced behavio**]([https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/29-reduceMotionSubtle.gif](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/29-reduceMotionSubtle.gif))

---

## **Adopting Reduce Motion**

- Setting animation duration to 0

![Setting animation duration to 0]([https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/27-reduceMotion0.gif](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/27-reduceMotion0.gif))

---

## VoiceOver

- **Test animations**: Ask Siri to “Turn on VoiceOver.”
- Hide decorative decorative animations

![VoiceOver testing]([https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/30-voiceOverOff.gif](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/30-voiceOverOff.gif))

---

## **VoiceOver: Animation Without a Label**

- **Navigate** with a swipe gesture
- **VoiceOver** skips the animation
- **VoiceOver: Animation With a Label**
- **Add labels** for animations that have

![**Animation Without a Label**]([https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/6-loading.gif](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/6-loading.gif)). [Sound version](#)

---

## **Adding Haptic Feedback To Animations**

- **Mimicking physical touch and drag**:
- **Example**: Stitch

![**Mimicking physical touch and drag**]([https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/3-attentionStitch.gif](https://github.com/GetStream/accessible-inclusive-ios-animations/blob/main/Img/3-attentionStitch.gif))

---

## **Adding Haptic Feedback To Animations**

**Silent Mode On:** Emulate the absence of sound

**Example**: Reporting an incoming or outgoing call

![]()

---

## **Follow basic accessibility guidelines**

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

## **Where to go from here?**

- [Apple Design Awards: Inclusivity Winners](https://developer.apple.com/design/awards/)
- [Apple Human Interface: Accessibility](https://developer.apple.com/design/human-interface-guidelines/accessibility)
- [Apple Developer Videos](https://developer.apple.com/videos/all-videos/)
- [Responsive Design For Motion](https://webkit.org/blog/7551/responsive-design-for-motion/)
- [Playing Haptics](https://developer.apple.com/design/human-interface-guidelines/playing-haptics)
