import SwiftUI
import struct Kingfisher.KFImage

struct MovieRowView: View {
	let movie: Movie
	
	var body: some View {
		HStack {
			KFImage(movie.movieURL)
				.resizable()
				.aspectRatio(contentMode: .fit)
			Text("\(movie.title)")
				.lineLimit(nil)
		}
        .frame(height: 48)
	}
}

#if DEBUG
struct MovieRowView_Previews: PreviewProvider {
	static var previews: some View {
        MovieRowView(movie: Movie.mock)
	}
}
#endif
