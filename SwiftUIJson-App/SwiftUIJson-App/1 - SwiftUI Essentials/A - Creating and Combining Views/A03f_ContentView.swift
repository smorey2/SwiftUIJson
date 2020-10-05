import SwiftUI
import SwiftUIJson

struct A03f_ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Turtle Rock")
                .font(.title)
            HStack {
                Text("Joshua Tree National Park")
                    .font(.subheadline)
                Spacer()
                Text("California")
                    .font(.subheadline)
            }
        }
        .padding()
    }
}

struct A03f_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            A03f_ContentView()
        }
    }
}
