import SwiftUI
import struct Kingfisher.KFImage

struct MovieDetailView: View {
	struct Constants {
		static let textFont = Font.system(size: 20)
	}
	
	var movie: Movie
	
	var body: some View {
		ZStack {
			Color.black.edgesIgnoringSafeArea(.all)
			ScrollView {
				VStack {
					Text("\(movie.title.uppercased())")
						.bold()
						.font(Constants.textFont)
						.foregroundColor(Color.crawlColor)
						.padding(.bottom)
					KFImage(movie.movieURL)
						.resizable()
						.aspectRatio(contentMode: .fit)
				}
                .padding(20)
			}
		}
	}
}

#if DEBUG
struct MovieDetailView_Previews: PreviewProvider {
	static var previews: some View {
        MovieDetailView(movie: Movie.mock)
	}
}
#endif
