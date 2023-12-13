//
//  SwiftCircleView.swift
//  TrafficLight
//
//  Created by Глеб Клыга on 13.12.23.
//

import SwiftUI



struct SwiftCircleView: View {
    let color: Color
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(color)
                .frame(width: 150, height: 150)
                .overlay(
                    Circle()
                        .stroke(Color.white, lineWidth: 4))
            
        }
    }
}

struct SwiftCircleView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftCircleView(color: .red)
        
    }
}
