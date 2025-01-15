//
//  ImagePickerView.swift
//  MemoryGame2025
//
//  Created by IMD 224 on 2025-01-15.
//

import SwiftUI

struct ImagePickerView: View {
    let images: [String]
    
    // Which image is currently selected
    @Binding var currentIndex: Int
    
    var body: some View {
        HStack {
            // Left Button
            Button(action: {
                currentIndex = (currentIndex - 1 + images.count) % images.count
            }) {
                Image(systemName: "arrowtriangle.left")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
            }
            
            // Image
            Image(systemName: images[currentIndex])
                .font(.system(size: 100))
                .foregroundColor(.green)
                .padding(.horizontal)
            
            // Right Button
            Button(action: {
                currentIndex = (currentIndex + 1) % images.count
            }) {
                Image(systemName: "arrowtriangle.right")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
            }
        }
    }
}

//#Preview {
//    ImagePickerView()
//}
