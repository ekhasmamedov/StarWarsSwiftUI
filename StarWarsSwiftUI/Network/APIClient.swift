import Foundation
import Combine

struct API {
    static let baseURL = "https://swapi.co/api/"
}

enum APIError: Error {
    case unknown
}

protocol APIClientType {
    func execute<T: Decodable>(_ request: APIRequest) -> AnyPublisher<T, Error>
}

struct APIClient: APIClientType {
    private let baseURL: String
    private let session: URLSession
    
    init(baseURL: String = API.baseURL,
         configuration: URLSessionConfiguration = URLSessionConfiguration.default) {
        self.baseURL = baseURL
        self.session = URLSession(configuration: configuration)
    }
    
    func execute<T: Decodable>(_ request: APIRequest) -> AnyPublisher<T, Error> {
        guard let url = URL(string: baseURL) else {
            return Fail(error: APIError.unknown).eraseToAnyPublisher()
        }
        return session
            .dataTaskPublisher(for: request.request(with: url))
            .map { $0.data }
            .decode(type: T.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}
