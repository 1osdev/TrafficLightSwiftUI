//
//  ColorButtonPress.swift
//  TrafficLightSwiftUI
//
//  Created by Дмитрий Смирнов on 31.03.22.
//

import SwiftUI

struct ColorButtonPress: View {

    let title: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.largeTitle)
                .foregroundColor(Color.white)
        }
            .padding()
            .frame(width: 250, height: 80)
            .background(Color.blue)
            .cornerRadius(20)
    }
}

struct ColorButtonPress_Previews: PreviewProvider {
    static var previews: some View {
        ColorButtonPress(title: "GO", action: {})
    }
}
