import Foundation

enum StarWarsAPI {
	case movies
	case movieDetail(movieId: String)
}

extension StarWarsAPI: Endpoint {
    var method: RequestMethod {
        return .get
    }
	
	var parameters: [String: String]? {
        var params: [String: String] = [:]
		switch self {
		case .movies:
            params["s"] = "Star+Wars"
		case .movieDetail(let movieId):
            params["i"] = movieId
		}

        return params.appending(API.defaultParams)
	}
}

extension Dictionary where Key == String, Value == String {
    func appending(_ dict: [String: String]) -> [String: String] {
        var newDict: [String: String] = self
        for key in dict.keys {
            newDict[key] = dict[key]
        }
        return newDict
    }
}
