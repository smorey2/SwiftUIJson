import SwiftUI
import SwiftUIJson

struct Z01a_Tuple: View {
    var body: some View {
        VStack {
            Text("Turtle Rock")
            HStack {
                Text("Joshua Tree National Park")
                Text("California")
            }
        }
    }
}

struct Z01a_Tuple_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            Z01a_Tuple()
        }
    }
}
