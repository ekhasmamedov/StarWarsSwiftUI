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
		guard let date = DateFormatter.shortDateFormatter.date(from: releaseDate) else {
			return ""
		}
		return DateFormatter.mediumDateFormatter.string(from: date)
	}
}
