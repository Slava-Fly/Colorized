//
//  ContentView.swift
//  Colorized
//
//  Created by User on 25.04.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var redSliderValue = Double.random(in: 0...255)
    @State private var greenSliderValue = Double.random(in: 0...255)
    @State private var blueSliderValue = Double.random(in: 0...255)
    
    @FocusState var isInputActive: Bool
    @State var smthText = ""
    
    var body: some View {
        ZStack {
            VStack {
                DisplayColorView(redSliderValue: redSliderValue, greenSliderValue: greenSliderValue, blueSliderValue: blueSliderValue)
                
                SliderAndTextfield(colorValue: $redSliderValue, colorSlider: .red)
                SliderAndTextfield(colorValue: $greenSliderValue, colorSlider: .green)
                SliderAndTextfield(colorValue: $blueSliderValue, colorSlider: .blue)
                
                Spacer()
            }
        }
        
    }
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



