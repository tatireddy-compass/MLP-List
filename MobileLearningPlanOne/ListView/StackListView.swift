//
//  StackListView.swift
//  MobileLearningPlanOne
//
//  Created by Tatireddy.reddy on 20/12/22.
//

import SwiftUI

struct StackListView: View {
    @StateObject var countryCodeViewModel = CountryCodeViewModel()
        
    var body: some View {
        CountryCodeView(countryCodeViewModel: countryCodeViewModel)
            .refreshable {
                countryCodeViewModel.loadCountryCodes()
            }
    }
}
