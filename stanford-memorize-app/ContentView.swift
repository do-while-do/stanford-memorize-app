//
//  ContentView.swift
//  stanford-memorize-app
//
//  Created by Mo Bo on 31/03/2025.
//

import SwiftUI

struct ContentView: View {
    let emojis: [String] = [
        "👀", "🥰", "😉", "❤️", "🎶", "😁", "😎", "🥸", "😈", "😇", "🥶", "😶‍🌫️",
    ]
    @State var cardCount: Int = 4
    var body: some View {
        VStack {
            ScrollView {
                cards
            }
            Spacer()
            cardCountAdjusters
        }
        .padding()
    }

    var cards: some View {
        //VStack uses as much space as it can, LazyGrid uses as less space as it an have.
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 120))]) { //adaptive grid items that take a size
            ForEach(0..<cardCount, id: \.self) {
                index in  //arguments to closures
                CardView(content: emojis[index]).aspectRatio(2/3,contentMode: .fit)
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

    func cardCountAdjuster(by offset: Int, symbol: String) -> some View {
        Button(
            action: {  //normal code, not e view
                cardCount = cardCount + offset
            },
            label: {  // this is a view builder
                Image(systemName: symbol)
            }
        ).disabled(cardCount + offset < 1 || cardCount + offset > emojis.count)
    }

    var cardRemover: some View {
        return cardCountAdjuster( //we can implicit return here
            by: -1,
            symbol: "rectangle.stack.badge.minus.fill"
        )
    }

    var cardAdder: some View {
        return cardCountAdjuster(
            by: +1,
            symbol: "rectangle.stack.badge.plus.fill"
        )
    }
}

struct CardView: View {
    let content: String
    @State var isFaceUp = true
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            // opacity versus if-else in view builder
            Group {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            }
            .opacity(isFaceUp ? 1:0)
            base.fill().opacity(isFaceUp ? 0:1)
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

func testFunctionForGreeting(name_of person: String?, on_this day: Date) -> String
{
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
