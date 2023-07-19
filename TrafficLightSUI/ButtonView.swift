//
//  ButtonView.swift
//  TrafficLightSUI
//
//  Created by Наталья Миронова on 19.07.2023.
//

import SwiftUI

struct ButtonView: View {
	
	let action: () -> Void
	let title: String
	
    var body: some View {
		Button(action: {action()} ) {
			Text(title)
				.foregroundColor(.white)
				.padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
				.font(.title)
				.background(Color.blue)
				.cornerRadius(10)
				.overlay(
					RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 4)
				)
    }
}

//struct ButtonView_Previews: PreviewProvider {
//    static var previews: some View {
//        ButtonView(action:  , title: "Кнопка")
//    }
}
