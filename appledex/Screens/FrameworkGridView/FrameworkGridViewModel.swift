//
//  FrameworkGridViewModel.swift
//  appledex
//
//  Created by Rodrigues, Luis on 21/12/2022.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
	let columns: [GridItem] = [
		GridItem(.flexible()),
		GridItem(.flexible()),
		GridItem(.flexible())
	]
}
