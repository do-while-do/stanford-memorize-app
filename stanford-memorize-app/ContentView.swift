//
//  ContentView.swift
//  stanford-memorize-app
//
//  Created by Mo Bo on 31/03/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView(isFaceUp: false)
            CardView(isFaceUp: true)
            CardView(isFaceUp: true)
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    var isFaceUp: Bool = false
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12) //Type inferance

            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text("👀").font(.largeTitle )
            } else {
                base.fill()
            }
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
