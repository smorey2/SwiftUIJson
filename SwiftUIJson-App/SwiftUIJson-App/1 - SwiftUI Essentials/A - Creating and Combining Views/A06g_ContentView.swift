import SwiftUI
import SwiftUIJson

struct A06g_ContentView: View {
    var body: some View {
        VStack {
            A05_MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)

            A04e_CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)

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

            Spacer()
        }
    }
}

struct A06g_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            A06g_ContentView()
        }
    }
}
