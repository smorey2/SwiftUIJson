import SwiftUI
import SwiftUIJson

struct A03d_ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Turtle Rock")
                .font(.title)
            HStack {
                Text("Joshua Tree National Park")
                    .font(.subheadline)
                Text("California")
                    .font(.subheadline)
            }
        }
    }
}

struct A03d_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            A03d_ContentView()
        }
    }
}
