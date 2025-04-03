//
//  ContentView.swift
//  Demo
//
//  Created by isogai on 2025/04/03.
//
import MyLibrary

import SwiftUI
import Foundation

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(dates.map { String(Int($0.timeIntervalSince1970)) }.joined(separator: "\n"))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

let dates = [
    date(offset: 0),
    date(offset: 59),
    date(offset: 60),
    date(offset: 61),
    date(offset: -59),
    date(offset: -60),
    date(offset: -61),
]
