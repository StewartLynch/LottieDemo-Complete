//
// Created for LottieDemo
// by  Stewart Lynch on 2022-12-25
// Using Swift 5.0
// Running on macOS 13.1
// 
// Folllow me on Mastodon: @StewartLynch@iosdev.space
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch

import SwiftUI

struct CelebrationView: View {
    @State private var score = 0
    @State private var play = false
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    Button("Can I celebrate") {
                        score = score == 5 ? 0 : (score + 1)
                        print(score)
                        if score == 5 {
                            play = true
                        }
                    }
                    .buttonStyle(.bordered)
                    Text("Score: \(score)")
                }
                .navigationTitle("Celebration")
                LottiePlusView(name: Constants.confetti,
                               animationSpeed: 2,
                               contentMode: .scaleAspectFill,
                               play: $play)
                .id(score)
                .allowsHitTesting(false)
            }
            .ignoresSafeArea()
        }
    }
}

struct CelebrationView_Previews: PreviewProvider {
    static var previews: some View {
        CelebrationView()
    }
}
