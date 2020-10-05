import SwiftUI
import SwiftUIJson

struct A04c_CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.gray, lineWidth: 4))
    }
}

struct A04c_CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            A04c_CircleImage()
        }
    }
}
