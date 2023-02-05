//
//  ContentView.swift
//  HelloWorld
//
//  Created by Frankie Yeung on 19/1/2023.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    let synthesizer = AVSpeechSynthesizer()
    @State private var word: String = ""
    
    var body: some View {
        VStack {
            
            Text ("English Pronunciation App"
            )
            .font(.system(size: 32))
            
            TextField (
                "Input a word",
            text: $word
                
            )
            .padding()
            .foregroundColor(.white)
            .background(Color.purple)
            .cornerRadius(20)
            
            Button {
                
                speak(text: word)
                
            } label: {
                Text("Listen Pronunciation")
                    .fontWeight(.bold)
                    .font(.system(.title, design: .rounded))
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.purple)
            .cornerRadius(20)
            
        }
    }
        
        
        func speak(text: String) {
            let word = AVSpeechUtterance(string: text)
            word.voice = AVSpeechSynthesisVoice(language: "en-US")
            synthesizer.speak(word)
        }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
