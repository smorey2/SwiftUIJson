import SwiftUI
import SwiftUIJson

struct A06c_ContentView: View {
    var body: some View {
        VStack {
            A05_MapView()
                .frame(height: 300)

            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack(alignment: .top) {
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
}

struct A06c_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            A06c_ContentView()
        }
    }
}
