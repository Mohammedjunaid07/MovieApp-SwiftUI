import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            
            MovieListView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            Text("Search")
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
        }
    }
}
#Preview {
    ContentView()
}
