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
        HStack {
            VStack {
                Text("Game is below:")
                GodotAppView()
                    .padding()
            }
            VStack {
                Text("An embedded Godot window, with custom code")
                GodotWindow { (subwindow: Window) -> () in
                    let ctr = VBoxContainer()
                    ctr.setAnchorsPreset(Control.LayoutPreset.fullRect)
                    subwindow.addChild(node: ctr)
                    
                    let button1 = Button()
                    button1.text = "SubWindow 1"
                    let button2 = Button()
                    button2.text = "Another Button"
                    ctr.addChild(node: button1)
                    ctr.addChild(node: button2)
                }
            }
        }
        .environment(\.godotApp, app)
    }
}

#Preview {
    ContentView()
}
