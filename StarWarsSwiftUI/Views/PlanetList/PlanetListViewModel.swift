import Combine

class PlanetListViewModel: ObservableObject, Identifiable {
    let apiClient: APIClientType
    
    var planets: [Planet] = []
    
    init(apiClient: APIClientType = APIClient()) {
        self.apiClient = apiClient
    }
    
    func fetchPlanets() -> AnyPublisher<PlanetsResponse, Never> {
        return apiClient
            .execute(PlanetsAPI.Planets)
            .catch { error in
                return Just(PlanetsResponse())
              }
            .eraseToAnyPublisher()
    }
}
