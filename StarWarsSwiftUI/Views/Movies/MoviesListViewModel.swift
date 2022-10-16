import Combine
import Resolver

@MainActor
class MoviesListViewModel: ObservableObject {
    @Published var rowModels: [Movie] = []
    @Injected private var service: StarWarsServiceType

    func fetchMovies() async {
        let result = await service.getAllMovies()
        switch result {
        case .success(let movieResponse):
            rowModels = movieResponse.results
        case .failure(let error):
            print(error.localizedDescription)
            rowModels = []
        }
    }
}
