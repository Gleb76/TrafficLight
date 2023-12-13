//
//  SwiftButtonView.swift
//  TrafficLight
//
//  Created by Глеб Клыга on 13.12.23.
//

import SwiftUI

struct SwiftButtonView: View {
    var action: () -> Void
    var label: String
    
    var body: some View {
        Button(action: action) {
            Text(label)
                .frame(width: 150, height: 30)
                .font(.headline)
                .padding()
                .foregroundColor(.white)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.blue)
                )
        }
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.white, lineWidth: 4)
        )
    }
}

struct SwiftButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftButtonView(action: {}, label: "Next")
    }
}
