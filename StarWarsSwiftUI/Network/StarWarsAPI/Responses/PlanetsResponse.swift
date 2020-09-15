import Foundation

struct PlanetsResponse: Codable {
	let count: Int
	let results: [Planet]
}
