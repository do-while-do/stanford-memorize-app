//
//  ContentView.swift
//  stanford-memorize-app
//
//  Created by Mo Bo on 31/03/2025.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack(alignment: .leading){
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.orange)
            Text("Hello, world!")
            Text(testFunctionForGreating(name_of: "Momchil", on_this: Date()))
        }
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
