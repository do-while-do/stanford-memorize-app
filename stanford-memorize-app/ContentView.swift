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
            ZStack(content: {
    //            Rectangle()//something that behave like a view also behaves like a shape
                RoundedRectangle(cornerRadius: 12).foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12).strokeBorder(lineWidth: 2)
                Text("👀").font(.largeTitle )
    //            Text(testFunctionForGreating(name_of: "Momchil", on_this: Date()))
            })
            ZStack(content: {
    //            Rectangle()//something that behave like a view also behaves like a shape
                RoundedRectangle(cornerRadius: 12).foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12).strokeBorder(lineWidth: 2)
                Text("👀").font(.largeTitle )
    //            Text(testFunctionForGreating(name_of: "Momchil", on_this: Date()))
            })
            ZStack(content: {
    //            Rectangle()//something that behave like a view also behaves like a shape
                RoundedRectangle(cornerRadius: 12).foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12).strokeBorder(lineWidth: 2)
                Text("👀").font(.largeTitle )
    //            Text(testFunctionForGreating(name_of: "Momchil", on_this: Date()))
            })
            ZStack(content: {
    //            Rectangle()//something that behave like a view also behaves like a shape
                RoundedRectangle(cornerRadius: 12).foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12).strokeBorder(lineWidth: 2)
                Text("👀").font(.largeTitle )
    //            Text(testFunctionForGreating(name_of: "Momchil", on_this: Date()))
            })
        }
        .foregroundColor(.orange)
        .padding()
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
