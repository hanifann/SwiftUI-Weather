//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by hanifan nurul haq on 31/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(content: {
            LinearGradient(gradient: Gradient(colors: [.blue, .white]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack{
                Text("Bandung, ID")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundStyle(.white)
                    .padding()
                Spacer()
            }
        })
    }
}

#Preview {
    ContentView()
}
