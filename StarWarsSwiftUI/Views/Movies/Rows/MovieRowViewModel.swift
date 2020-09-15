import Foundation

struct MovieRowViewModel: Identifiable {
	let movie: Movie
	
	var id = UUID()
	
	init(movie: Movie) {
		self.movie = movie
	}
}
