//
//  SettingsView.swift
//  TabBarNav
//
//  Created by Taylor Smith on 2/21/24.
//

import SwiftUI

struct SettingsView: View {
    @Binding var currentTab: AppPage
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "gearshape.fill")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("SETTINGS")
            }
            Button(action: {
                currentTab = .home
            }) {
                Text("Go to Home")
                    .foregroundStyle(.white)
            }
            .padding()
            .background(.green)
            .clipShape(RoundedRectangle(cornerRadius: 20.0))
            
            NavigationLink("Detail View") {
                Text("I'm a detail view! Here are the details...")
            }
        }

    }
}
