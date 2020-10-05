import SwiftUI
import SwiftUIJson

struct A01b_ContentView: View {
    var body: some View {
        Text("Hello SwiftUI!")
    }
}

struct A01b_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            A01b_ContentView()
        }
    }
}
