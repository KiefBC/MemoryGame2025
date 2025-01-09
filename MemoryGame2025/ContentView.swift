//
//  ContentView.swift
//  MemoryGame2025
//
//  Created by IMD 224 on 2025-01-09.
//

import SwiftUI

struct ContentView: View {
    let theSun = ["sun.max", "cloud.sun", "cloud", "cloud.rain"]
    @State private var current = 0
    var body: some View {
        HStack {
            // Left Button
            Button(action: {
                current = (current - 1 + theSun.count) % theSun.count
            }) {
                Image(systemName: "arrowtriangle.left")
                    .font(.system(size: 50))
                    .foregroundColor(.blue)
            }
            
            VStack {
                // Sun... images
                Image(systemName: theSun[current])
                    .font(.system(size: 150))
                    .foregroundColor(.green)
                
                Text("\(theSun[current])")
                    .font(.system(size: 25))
                    .foregroundColor(.green)
            }
                
            
            // Right Button
            Button(action: {
                current = (current - 1 + theSun.count) % theSun.count
            }) {
                Image(systemName: "arrowtriangle.right")
                    .font(.system(size: 50))
                    .foregroundColor(.blue)
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
