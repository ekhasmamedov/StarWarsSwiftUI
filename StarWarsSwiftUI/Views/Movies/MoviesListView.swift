import SwiftUI

struct MoviesListView: View {
	@ObservedObject var viewModel: MoviesListViewModel

	init(viewModel: MoviesListViewModel = MoviesListViewModel()) {
		self.viewModel = viewModel
	}

	var body: some View {
		NavigationView {
			List(viewModel.rowModels) { model in
				NavigationLink(destination: MovieDetailView(movie: model.movie)) {
					MovieRowView(viewModel: model)
				}
			}.navigationBarTitle("Select a movie")
		}.accentColor(.white)
	}
}

struct MoviesListView_Previews: PreviewProvider {
	static var previews: some View {
		MoviesListView()
	}
}
