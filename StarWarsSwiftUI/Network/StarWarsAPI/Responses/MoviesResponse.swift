import Foundation

struct MoviesResponse: Codable {
	let results: [Movie]
	
	enum CodingKeys: String, CodingKey {
		case results = "Search"
	}
}
