//
//  FrameworkDetailView.swift
//  appledex
//
//  Created by Rodrigues, Luis on 21/12/2022.
//

import SwiftUI

struct FrameworkDetailView: View {
	var framework: Framework
	
	@State private var isShowingSafariView: Bool = false
	
	var body: some View {
		VStack{
			FrameworkTitleView(framework: framework)
			
			Text(framework.description)
				.font(.body)
				.padding()
			Spacer()
			Button {
				isShowingSafariView = true
				
			} label: {
				Label("Learn more", systemImage: "book.fill")
			}
			.buttonStyle(.bordered)
			.controlSize(.large)
			.tint(.red)
		}
		.fullScreenCover(isPresented: $isShowingSafariView) {
			SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
		}
	}
}

struct FrameworkDetailView_Previews: PreviewProvider {
	static var previews: some View {
		FrameworkDetailView(framework: MockData.sampleFramework)
			.preferredColorScheme(.dark)
	}
}
