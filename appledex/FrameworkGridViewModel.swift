//
//  FrameworkGridViewModel.swift
//  appledex
//
//  Created by Rodrigues, Luis on 21/12/2022.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
	
	var selectedFramework: Framework? {
		didSet {
			isShowingDetailView = true
		}
	}
	
	@Published var isShowingDetailView = false
}
