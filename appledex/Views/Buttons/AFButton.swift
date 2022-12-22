//
//  AFButton.swift
//  appledex
//
//  Created by Rodrigues, Luis on 21/12/2022.
//

import SwiftUI

struct AFButton: View {
	var title: String
	
	var body: some View {
		Text(title)
			.font(.title2)
			.fontWeight(.semibold)
			.frame(width: 200, height: 50, alignment: .center)
			.background(Color.red)
			.foregroundColor(Color.white)
			.cornerRadius(10)
	}
}

struct AFButton_Previews: PreviewProvider {
	static var previews: some View {
		AFButton(title: "Test")
			.preferredColorScheme(.dark)
	}
}
