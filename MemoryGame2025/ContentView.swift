//
//  ContentView.swift
//  MemoryGame2025
//
//  Created by IMD 224 on 2025-01-09.
//

import SwiftUI

struct ContentView: View {
    let theSun = ["sun.max", "cloud.sun", "cloud", "cloud.rain"]
    @AppStorage("currentIndex") private var currentIndex = 0
    
    var body: some View {
        NavigationStack {
            ZStack {
                // Color.white.ignoresSafeArea()
                Color.gray.ignoresSafeArea()
                
                Image(systemName: theSun[currentIndex])
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .background(Color.pink)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: SettingsView(theSun: theSun)) {
                        Image(systemName: "gearshape")
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
