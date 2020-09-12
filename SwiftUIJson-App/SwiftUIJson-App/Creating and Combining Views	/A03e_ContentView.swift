import SwiftUI

struct A03e_ContentView: View {
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
    }
}

struct A03e_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        A03e_ContentView()
    }
}
