import SwiftUI
import SwiftUIJson

struct Z01a_JsonCodable: View {
    var body: some View {
        VStack {
            Text("italic")
            Text("italic".var(self))
        }
    }
}

struct Z01a_JsonCodable_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            Z01a_JsonCodable()
        }
    }
}
