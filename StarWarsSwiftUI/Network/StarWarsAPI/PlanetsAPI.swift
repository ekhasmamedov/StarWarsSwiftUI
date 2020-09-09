import Foundation

enum PlanetsAPI {
    case Planets
}

extension PlanetsAPI: APIRequest {
    var path: String {
        return "planets"
    }
}
