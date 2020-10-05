import SwiftUI
import SwiftUIJson

struct A01a_ContentView: View {
    var body: some View {
        Text("Hello World")
    }
}

struct A01a_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            A01a_ContentView()
        }
    }
}
