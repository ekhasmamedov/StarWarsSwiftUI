import Foundation

struct Character: Codable, Identifiable {
    let id = UUID()
    let name: String
}
