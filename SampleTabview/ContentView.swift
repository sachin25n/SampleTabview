//
//  ContentView.swift
//  SampleTabview
//
//  Created by Sachin Shinde on 03/06/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = "One"
    var body: some View {
        ScrollView {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            }
            .padding()
            
            TabView(selection: $selectedTab) {
                Text("Of course, just using “One” and “Two” isn’t ideal – those values are fixed and so it solves the problem of views being moved around, but they aren’t easy to remember")
                    .padding()
                    .background(Color.gray)
                
                Text("Now for the interesting part: when we say selectedTab = how does SwiftUI know which tab that represents? You might think that the tabs could be treated as an array, in which case the second tab would be at index 1, but that causes all sorts of problems: what if we move that tab to a different position in the tab view?")
                    .padding()
                    .background(Color.gray)
                
                Text("This is A Very Bad Idea, and so SwiftUI offers a better solution: we can attach a unique identifier to each view, and use that for the selected tab. These identifiers are called tags, and are attached using the")
                    .padding()
                    .background(Color.gray)
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .frame(height: 100)
            
        }
        
    }
}

#Preview {
    ContentView()
}
