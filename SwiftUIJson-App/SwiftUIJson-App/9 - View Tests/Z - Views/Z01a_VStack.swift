import SwiftUI
import SwiftUIJson

struct Z01a_VStack: View {
    var body: some View {
        VStack {
            Text("VStack")
            VStack {
                Text("Joshua Tree National Park")
                Text("California")
            }
        }
    }
}

struct Z01a_VStack_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            Z01a_VStack()
        }
    }
}
