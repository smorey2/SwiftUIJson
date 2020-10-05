import SwiftUI
import SwiftUIJson

struct B02b_LandmarkRow: View {
    var landmark: Landmark

    var body: some View {
        HStack {
            Text("Hello World")
        }
    }
}

struct B02b_LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            B02b_LandmarkRow(landmark: landmarkData[0])
        }
    }
}
