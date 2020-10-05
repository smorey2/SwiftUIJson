import SwiftUI
import SwiftUIJson

struct ContentView: View {
    var body: some View {
        JsonPreview {
            SampleView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
