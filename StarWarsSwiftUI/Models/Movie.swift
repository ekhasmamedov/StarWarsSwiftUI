import Foundation

struct Movie: Codable {
	let title: String
	let director: String
	let openingCrawl: String
	let releaseDate: String
	let episodeNumber: Int
	
	enum CodingKeys: String, CodingKey {
		case title
		case director
		case openingCrawl = "opening_crawl"
		case releaseDate = "release_date"
		case episodeNumber = "episode_id"
	}
	
	init() {
		title = "A New Hope"
		director = "George Lucas"
		openingCrawl = "Long text long text long text long text long text long text long text long text"
		releaseDate = "1977-05-25"
		episodeNumber = 4
	}
	
	var shortDate: String {
		let formatter = DateFormatter()
		formatter.dateFormat = "yyyy-MM-DD"
		guard let date = formatter.date(from: releaseDate) else {
			return ""
		}
		formatter.dateStyle = .medium
		return formatter.string(from: date)
	}
	
	var episodeText: String {
		return "Episode \(episodeNumber.toRoman())"
	}
}
