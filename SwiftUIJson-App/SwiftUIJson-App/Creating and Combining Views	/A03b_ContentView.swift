import SwiftUI

struct A03b_ContentView: View {
    var body: some View {
        VStack {
            Text("Turtle Rock")
                .font(.title)
            Text("Joshua Tree National Park")
                .font(.subheadline)
        }
    }
}

struct A03b_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        A03b_ContentView()
    }
}
