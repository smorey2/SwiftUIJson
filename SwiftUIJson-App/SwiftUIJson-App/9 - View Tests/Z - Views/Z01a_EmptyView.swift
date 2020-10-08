import SwiftUI
import SwiftUIJson

struct Z01a_EmptyView: View {
    var body: some View {
        VStack {
            Text("EmptyView")
            EmptyView()
        }
    }
}

struct Z01a_EmptyView_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            Z01a_EmptyView()
        }
    }
}
