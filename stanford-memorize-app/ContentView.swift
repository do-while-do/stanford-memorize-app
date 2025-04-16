//
//  ContentView.swift
//  stanford-memorize-app
//
//  Created by Mo Bo on 31/03/2025.
//

import SwiftUI

struct ContentView: View {
    let emojis: Array<String> = ["👀", "🥰", "😉", "❤️","🎶", "😁", "😎", "🥸" ,"😈" ,"😇" ,"🥶" ,"😶‍🌫️"]
    @State var cardCount: Int = 4
    var body: some View {
        VStack {
            cards
            cardCountAdjusters
        }
        .padding()
    }
    
    var cards: some View {
        // we do not have return before HStack because it is implicit return there is not need to place return there but we can
        // it it implicit return because it is one line of code, HStack and a modifier
        HStack {
            ForEach(0..<cardCount, id: \.self) {
                index in //arguments to closures
                CardView(content: emojis[index])
            }
        }
        .foregroundColor(.orange)
    }
    
    var cardCountAdjusters: some View {
        HStack {
            cardRemover
            Spacer()
            cardAdder
        }
        .imageScale(.large)
        .font(.largeTitle)
    }
    
    func cardCountAdjuster(){
        
    }
    
    var cardRemover: some View {
        Button(action: {//normal code, not e view
            if cardCount > 1 {
                cardCount = cardCount - 1
            }
            
        }, label: { // this is a view builder
            Image(systemName: "rectangle.stack.badge.minus.fill")
        })
    }
    
    var cardAdder: some View {
        Button(action: {//normal code, not e view
            if cardCount < emojis.count {
                cardCount = cardCount + 1
            }
        }, label: { // this is a view builder
            Image(systemName: "rectangle.stack.badge.plus.fill")
        })
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





func testFunctionForGreeting(name_of person:String?, on_this day: Date) ->String{
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
