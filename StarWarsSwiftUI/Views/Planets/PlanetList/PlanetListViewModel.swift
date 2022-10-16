import Combine

class PlanetListViewModel: ObservableObject {
    @Published var rowModels: [PlanetRowViewModel] = []
}
