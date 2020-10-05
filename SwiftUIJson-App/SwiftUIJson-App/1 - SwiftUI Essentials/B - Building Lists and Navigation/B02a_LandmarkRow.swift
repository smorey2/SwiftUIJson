import SwiftUI
import SwiftUIJson

struct B02a_LandmarkRow: View {
    var landmark: Landmark

    var body: some View {
        Text("Hello World")
    }
}

struct B02a_LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            B02a_LandmarkRow(landmark: landmarkData[0])
        }
    }
}
