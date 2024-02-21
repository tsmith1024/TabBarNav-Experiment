import SwiftUI

enum AppPage: String, Codable {
    case home
    case settings
}

struct ContentView: View {
    @State private var currentTab: AppPage = .home
    
    var body: some View {
        NavigationStack {
            TabView(selection: $currentTab) {
                HomeView(currentTab: $currentTab)
                    .tag(AppPage.home)
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                    .toolbar(.hidden, for: .tabBar)
                
                SettingsView(currentTab: $currentTab)
                    .tag(AppPage.settings)
                    .tabItem {
                        Label("Settings", systemImage: "gearshape.fill")
                    }
            }
        }
    }
}

#Preview {
    ContentView()
}
