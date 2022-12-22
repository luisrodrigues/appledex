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
		HStack {
			Image(framework.imageName)
				.resizable()
				.frame(width: 70, height: 70, alignment: .center)
			Text(framework.name)
				.font(.title2)
				.fontWeight(.semibold)
				.scaledToFit()
				.minimumScaleFactor(0.6)
				.padding()
		}
		
	}
	
}

struct FrameworkTitleView_Previews: PreviewProvider {
	static var previews: some View {
		FrameworkTitleView(framework: MockData.sampleFramework)
	}
}
