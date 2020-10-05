import SwiftUI
import SwiftUIJson

struct A02b_ContentView: View {
    var body: some View {
        Text("Turtle Rock")
            .font(.title)

    }
}

struct A02b_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            A02b_ContentView()
        }
    }
}
