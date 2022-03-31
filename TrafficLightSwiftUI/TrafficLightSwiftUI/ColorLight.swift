//
//  ColorLight.swift
//  TrafficLightSwiftUI
//
//  Created by Дмитрий Смирнов on 31.03.22.
//

import SwiftUI

struct ColorLight: View {
    
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 150, height: 150)
            .foregroundColor(color)
            .opacity(opacity)
    }
}

struct ColorLight_Previews: PreviewProvider {
    static var previews: some View {
        ColorLight(color: .red, opacity: 1)
    }
}
