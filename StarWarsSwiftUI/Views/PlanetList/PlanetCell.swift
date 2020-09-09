import SwiftUI

struct PlanetCell: View {
    var planet: Planet
    
    var body: some View {
        Text("\(planet.name)")
    }
}

#if DEBUG
struct PlanetCell_Previews: PreviewProvider {
    static var previews: some View {
        PlanetCell(planet: Planet(id: 1, name: "Mars"))
    }
}
#endif
