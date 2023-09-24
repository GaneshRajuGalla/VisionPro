//
//  ContentView.swift
//  ManekiWindow
//
//  Created by Ganesh on 25/09/23.
//

import SwiftUI
import RealityKit
import ManekiContent

struct ContentView: View {
    var body: some View {
        NavigationSplitView {
            List{
                Text("Item")
            }
            .navigationTitle("SideBar")
        } detail: {
            VStack{
                Model3D(named: "Scene", bundle: manekiContentBundle)
                    .padding(.bottom,50)
                
                Text("Hello This is Maneki...!")
                
            }
            .navigationTitle("Content")
            .padding()
        }

    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
