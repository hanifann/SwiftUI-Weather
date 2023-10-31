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
            LinearGradient(gradient: Gradient(colors: [.blue, Color("lightBlue")]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack {
                Text("Bandung, ID")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundStyle(.white)
                    .padding()
                
                VStack (spacing: 10){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("29°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundStyle(.white)
                }
                .padding(.bottom, 40)
                
                HStack (spacing: 20) {
                    WeatherDayView(dayOfWeek: "Tue",
                                   imageName: "cloud.sun.fill",
                                   temperature: 29)
                    
                    WeatherDayView(dayOfWeek: "Wed",
                                   imageName: "sun.max.fill",
                                   temperature: 33)
                    
                    WeatherDayView(dayOfWeek: "Thu",
                                   imageName: "cloud.rain.fill",
                                   temperature: 27)
                    
                    WeatherDayView(dayOfWeek: "Fri",
                                   imageName: "sunset.fill",
                                   temperature: 30)
                    
                    WeatherDayView(dayOfWeek: "Sat",
                                   imageName: "cloud.bolt.fill",
                                   temperature: 26)
                }
                Spacer()
            }
        })
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundStyle(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundStyle(.white)
        }
    }
}
