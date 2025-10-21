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
            Spacer()
            Button("Press Me!") {
                let awesomeMessage = "You are Awesome!"
                let awesomeImage = "image0"
                let greatMessage = "You are Great!"
                let greatImage = "image1"
                message = (message == awesomeMessage ? greatMessage : awesomeMessage)
                imageName = (imageName == awesomeImage ? greatImage : awesomeImage)
//                if (message == awesomeMessage) {
//                    message = greatMessage
//                    imageName = greatImage
//                } else {
//                    message = awesomeMessage
//                    imageName = awesomeImage
//                }
            }
            .buttonBorderShape(.roundedRectangle)
            .buttonStyle(.borderedProminent)
            .font(.title2)
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
