//
//  FrameworkGridView.swift
//  appledex
//
//  Created by Rodrigues, Luis on 20/12/2022.
//

import SwiftUI

struct FrameworkGridView: View {
	var body: some View {
		FrameworkTitleView(
			name: MockData.sampleFramework.name,
			imageName: MockData.sampleFramework.imageName)
	}
}

struct FrameworkGridView_Previews: PreviewProvider {
	static var previews: some View {
		FrameworkGridView()
	}
}

struct FrameworkTitleView: View {
	var name: String
	var imageName: String
	
	var body: some View {
		VStack {
			Image(imageName)
				.resizable()
				.frame(width: 90, height: 90, alignment: .center)
			Text(name)
				.font(.title2)
				.fontWeight(.semibold)
				.scaledToFit()
				.minimumScaleFactor(0.6)
		}
		
	}
	
}
