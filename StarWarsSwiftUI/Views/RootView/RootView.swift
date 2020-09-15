import SwiftUI

struct RootView: View {
	var body: some View {
		TabView {
			MoviesListView()
				.tabItem {
					Text("Movies")
				}.tag(0)
			PlanetListView()
				.tabItem {
					Text("Planets")
				}.tag(1)
		}
	}	
}

