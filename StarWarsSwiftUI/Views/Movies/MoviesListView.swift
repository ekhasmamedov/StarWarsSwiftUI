import SwiftUI

struct MoviesListView: View {
	@ObservedObject var viewModel: MoviesListViewModel

	var body: some View {
		NavigationView {
			List(viewModel.rowModels) { model in
				NavigationLink(destination: MovieDetailView(movie: model)) {
                    MovieRowView(movie: model)
				}
			}
            .navigationBarTitle("Select a movie")
		}
        .accentColor(.white)
        .task {
            await viewModel.fetchMovies()
        }
	}
}

struct MoviesListView_Previews: PreviewProvider {
	static var previews: some View {
		MoviesListView(viewModel: MoviesListViewModel())
	}
}
