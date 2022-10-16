import Foundation

struct Planet: Codable, Identifiable {
    var id = UUID()
	let name: String
}

extension Planet {
    static var mock: Planet {
        return Planet(name: "Tatooine")
    }
}
