//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Jay on 10/12/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    @State private var imageNumber = 0
    @State private var messageNumber = 0
    
    var body: some View {
        
        VStack {
            Spacer()
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)
            Spacer()
            Button("Press Me!") {
                let messages: [String] = [
                    "You Are Awesome!",
                    "You Are Great!",
                    "Fabulous? That's You!",
                    "You don't suck. You're awesome! So, so awesome",
                    "You look fabulous!",
                    "Didn't I see you on TV?",
                    "Dingie Dan.",
                    "Mo Betta",
                    "No yo didnt",
                    "Yo",
                    "Yo, Yo",
                    "Yo, Yo, Yo!"
                ]
                
                message = messages[messageNumber]
                imageName = "image\(imageNumber)"
                imageNumber += 1
                if (imageNumber > 9) { imageNumber = 0  }
                messageNumber += 1
                if (messageNumber >= messages.count) {
                    messageNumber = 0
                }
                print(imageNumber)
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
