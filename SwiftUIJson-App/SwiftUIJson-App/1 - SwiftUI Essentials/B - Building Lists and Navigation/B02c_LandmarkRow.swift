import SwiftUI
import SwiftUIJson

struct B02c_LandmarkRow: View {
    var landmark: Landmark

    var body: some View {
        HStack {
            Text(landmark.name)
        }
    }
}

struct B02c_LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            B02c_LandmarkRow(landmark: landmarkData[0])
        }
    }
}
