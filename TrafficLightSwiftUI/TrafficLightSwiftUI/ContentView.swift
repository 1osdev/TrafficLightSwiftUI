//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Дмитрий Смирнов on 30.03.22.
//

import SwiftUI

enum ChangingTrafficLight {
    case red, yellow, green
}

struct ContentView: View {
    
    @State private var redLightOpacity = 0.3
    @State private var yellowLightOpacity = 0.3
    @State private var greenLightOpacity = 0.3
    
    @State private var buttonName = "GO"
    
    @State private var changeLight = ChangingTrafficLight.red
    
    private func nextColor() {
        
        let lightIsOn = 1.0
        let lightIsOff = 0.3
        
        switch changeLight {
        case .red:
            changeLight = .yellow
            greenLightOpacity = lightIsOff
            redLightOpacity = lightIsOn
//        case .redYellow:
//            changeLight = .yellow
//            redLightOpacity = lightIsOn
//            yellowLightOpacity = lightIsOn
        case .yellow:
            changeLight = .green
            redLightOpacity = lightIsOff
            yellowLightOpacity = lightIsOn
        case.green:
            changeLight = .red
            greenLightOpacity = lightIsOn
            yellowLightOpacity = lightIsOff
        }
    }
}
    
    extension ContentView {
        var body: some View {
            ZStack {
                Spacer()
                Color.brown
                    .ignoresSafeArea()
                VStack(spacing: 20) {
                    ColorLight(color: .red, opacity: redLightOpacity)
                    ColorLight(color: .yellow, opacity: yellowLightOpacity)
                    ColorLight(color: .green, opacity: greenLightOpacity)

                    Spacer()

                    ColorButtonPress(title: buttonName) {
                        nextColor()
                    }
                }
                    .padding()
            }
        }
    }
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
