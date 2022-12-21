//
//  CountrySectionHeaderView.swift
//  MobileLearningPlanOne
//
//  Created by Tatireddy.reddy on 20/12/22.
//

import Foundation
import SwiftUI

struct CountrySectionHeaderView: View {
    //MARK: vars
    let text: String
    
    //MARK: body
    var body: some View {
        Rectangle()
            .fill(Color.backgroundColor)
            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            .overlay(
                Text(text)
                    .font(Font.system(size: 21))
                    .foregroundColor(Color.textColorPrimary)
                    .fontWeight(.semibold)
                    .padding(.horizontal, 17)
                    .padding(.vertical, 15)
                    .frame(maxWidth: nil, maxHeight: nil, alignment: .leading),
                alignment: .leading
            )
    }
}
