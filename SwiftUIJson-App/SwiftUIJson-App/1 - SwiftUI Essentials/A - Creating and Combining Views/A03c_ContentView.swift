import SwiftUI

struct A03c_ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Turtle Rock")
                .font(.title)
            Text("Joshua Tree National Park")
                .font(.subheadline)
        }
    }
}

struct A03c_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        A03c_ContentView()
    }
}