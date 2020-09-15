import Foundation

enum StarWarsAPI {
	case planets
	case movies
}

extension StarWarsAPI: APIRequest {
	var path: String {
		switch self {
		case .planets:
			return "planets"
		case .movies:
			return "films"
		}
	}
}
