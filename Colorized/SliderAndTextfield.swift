//
//  SliderAndTextfield.swift
//  Colorized
//
//  Created by User on 26.04.2023.
//

import SwiftUI

struct SliderAndTextfield: View {
    @Binding var colorValue: Double
    let colorSlider: Color
    @State private var showAlert = false
    @State private var userNumber = ""
    
    var body: some View {
        HStack {
            Text("\(lround(colorValue))")
                .font(.headline)
            
            Slider(value: $colorValue, in: 0...255, step: 1)
                .accentColor(colorSlider)
            
            TextField("\(lround(colorValue))",
                      value: $colorValue, formatter: NumberFormatter()) {
                checkUserNumber()
            }
            .textFieldStyle(.roundedBorder)
            .frame(width: 50)
        }.padding(.horizontal, 10)
    }
    
    private func checkUserNumber() {
        if let _ = Double(userNumber) {
            userNumber = ""
            showAlert.toggle()
            return
        }
        userNumber = ""
        
        if colorValue > 255 || colorValue < 0 {
            colorValue = 0
        }
    }
    
    struct SliderAndTextfield_Previews: PreviewProvider {
        static var previews: some View {
            ZStack {
                SliderAndTextfield(colorValue: .constant(200), colorSlider: .red)
            }
        }
    }
}


