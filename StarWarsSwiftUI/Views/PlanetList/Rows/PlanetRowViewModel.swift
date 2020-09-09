import Foundation

struct PlanetRowViewModel: Identifiable {
	let planet: Planet
	
	var id = UUID()
	
	init(planet: Planet) {
		self.planet = planet
	}
}
