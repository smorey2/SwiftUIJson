import SwiftUI
import SwiftUIJson

struct A03a_ContentView: View {
    var body: some View {
        VStack {
            Text("Turtle Rock")
                .font(.title)
            Text("Joshua Tree National Park")
        }
    }
}

struct A03a_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            A03a_ContentView()
        }
    }
}
