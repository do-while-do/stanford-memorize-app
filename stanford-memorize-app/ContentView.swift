//
//  ContentView.swift
//  stanford-memorize-app
//
//  Created by Mo Bo on 31/03/2025.
//

import SwiftUI

struct ContentView: View { // "View" - protocol behaves like a view, behaves like something
    var body: some View {
        //var body is computed property that returns a view
        //"some View"  computed the computed property and returns the check what view it will returns and uses that view as the type
        VStack(alignment: .leading, spacing: 20 ,  content: {
            //Image() - creating instance of a Struct
            //"systemName:" is a named parameter
            //if it is "named" it will look for an assets in the assets folder anmded globe
            Image(systemName: "globe")
                .imageScale(.large) //".imageScale(.large)" is a view modifier
                .foregroundStyle(.orange)
            Text("Hello, world!")//Text() - creating instance of a Struct
            Text(testFunctionForGreating(name_of: "Momchil", on_this: Date()))
        })
        .padding()
    }
}

//
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
