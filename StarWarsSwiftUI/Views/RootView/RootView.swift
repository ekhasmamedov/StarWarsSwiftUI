import SwiftUI

struct RootView: View {
	var body: some View {
		TabView {
			MoviesListView(viewModel: MoviesListViewModel())
				.tabItem {
					Image("cinema").renderingMode(.template)
					Text("Movies")
				}.tag(0)
			Text("")
				.tabItem {
					Image("person").renderingMode(.template)
					Text("Characters")
				}.tag(1)
			Text("")
				.tabItem {
					Image("spaceship").renderingMode(.template)
					Text("Starships")
				}.tag(2)
			PlanetListView()
				.tabItem {
					Image("planet").renderingMode(.template)
					Text("Planets")
				}.tag(3)
		}
		.accentColor(.black)
	}	
}


struct RootView_Previews: PreviewProvider {
	static var previews: some View {
		RootView()
	}
}
