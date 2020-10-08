import SwiftUI
import SwiftUIJson

struct Z01a_Animation: View {
    var body: some View {
        VStack {
            Text("italic").animation(.easeIn, value: 3)
            Text("italic").animation(.easeInOut)
        }
    }
}

struct Z01a_Animation_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            Z01a_Animation()
        }
    }
}
