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
    @State var isFaceUp = false
    var body: some View {// this is a pointer it satisfies that views cannot change but the pointer can change
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
        .onTapGesture { //this closure is not a viewBuilder its normal code and we can have operations in it
//            print("Tapped") //this is a normal function
            isFaceUp = !isFaceUp // views are immutable, so this will not work //Cannot assign to property: 'self' is immutable
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
