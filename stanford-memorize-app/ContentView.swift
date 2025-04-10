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
    var isFaceUp: Bool = false// every value in a struct must have a value when the struct is created
    var body: some View {
        ZStack { //trailing closure syntax, zstack is a struc behaves like a view
            var base: RoundedRectangle = RoundedRectangle(cornerRadius: 12)
            // we cannot do anythig else exept vars , ifs and lists
            var x: Int = 1
            x = x + 1
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text("👀").font(.largeTitle )
            } else {
                base.fill() //default behavior is fill that is why we don't need to add fill
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
