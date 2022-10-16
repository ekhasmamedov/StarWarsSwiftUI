import Foundation

struct API {
    static let baseURL = "www.omdbapi.com"
    static let defaultParams = ["apikey": "a69414d2"]
}

protocol Endpoint {
    var scheme: String { get }
    var host: String { get }
    var path: String { get }
    var method: RequestMethod { get }
    var header: [String: String]? { get }
    var parameters: [String: String]? { get }
    var body: [String: String]? { get }
}

extension Endpoint {
    var scheme: String {
        return "https"
    }

    var host: String {
        return API.baseURL
    }

    var path: String {
        return ""
    }

    var header: [String: String]? {
        return nil
    }

    var parameters: [String: String]? {
        return nil
    }

    var body: [String: String]? {
        return nil
    }
}
