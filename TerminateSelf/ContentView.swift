//
//  ContentView.swift
//  TerminateSelf
//
//  Created by 伊藤宏樹 on 2021/12/04.
//

import SwiftUI
import Darwin

struct ContentView: View {
    var body: some View {
        VStack {
            VStack {
                Text("🦁Terminate self by ...👻")
                    .padding()
                Button("☠️calling abort()", action: {
                    abort()
                }).padding()
                .accentColor(Color.white)
                .background(Color.red)
                .cornerRadius(10)
                .shadow(color: Color.pink, radius: 5, x: 0, y: 5)
                Button("🍽consuming much memory", action: {
                    var buf:[UInt8] = []
                    buf.reserveCapacity(Int.max)
                 }).padding()
                .accentColor(Color.white)
                .background(Color.red)
                .cornerRadius(10)
                .shadow(color: Color.pink, radius: 5, x: 0, y: 5)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
                .previewDisplayName("iPhone 12")
        }
    }
}
