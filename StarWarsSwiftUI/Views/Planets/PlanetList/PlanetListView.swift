import SwiftUI

struct PlanetListView: View {
	@ObservedObject var viewModel: PlanetListViewModel

	init(viewModel: PlanetListViewModel = PlanetListViewModel()) {
		self.viewModel = viewModel
	}

	var body: some View {
		NavigationView {
			List(viewModel.rowModels) { model in
				NavigationLink(destination: PlanetDetailView(planet: model.planet)) {
					PlanetRowView(viewModel: model)
				}
			}.navigationBarTitle("Select a planet")
		}
	}
}

struct PlanetListView_Previews: PreviewProvider {
	static var previews: some View {
		PlanetListView()
	}
}
