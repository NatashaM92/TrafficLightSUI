//
//  ContentView.swift
//  TrafficLightSUI
//
//  Created by Наталья Миронова on 18.07.2023.
//

import SwiftUI

struct ContentView: View {

	@State private var redOpacity = 0.3
	@State private var yellowOpacity = 0.3
	@State private var greenOpacity = 0.3
	
	@State private var title = "Start"
	
	var body: some View {
		ZStack {
			Color.black
				.ignoresSafeArea()
			VStack(spacing: 20) {
				ColorCircleView(color: .red, opacity: redOpacity)
				ColorCircleView(color: .yellow, opacity: yellowOpacity)
				ColorCircleView(color: .green, opacity: greenOpacity)
				Spacer()
				
				ButtonView(action: { tapButton() }, title: title )
			}
			.padding(EdgeInsets(top: 50, leading: 0, bottom: 50, trailing: 0))
		}
	}
	
	private func tapButton(){
		title = "Next"
		
		if redOpacity != 1 && yellowOpacity != 1 {
			redOpacity = 1
			greenOpacity = 0.3
			
		} else if yellowOpacity != 1 {
			redOpacity = 0.3
			yellowOpacity = 1
			
		} else if greenOpacity != 1 {
			yellowOpacity = 0.3
			greenOpacity = 1
			
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
