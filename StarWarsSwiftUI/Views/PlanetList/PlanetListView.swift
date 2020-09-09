import SwiftUI

struct PlanetListView: View {
    let planets = (1...100).map { number in Planet(id: number, name: "Planet \(number)") }
    
    var body: some View {
        NavigationView {
            List(planets) { person in
                NavigationLink(destination: PlanetDetailView(planet: person)) {
                    PlanetCell(planet: person)
                }
            }.navigationBarTitle("Select a planet")
        }
    }
}

struct PlanetListView_Previews: PreviewProvider {
    static var previews: some View {
        PlanetListView()
    }
}
