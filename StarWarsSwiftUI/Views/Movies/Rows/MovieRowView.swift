import SwiftUI

struct MovieRowView: View {
	private let viewModel: MovieRowViewModel
	
	init(viewModel: MovieRowViewModel) {
		self.viewModel = viewModel
	}
	
	var body: some View {
		Text("\(viewModel.movie.title)")
	}
}

#if DEBUG
struct MovieRowView_Previews: PreviewProvider {
	static var previews: some View {
		MovieRowView(viewModel: MovieRowViewModel(movie: Movie()))
	}
}
#endif
