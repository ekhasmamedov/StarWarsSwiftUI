import SwiftUI

struct PlanetDetailView: View {
	var planet: Planet
	
	var body: some View {
		Text("\(planet.name)")
	}
}

#if DEBUG
struct PlanetDetailView_Previews: PreviewProvider {
	static var previews: some View {
        PlanetDetailView(planet: Planet.mock)
	}
}
#endif
