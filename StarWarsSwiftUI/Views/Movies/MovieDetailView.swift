import SwiftUI

struct MovieDetailView: View {
	var movie: Movie
	
	var body: some View {
		ZStack {
			Color.black.edgesIgnoringSafeArea(.all)
			VStack {
				Text("Episode \(movie.episodeNumber.toRoman())")
					.bold()
					.foregroundColor(Color.crawlColor)
				Text("\(movie.title.uppercased())")
					.bold()
					.font(Font.system(size: 20))
					.foregroundColor(Color.crawlColor)
					.padding(.bottom)
				Text("Director: \(movie.director)")
					.foregroundColor(Color.crawlColor)
				Text("Release Date: \(movie.shortDate)")
					.foregroundColor(Color.crawlColor)
					.padding(.bottom)
				Text("\(movie.openingCrawl)")
					.foregroundColor(Color.crawlColor)
			}.padding()
		}
	}
}

#if DEBUG
struct MovieDetailView_Previews: PreviewProvider {
	static var previews: some View {
		MovieDetailView(movie: Movie())
	}
}
#endif
