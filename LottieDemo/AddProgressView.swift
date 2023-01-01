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

struct AddProgressView: View {
    @State private var inProgress = false
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    Text("Custom progress")
                    Button("Start Process") {
                        inProgress.toggle()
                        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                            withAnimation {
                                inProgress.toggle()
                            }
                        }
                    }
                    .buttonStyle(.bordered)
                    Spacer()
                    
                }
                .disabled(inProgress)
                if inProgress {
                    LottiePlusView(name: Constants.politeChicky,
                               loopMode: .loop)
                    .frame(width: 250)
                    
                }
            }
            .navigationTitle("Custom Progress")
        }
    }
}

struct SimpleView_Previews: PreviewProvider {
    static var previews: some View {
        AddProgressView()
    }
}
