//
//  ContentView.swift
//  VisionProSample
//
//  Created by Ganesh on 22/06/23.
//

import SwiftUI

struct ContentView: View {
    let symbolNames = [
        "sun.min.fill",
        "sun.max.fill",
        "rays",
        "slowmo",
        "timelapse",
        "aqi.medium",
        "rainbow",
        "wifi",
        "dot.radiowaves.left.and.right",
        "touchid",
        "sun.max.circle",
        "sun.dust.fill",
        "sun.rain.fill",
        "sun.snow.fill",
        "cloud.rain.fill",
        "cloud.snow.fill",
        "cloud.bolt.rain.fill",
        "cloud.sun.bolt.fill",
        "snowflake",
        "rainbow"
    ]
    @State private var selectedIndex:Int = 0


    var body: some View {
        NavigationSplitView{
            ScrollView {
                ForEach(0..<symbolNames.count,id: \.self){ index in
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.thinMaterial.opacity(0.5))
                        Image(systemName: symbolNames[index])
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 80, height: 80)
                            .foregroundStyle(.white)
                            .symbolEffect(.variableColor)
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 200)
                    .padding(.horizontal,20)
                    .scrollTransition(.animated(.bouncy)) { view, transition in
                        view.scaleEffect(transition.isIdentity ? 1 : transition.value)
                    }
                    .onTapGesture {
                        selectedIndex = index
                    }
                }
            }
            .navigationTitle("Sidebar")
        }detail: {
            VStack(spacing:40){
                Image(systemName: symbolNames[selectedIndex])
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 400, height: 400)
                    .foregroundStyle(Color(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1)).gradient)
                    .symbolEffect(.variableColor.iterative)
                Text(symbolNames[selectedIndex].capitalized)
                    .font(.largeTitle)
                    .foregroundStyle(.white)
            }
           
            .navigationTitle("Content")
        }
    }
}





//#Preview {
//    ContentView()
//}


