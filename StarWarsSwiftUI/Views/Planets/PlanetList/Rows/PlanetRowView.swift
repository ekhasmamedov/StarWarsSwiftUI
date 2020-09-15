import SwiftUI

struct PlanetRowView: View {
	private let viewModel: PlanetRowViewModel
	
	init(viewModel: PlanetRowViewModel) {
		self.viewModel = viewModel
	}
	
	var body: some View {
		Text("\(viewModel.planet.name)")
	}
}

#if DEBUG
struct PlanetRowView_Previews: PreviewProvider {
	static var previews: some View {
		PlanetRowView(viewModel: PlanetRowViewModel(planet: Planet()))
	}
}
#endif
