import Foundation

struct MoviesResponse: Codable {
	let count: Int
	let results: [Movie]
}
