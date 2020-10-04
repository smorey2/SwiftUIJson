import SwiftUI

struct SampleView: View {
    var body: some View {
        VStack {
            Text("largeTitle")
            Text("title")
        }
        VStack {
            Text("caption2")
            Text("system:design")
        }
    }
}

struct SampleView_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            SampleView()
        }
    }
}
