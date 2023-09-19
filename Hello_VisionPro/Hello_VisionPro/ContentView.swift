//
//  ContentView.swift
//  Hello_VisionPro
//
//  Created by Ganesh on 20/09/23.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Day1")
            Model3D(named: "Scene", bundle: realityKitContentBundle)
                .padding(.bottom, 50)

            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
