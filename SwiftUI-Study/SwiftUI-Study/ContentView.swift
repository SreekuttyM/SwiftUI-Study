//
//  ContentView.swift
//  SwiftUI-Study
//
//  Created by Sreekutty Maya on 26/04/2024.
//

import SwiftUI

struct ContentView: View {
    var number: Int = 0

       var body: some View {
//           NavigationStack {
//               List(0..<1000) { i in
//                   NavigationLink("Tap Me") {
//                       Text("\(i)")
//                   }
//               }
//           }
           NavigationStack {
               List(0..<100) { i in
                   NavigationLink("Select \(i)", value: i)
               }
               .navigationDestination(for: Int.self) { selection in
                   Text("You selected \(selection)")
               }
           }
       }

       init(number: Int) {
           self.number = number
           print("Creating detail view \(number)")
       }
}

#Preview {
    ContentView(number: 324)
}
