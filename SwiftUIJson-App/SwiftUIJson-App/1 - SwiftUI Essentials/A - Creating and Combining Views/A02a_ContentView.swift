import SwiftUI
import SwiftUIJson

struct A02a_ContentView: View {
    var body: some View {
        Text("Turtle Rock")
            .font(.title)
            .foregroundColor(.green)
    }
}

struct A02a_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            A02a_ContentView()
        }
    }
}
