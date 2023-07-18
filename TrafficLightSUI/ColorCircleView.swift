//
//  ColorCircleView.swift
//  TrafficLightSUI
//
//  Created by Наталья Миронова on 18.07.2023.
//

import SwiftUI

struct ColorCircleView: View {
	
	let color: Color
	let opacity: Double
	
    var body: some View {
		Circle()
			.foregroundColor(color)
			.opacity(opacity)
			.frame(width: 120, height: 120)
			.overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
		ColorCircleView(color: .red, opacity: 0.3)
    }
}
