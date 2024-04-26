//
//  DetailView.swift
//  SwiftUI-Study
//
//  Created by Sreekutty Maya on 26/04/2024.
//

import SwiftUI

struct DetailView: View {
    var number: Int

    var body: some View {
        NavigationLink("Go to Random Number", value: Int.random(in: 1...1000))
            .navigationTitle("Number: \(number)")
    }
}

#Preview {
    DetailView(number: 10)
}
