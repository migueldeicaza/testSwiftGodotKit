//
//  ContentView.swift
//  testSwiftGodotKit
//
//  Created by Miguel de Icaza on 11/3/24.
//

import SwiftUI
import SwiftGodot
import SwiftGodotKit

struct ContentView: View {
    @State var app = GodotApp(packFile: "game.pck")

    var body: some View {
        VStack {
            Text("Game is below:")
            GodotAppView(app: app)
                .padding()
        }
    }
}

#Preview {
    ContentView()
}
