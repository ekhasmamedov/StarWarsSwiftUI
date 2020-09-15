import Combine

class MoviesListViewModel: ObservableObject, Identifiable {
	let apiClient: APIClientType
	
	@Published var rowModels: [MovieRowViewModel] = []
	
	private var disposables = Set<AnyCancellable>()
	
	init(apiClient: APIClientType = APIClient()) {
		self.apiClient = apiClient
		fetchMovies()
	}
	
	func fetchMovies() {
		let response: AnyPublisher<MoviesResponse, Error> = apiClient.execute(StarWarsAPI.movies)
		response
			.map { $0.results.map(MovieRowViewModel.init) }
			.sink(receiveCompletion: { [weak self] value in
				guard let self = self else { return }
				switch value {
				case .failure:
					self.rowModels = []
				case .finished:
					break
				}
			}, receiveValue: { [weak self] planets in
				guard let self = self else { return }
				self.rowModels = planets
			})
			.store(in: &disposables)
	}
}
