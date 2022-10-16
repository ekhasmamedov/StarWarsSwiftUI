import Foundation

protocol StarWarsServiceType {
    func getAllMovies() async -> Result<MoviesResponse, RequestError>
    func getMovieDetail(id: String) async -> Result<Movie, RequestError>
}

struct StarWarsService: HTTPClient, StarWarsServiceType {
    func getAllMovies() async -> Result<MoviesResponse, RequestError> {
        return await sendRequest(endpoint: StarWarsAPI.movies, responseModel: MoviesResponse.self)
    }

    func getMovieDetail(id: String) async -> Result<Movie, RequestError> {
        return await sendRequest(endpoint: StarWarsAPI.movieDetail(movieId: id), responseModel: Movie.self)
    }
}
