//
//  FrameworkTitleView.swift
//  appledex
//
//  Created by Rodrigues, Luis on 22/12/2022.
//

import SwiftUI

struct FrameworkTitleView: View {
	var framework: Framework
	
	var body: some View {
		VStack {
			Image(framework.imageName)
				.resizable()
				.frame(width: 90, height: 90, alignment: .center)
			Text(framework.name)
				.font(.title2)
				.fontWeight(.semibold)
				.scaledToFit()
				.minimumScaleFactor(0.6)
				.foregroundColor(Color(.label))
		}
		.padding()
		
	}
	
}

struct FrameworkTitleView_Previews: PreviewProvider {
	static var previews: some View {
		FrameworkTitleView(framework: MockData.sampleFramework)
	}
}
