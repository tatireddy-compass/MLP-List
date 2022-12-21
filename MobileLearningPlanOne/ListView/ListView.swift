//
//  ListView.swift
//  MobileLearningPlanOne
//
//  Created by Tatireddy.reddy on 20/12/22.
//

import SwiftUI

struct ListView: View {
    @StateObject var countryCodeViewModel = CountryCodeViewModel()
        
    var body: some View {
        List(countryCodeViewModel.sections, id: \.self) { section in
            CountrySectionHeaderView(text: section)
            ForEach(countryCodeViewModel.countryCodes.filter { (countryModel) -> Bool in countryModel.name.prefix(1) == section }) { countryModel in
                CountryItemView(countryModel: countryModel, selected: (countryModel.code == countryCodeViewModel.code) ? true : false)
                    .contentShape(Rectangle())
                    .onTapGesture {
                        selectCountryCode(selectedCountry: countryModel)
                    }
                    .swipeActions(edge: .leading) {
                        Button (action: { }) {
                            Label("Unread", systemImage: "envelope.open.fill")
                        }
                        .tint(.blue)
                    }

            }.listRowSeparator(.hidden)
        }.listStyle(.plain)
            .refreshable {
                countryCodeViewModel.loadCountryCodes()
            }
    }
    
    //MARK: selectCountryCode
    func selectCountryCode(selectedCountry: CountryModel){
        countryCodeViewModel.countryCodeNumber = selectedCountry.dial_code
        countryCodeViewModel.country = selectedCountry.name
        countryCodeViewModel.code = selectedCountry.code
    }
}
