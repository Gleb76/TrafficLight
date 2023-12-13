//
//  ContentView.swift
//  TrafficLight
//
//  Created by Глеб Клыга on 13.12.23.
//

import SwiftUI

struct ContentView: View {
    @State private var currentLightIndex = -1
    private let trafficLightColors: [TrafficLightColor] = [.red, .yellow, .green]
    @State private var buttonText = "START"
    
    var body: some View {
           ZStack {
               Color.black.edgesIgnoringSafeArea(.all)
               VStack {
                   VStack {
                       SwiftCircleView(color: trafficLightColors[0].color.opacity(currentLightIndex == 0 ? 1 : 0.3))
                       SwiftCircleView(color: trafficLightColors[1].color.opacity(currentLightIndex == 1 ? 1 : 0.3))
                       SwiftCircleView(color: trafficLightColors[2].color.opacity(currentLightIndex == 2 ? 1 : 0.3))
                   }
                   VStack{
                       Spacer()
                       SwiftButtonView(action: changeColorPressedButton, label: buttonText)
                   }
               }
           }
       }
       
    
    func changeColorPressedButton() {
        currentLightIndex = (currentLightIndex + 1) % trafficLightColors.count
        buttonText = "NEXT"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

enum TrafficLightColor {
    case red, yellow, green
    
    var color: Color {
        switch self {
        case .red:
            return .red
        case .yellow:
            return .yellow
        case .green:
            return .green
        }
    }
}
