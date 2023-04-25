//
//  DisplayColorView.swift
//  Colorized
//
//  Created by User on 26.04.2023.
//

import SwiftUI

struct DisplayColorView: View {
    let redSliderValue: Double
    let greenSliderValue: Double
    let blueSliderValue: Double
    
    var body: some View {
        Color(red: redSliderValue / 255,
              green: greenSliderValue / 255,
              blue: blueSliderValue / 255)
        .frame(height: 200)
        .cornerRadius(20)
        .padding(EdgeInsets(top: 0, leading: 20, bottom: 20, trailing: 20))
    }
}

struct DisplayColorView_Previews: PreviewProvider {
    static var previews: some View {
        DisplayColorView(redSliderValue: 100, greenSliderValue: 0, blueSliderValue: 0)
    }
}
