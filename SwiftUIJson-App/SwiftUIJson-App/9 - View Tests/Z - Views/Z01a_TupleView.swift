import SwiftUI
import SwiftUIJson

struct Z01a_TupleView: View {
    var body: some View {
        VStack {
            Text("TupleView")
            HStack {
                Text("Joshua Tree National Park")
                Text("California")
            }
        }
    }
}

struct Z01a_TupleView_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            Z01a_TupleView()
        }
    }
}
