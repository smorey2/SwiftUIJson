import SwiftUI

struct A06a_ContentView: View {
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

struct A06a_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        A06a_ContentView()
    }
}
