import SwiftUI

struct SampleView: View {
    var body: some View {
        Text("Hello World")
            .font(.title)
            .foregroundColor(.green)
    }
}

struct SampleView_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            SampleView()
        }
    }
}
