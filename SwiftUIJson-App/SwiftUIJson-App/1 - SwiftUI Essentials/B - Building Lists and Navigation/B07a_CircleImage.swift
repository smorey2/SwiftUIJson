import SwiftUI

struct B07a_CircleImage: View {
    var image: Image

    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct B07a_CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        B07a_CircleImage(image: Image("turtlerock"))
    }
}
