import SwiftUI

struct A04b_CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
    }
}

struct A04b_CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        A04b_CircleImage()
    }
}
