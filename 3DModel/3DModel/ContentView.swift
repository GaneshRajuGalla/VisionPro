//
//  ContentView.swift
//  3DModel
//
//  Created by Ganesh on 21/09/23.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    
    // MARK: - Properties
    @StateObject private var viewModel:ViewModel
    
    @State private var currentModel:String = "https://developer.apple.com/augmented-reality/quick-look/models/teapot/teapot.usdz"
    
    // init
    init(viewModel: ViewModel) {
        self._viewModel = StateObject(wrappedValue: viewModel)
    }
    
    // MARK: - Body
    var body: some View {
        VStack{
            Spacer()
            Model3D(url: URL(string: currentModel)!) { model in
                model
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
            } placeholder: {
                ProgressView()
            }
            
            Spacer()
            Button{
                currentModel = viewModel.models.randomElement()?.url ?? ""
            } label:{
                Text("Next")
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding()
                    .frame(width: 200,height: 100)
            }
            Spacer()
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView(viewModel: ViewModel())
}
