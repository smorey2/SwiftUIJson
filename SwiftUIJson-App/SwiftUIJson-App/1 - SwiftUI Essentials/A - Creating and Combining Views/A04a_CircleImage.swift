import SwiftUI
import SwiftUIJson

struct A04a_CircleImage: View {
    var body: some View {
        Image("turtlerock")
    }
}

struct A04a_CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            A04a_CircleImage()
        }
    }
}
