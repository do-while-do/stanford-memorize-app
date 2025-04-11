//
//  ContentView.swift
//  stanford-memorize-app
//
//  Created by Mo Bo on 31/03/2025.
//

import SwiftUI

struct ContentView: View {
    let emojis: Array<String> = ["👀", "🥰", "😉", "❤️"]
//  let emojis2: Array<String> = []
//  let emojis3: [String] = []
    var body: some View {
        HStack {
            ForEach(emojis.indices, id: \.self) {
                index in //argumenst to closures
                CardView(content: emojis[index])
            }
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    let content: String
    @State var isFaceUp = true
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)

            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle )
            } else {
                base.fill()
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}





func testFunctionForGreating(name_of person:String?, on_this day: Date) ->String{
    return "Hello \(person ?? "world"), today is \(day)."
}

struct MyTestView: View {
    var body: some View {
        Text("Hello, world!")
    }
}






#Preview {
    ContentView()
    
}
