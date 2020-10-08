import SwiftUI
import SwiftUIJson

struct Z01a_HStack: View {
    var body: some View {
        VStack {
            Text("HStack")
            HStack {
                Text("Joshua Tree National Park")
                Text("California")
            }
        }
    }
}

struct Z01a_HStack_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            Z01a_HStack()
        }
    }
}
