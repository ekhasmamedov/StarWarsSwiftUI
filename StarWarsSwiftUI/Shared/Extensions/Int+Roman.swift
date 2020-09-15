import Foundation

extension Int {
	static let romanMap: [Int: String] = [
		1: "I",
		2: "II",
		3: "III",
		4: "IV",
		5: "V",
		6: "VI"
	]
	
	func toRoman() -> String {
		return Int.romanMap[self] ?? ""
	}
}
