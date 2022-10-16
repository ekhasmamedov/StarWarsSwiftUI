import Foundation

struct Starship: Codable, Identifiable {
    let id = UUID()
    let name: String
}
