//
//  ContentView.swift
//  XcodeCloudTesting
//
//  Created by Daniel Hall  on 1/11/24.
//

import SwiftUI

struct ContentView: View {
    @State var count = 0
    var body: some View {
        VStack {
            Text("Tap Count: \(count)").font(.title)
            Button("Increment") { count += 1 }
                .buttonStyle(.borderedProminent)
                .padding(.top, 30)
                .accessibilityIdentifier("incrementButton")
            Button("Decrement") { count -= 1 }
                .buttonStyle(.borderedProminent)
                .padding()
                .accessibilityIdentifier("decrementButton")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
