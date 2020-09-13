import SwiftUI

struct A04e_CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct A04e_CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        A04e_CircleImage()
    }
}
