//
//  SafariView.swift
//  appledex
//
//  Created by Rodrigues, Luis on 21/12/2022.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
	
	let url: URL
	
	func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
			SFSafariViewController(url: url)
	}
	
	func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {}
}
