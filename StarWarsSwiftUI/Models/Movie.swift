import Foundation

struct Movie: Codable, Identifiable {
    let id = UUID()
	let title: String
	let year: String
	let imdbID: String
	let type: String
	let imageURL: String
	
	enum CodingKeys: String, CodingKey {
		case title = "Title"
		case year = "Year"
		case imdbID
		case type = "Type"
		case imageURL = "Poster"
	}
	
	var movieURL: URL? {
		return URL(string: imageURL)
	}
}

extension Movie {
    static var mock: Movie {
        return Movie(
            title: "Star Wars: Episode V - The Empire Strikes Back",
            year: "1977",
            imdbID: "1",
            type: "Movie",
            imageURL: "")
    }
}
