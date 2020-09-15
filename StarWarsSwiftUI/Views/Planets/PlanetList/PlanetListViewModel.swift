import Combine

class PlanetListViewModel: ObservableObject, Identifiable {
	let apiClient: APIClientType
	
	@Published var rowModels: [PlanetRowViewModel] = []
	
	private var disposables = Set<AnyCancellable>()
	
	init(apiClient: APIClientType = APIClient()) {
		self.apiClient = apiClient
		fetchPlanets()
	}
	
	func fetchPlanets() {
		let response: AnyPublisher<PlanetsResponse, Error> = apiClient.execute(StarWarsAPI.planets)
		response
			.map { $0.results.map(PlanetRowViewModel.init) }
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
