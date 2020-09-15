import SwiftUI

extension Color {
	init(r: Double, g: Double, b: Double) {
		self.init(red: r/255.0, green: g/255.0, blue: b/255.0)
	}
	
	static let crawlColor = Color(r: 229, g: 177, b: 58)
}
