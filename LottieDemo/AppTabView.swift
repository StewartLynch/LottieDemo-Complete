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

struct AppTabView: View {
    var body: some View {
        TabView {
            AddProgressView()
                .tabItem {
                    Label("Progress", systemImage: "hare.fill")
                }
            CelebrationView()
                .tabItem {
                    Label("Celebrate", systemImage: "sun.max.fill")
                }
            LikesView()
                .tabItem {
                    Label("My Likes", systemImage: "heart.fill")
                }
        }
    }
}

struct AppTabView_Previews: PreviewProvider {
    static var previews: some View {
        AppTabView()
    }
}
