//
//  FrameworkGridView.swift
//  appledex
//
//  Created by Rodrigues, Luis on 20/12/2022.
//

import SwiftUI

struct FrameworkGridView: View {
	
	let columns: [GridItem] = [
		GridItem(.flexible()),
		GridItem(.flexible()),
		GridItem(.flexible())
	]
	
	var body: some View {
		NavigationView {
			ScrollView {
				LazyVGrid(columns: columns) {
					ForEach(MockData.frameworks) { framework in
						FrameworkTitleView(
							framework: framework)
					}
				}
			}
			.navigationTitle("🍎 Frameworks")
		}
	}
}

struct FrameworkGridView_Previews: PreviewProvider {
	static var previews: some View {
		FrameworkGridView()
			.preferredColorScheme(.dark)
	}
}

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
		}
		.padding()
	}
	
}
