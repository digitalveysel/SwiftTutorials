//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Veysel Demirel on 03/03/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                MyDayForecast(isRainy: false, degree: 8, high: 14, low: 2, location: "Istanbul, Turkiye")
                MyDayForecast(isRainy: true, degree: 12, high: 16, low: 8, location: "London, UK")
                MyDayForecast(isRainy: false, degree: 25, high: 30, low: 20, location: "Los Angeles, USA")
                MyDayForecast(isRainy: true, degree: 18, high: 22, low: 15, location: "Tokyo, Japan")
                MyDayForecast(isRainy: false, degree: -5, high: 0, low: -10, location: "Moscow, Russia")
                MyDayForecast(isRainy: true, degree: 6, high: 9, low: 2, location: "Berlin, Germany")
                MyDayForecast(isRainy: false, degree: 32, high: 38, low: 28, location: "Dubai, UAE")
                MyDayForecast(isRainy: true, degree: 21, high: 24, low: 18, location: "São Paulo, Brazil")
                MyDayForecast(isRainy: false, degree: 15, high: 19, low: 12, location: "Paris, France")
                MyDayForecast(isRainy: true, degree: 10, high: 14, low: 7, location: "New York, USA")
                MyDayForecast(isRainy: false, degree: 27, high: 33, low: 22, location: "Bangkok, Thailand")
                
                
                DayForecast(day: "Mon", isRainy: false, high: 70, low: 50)
                DayForecast(day: "Tue", isRainy: true, high: 60, low: 40)
                DayForecast(day: "Wed", isRainy: false, high: 70, low: 50)
                DayForecast(day: "Thu", isRainy: true, high: 60, low: 40)
                DayForecast(day: "Fri", isRainy: false, high: 70, low: 50)
                DayForecast(day: "Sun", isRainy: true, high: 60, low: 40)
                DayForecast(day: "Sat", isRainy: false, high: 70, low: 50)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}

struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    var iconName: String {
        if isRainy {
            return "cloud.rain.fill"
        } else {
            return "sun.max.fill"
        }
    }
    
    var iconColor: Color {
        if isRainy {
            return Color.blue
        } else {
            return Color.yellow
        }
    }
    
    var body: some View {
        VStack {
            Text(day).font(Font.headline)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .font(Font.largeTitle)
                .padding(4)
            Text("\(high)")
                .fontWeight(Font.Weight.semibold)
            Text("\(low)")
                .fontWeight(Font.Weight.medium)
                .foregroundStyle(Color.secondary)
        }
        .frame(maxWidth: CGFloat.infinity)
        .padding()
        .background(Color.cyan.opacity(0.1).cornerRadius(8))
    }
}

struct MyDayForecast: View {
    let isRainy: Bool
    let degree: Int
    let high: Int
    let low: Int
    let location: String
    
    var iconName: String {
        if isRainy {
            return "cloud.rain.fill"
        } else {
            return "sun.max.fill"
        }
    }
    
    var iconColor: Color {
        if isRainy {
            return Color.blue
        } else {
            return Color.yellow
        }
    }
    
    var body: some View {
        HStack(spacing: 16) {
            VStack(alignment: .leading) {
                Text(String(degree) + "°C")
                    .font(.system(size: 48, design: Font.Design.rounded))
                    .fontWeight(Font.Weight.semibold)
                    .foregroundStyle(Color.white)
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 4) {
                    HStack(spacing: 8) {
                        Text("H: " + String(high) + "°C")
                            .font(.system(size: 16, design: Font.Design.rounded))
                            .fontWeight(Font.Weight.regular)
                            .foregroundStyle(Color.white)
                        
                        Text("L: " + String(low) + "°C")
                            .font(.system(size: 16, design: Font.Design.rounded))
                            .fontWeight(Font.Weight.regular)
                            .foregroundStyle(Color.white)
                    }
                    
                    Text(location)
                        .font(.system(size: 16, design: Font.Design.rounded))
                        .fontWeight(Font.Weight.medium)
                        .foregroundStyle(Color.white)
                }
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
            
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .font(.system(size: 80, design: .rounded))
                .padding(4)
                .background(
                        Image(systemName: iconName)
                            .font(.system(size: 80, design: .rounded))
                            .foregroundStyle(.white)
                            .offset(x: 1, y: 1)
                    )
        }
        .frame(maxWidth: .infinity, alignment: .center)
        .padding()
        .background(Color.purple.opacity(0.6).cornerRadius(16))
    }
}
