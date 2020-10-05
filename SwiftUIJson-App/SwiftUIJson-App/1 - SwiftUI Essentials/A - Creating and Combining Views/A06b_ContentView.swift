import SwiftUI
import SwiftUIJson

struct A06b_ContentView: View {
    var body: some View {
        VStack {
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

struct A06b_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            A06b_ContentView()
        }
    }
}
