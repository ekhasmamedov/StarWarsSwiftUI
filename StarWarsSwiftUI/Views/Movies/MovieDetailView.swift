import SwiftUI

struct MovieDetailView: View {
	var movie: Movie
	
	var body: some View {
		VStack {
			Text("\(movie.episodeText)")
				.bold()
			Text("\(movie.title.uppercased())")
				.bold()
				.font(Font.system(size: 20))
				.padding(.bottom)
			Text("Director: \(movie.director)")
			Text("Release Date: \(movie.shortDate)")
				.padding(.bottom)
			Text("\(movie.openingCrawl)")
		}.padding()
	}
}

#if DEBUG
struct MovieDetailView_Previews: PreviewProvider {
	static var previews: some View {
		MovieDetailView(movie: Movie())
	}
}
#endif
