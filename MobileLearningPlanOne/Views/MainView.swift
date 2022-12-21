//
//  MainView.swift
//  MobileLearningPlanOne
//
//  Created by Tatireddy.reddy on 20/12/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink {
                    ListView()
                } label: {
                    Text("ListView")
                        .padding(16)
                }
                
                NavigationLink {
                    StackListView()
                } label: {
                    Text("StackListView")
                        .padding(16)
                }
            }
        }
        .padding()
    }
}
