import SwiftUI
import SwiftUIJson

struct Z01a_Divider: View {
    var body: some View {
        VStack {
            Text("Divider")
            Divider()
        }
    }
}

struct Z01a_Divider_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            Z01a_Divider()
        }
    }
}
