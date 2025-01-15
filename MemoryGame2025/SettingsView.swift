//
//  SettingsView.swift
//  MemoryGame2025
//
//  Created by IMD 224 on 2025-01-15.
//

import SwiftUI

import SwiftUI

struct SettingsView: View {
    let theSun: [String]
    
    @AppStorage("currentIndex") private var currentIndex = 0
    @AppStorage("numberOfRows") private var rows = 2
    @AppStorage("numberOfColumns") private var columns = 2
    @AppStorage("bonusTileEnabled") private var bonusTileEnabled = false
    
    // For navigating back
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack(spacing: 30) {
            ImagePickerView(images: theSun, currentIndex: $currentIndex)
            
            Stepper("Rows: \(rows)", value: $rows, in: 2...10)
                // .tint(.red)   -> Changes the plus/minus buttons color
                .padding(.horizontal)
            Stepper("Columns: \(columns)", value: $columns, in: 2...10)
                .padding(.horizontal)
            
            Toggle("Bonus Tile", isOn: $bonusTileEnabled)
                .padding(.horizontal)
            Spacer()
        }
        .padding()
        .navigationTitle("Settings")
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "house")
                }
            }
        }
    }
}

//#Preview {
//    SettingsView()
//}
