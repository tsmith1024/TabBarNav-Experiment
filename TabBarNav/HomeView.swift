//
//  HomeView.swift
//  TabBarNav
//
//  Created by Taylor Smith on 2/21/24.
//

import SwiftUI

struct HomeView: View {
    @Binding var currentTab: AppPage
    
    var body: some View {
        VStack {
            Image(systemName: "house.fill")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("HOME")
                .font(.title)
                .fontWeight(.semibold)
            Button(action: {
                currentTab = .settings
            }) {
                Text("Go to Settings")
                    .foregroundStyle(.white)
            }
            .padding()
            .background(.purple)
            .clipShape(RoundedRectangle(cornerRadius: 20.0))
        }
        .padding()
    }
}
