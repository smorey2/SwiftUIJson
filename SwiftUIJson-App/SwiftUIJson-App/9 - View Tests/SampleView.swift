import SwiftUI
import SwiftUIJson

struct SampleView: View {
    var body: some View {
        VStack {
            VStack {
                Text("largeTitle")
                Text("title")
                Spacer()
            }
            VStack {
                Text("caption2")
                Text("system:design")
            }
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
