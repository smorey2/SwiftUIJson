import SwiftUI

struct A06d_ContentView: View {
    var body: some View {
        VStack {
            A05_MapView()
                .frame(height: 300)

            A04e_CircleImage()

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

struct A06d_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            A06d_ContentView()
        }
    }
}
