//
//  ContentView.swift
//  SwiftUI-Study
//
//  Created by Sreekutty Maya on 26/04/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var pathStore = PathStore()

    var body: some View {
        NavigationStack(path: $pathStore.path) {
            DetailView(number: 0)
                .navigationDestination(for: Int.self) { i in
                    DetailView(number: i)
                }
        }
    }
}

#Preview {
    ContentView()
}
