//
// Created for LottieDemo
// by  Stewart Lynch on 2022-12-31
// Using Swift 5.0
// Running on macOS 13.1
// 
// Folllow me on Mastodon: @StewartLynch@iosdev.space
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch


import SwiftUI
import Lottie

struct LottiePlusView: UIViewRepresentable {
    let name: String
    let loopMode: LottieLoopMode
    let animationSpeed: CGFloat
    let contentMode: UIView.ContentMode
    @Binding var play: Bool
    
    let animationView: LottieAnimationView
    
    init(name: String,
         loopMode: LottieLoopMode = .playOnce,
         animationSpeed: CGFloat = 1,
         contentMode: UIView.ContentMode = .scaleAspectFit,
         play: Binding<Bool> = .constant(true)) {
        self.name = name
        self.animationView = LottieAnimationView(name: name)
        self.loopMode = loopMode
        self.animationSpeed = animationSpeed
        self.contentMode = contentMode
        self._play = play
    }
    
    func makeUIView(context: Context) -> UIView {
        let view = UIView(frame: .zero)
        view.addSubview(animationView)
        animationView.contentMode = contentMode
        animationView.translatesAutoresizingMaskIntoConstraints = false
        animationView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        animationView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        animationView.loopMode = loopMode
        animationView.animationSpeed = animationSpeed
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        if play {
            animationView.play { _ in
                play = false
            }
        }
    }

}
